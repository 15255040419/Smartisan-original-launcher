"""Tool to unify and rename non-standard Android application icons.

This script scans icons/drawable/ for non-standard files (e.g. containing activity
names, delimiters like #, or spaces), proposes appropriate package names, and
handles renaming and updating variants.json.
"""

import os
import re
import json
import sys
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
ICON_DIR = ROOT / "icons" / "drawable"
VARIANTS_FILE = ROOT / "icons" / "variants.json"
GENERATE_INDEX_SCRIPT = ROOT / "tools" / "generate_icon_index.py"

# Known identical applications with different package names that cannot be matched by prefix
MANUAL_MAPPINGS = {
    # Bilibili
    "com.bilibili.app.blue": "tv.danmaku.bili",
    "com.bilibili.app.in": "tv.danmaku.bili",
    "tv.danmaku.bilixl": "tv.danmaku.bili",
    "com.bilibili.bilibililive": "tv.danmaku.bili",
    # QQ
    "com.tencent.mobileqqi": "com.tencent.mobileqq",
    "com.tencent.qqlite": "com.tencent.mobileqq",
    "com.tencent.minihd.qq": "com.tencent.mobileqq",
    # Weibo
    "com.weico.international": "com.sina.weibo",
    "com.sina.weibolite": "com.sina.weibo",
    # Taobao
    "com.taobao.lite": "com.taobao.taobao",
    "com.alipay.mobile.quinox.LauncherApplication": "com.eg.android.AlipayGphone",
    "com.tencent.qqmusiclocalplayer.app.activity.AppStarterActivity": "com.tencent.qqmusiclocalplayer",
}

# Prefixes that are generic vendor namespaces and should NEVER be used to group apps
NAMESPACE_BLACKLIST = {
    "com.android", "com.google.android", "com.google.android.apps",
    "com.sec.android", "com.sec.android.app", "com.samsung.android", "com.samsung.android.app",
    "com.miui", "com.huawei", "com.coloros", "com.heytap", "com.oplus",
    "com.vivo", "com.bbk", "com.meizu", "com.smartisanos",
    "com.tencent", "com.netease", "com.sina", "com.baidu", "com.alibaba"
}

# Suffixes that typically indicate activity/class names
CLASS_SUFFIXES = [
    "Activity", "Application", "Service", "Provider", "Receiver",
    "SettingsManager", "Splash", "Main", "Aty", "ActivityName", "LOCK"
]

def peel_activity_suffix(name):
    segments = name.split(".")
    if len(segments) < 2:
        return None
    last_seg = segments[-1]
    # Only peel if the last segment contains one of the known class/activity suffixes
    if any(s in last_seg for s in CLASS_SUFFIXES):
        peeled = ".".join(segments[:-1])
        peeled_segments = peeled.split(".")
        # Package name should have at least 2 segments and start with typical prefix
        if len(peeled_segments) >= 2 and peeled_segments[0].lower() in [
            "com", "cn", "net", "org", "air", "io", "jp", "kr", "me", "ru", "uk"
        ]:
            return peeled
    return None

def get_target_package(name, known_packages):
    """
    Given a raw name (like com.android.stk_2 or cn.wps.moffice_eng.xiaomi.lite),
    try to determine its 'target' standard package name.
    """
    # Remove _X suffix if present
    m = re.search(r"_(\d+)$", name)
    cleaned = name[:m.start()] if m else name
    
    # 0. Check manual mappings
    if cleaned in MANUAL_MAPPINGS:
        return MANUAL_MAPPINGS[cleaned]
        
    has_delimiter = False
    # Split by # or package_name= first and continue parsing
    if "#" in name:
        name = name.split("#")[0]
        has_delimiter = True
    elif "package_name=" in name:
        name = name.split("package_name=")[-1]
        has_delimiter = True
        
    if name in MANUAL_MAPPINGS:
        return MANUAL_MAPPINGS[name]
        
    if "setting" in name.lower() and "com.android.settings" in known_packages and "com.android.settings" != name:
        return "com.android.settings"

    cleaned = name.replace(" ", "")
    
    # Heuristic 1: Find the longest prefix that matches a known package
    segments = cleaned.split(".")
    # Only consider prefixes of at least 3 segments to avoid grouping into generic "com.company"
    for i in range(len(segments)-1, 2, -1):
        prefix = ".".join(segments[:i])
        if prefix in NAMESPACE_BLACKLIST:
            continue
        if prefix in known_packages:
            return prefix
        for kp in known_packages:
            if kp.lower() == prefix.lower():
                return kp
                
    # Heuristic 2: Peel off trailing capitalized class segment
    peeled = peel_activity_suffix(cleaned)
    if peeled:
        sub_result = get_target_package(peeled, known_packages)
        if sub_result:
            return sub_result
        return peeled
        
    # Heuristic 3: If it was split by a delimiter, the split part is likely the package name itself
    if has_delimiter:
        if len(segments) >= 2 and segments[0].lower() in [
            "com", "cn", "net", "org", "air", "io", "jp", "kr", "me", "ru", "uk"
        ]:
            return cleaned
            
    return None

def load_variants():
    if not VARIANTS_FILE.exists():
        return {"schema": 1, "variants": {}}
    try:
        return json.loads(VARIANTS_FILE.read_text(encoding="utf-8"))
    except Exception as e:
        print(f"Error reading variants.json: {e}", file=sys.stderr)
        return {"schema": 1, "variants": {}}

def save_variants(payload):
    try:
        rendered = json.dumps(payload, ensure_ascii=False, indent=2) + "\n"
        VARIANTS_FILE.write_text(rendered, encoding="utf-8")
        print("Updated variants.json successfully.")
    except Exception as e:
        print(f"Error saving variants.json: {e}", file=sys.stderr)

def get_variant_sort_key(name):
    base = name[:-4] if name.lower().endswith(".png") else name
    m = re.search(r"_(\d+)$", base)
    if m:
        return (base[:m.start()], int(m.group(1)))
    return (base, 0)

def main():
    dry_run = True
    if len(sys.argv) > 1:
        if sys.argv[1] == "--apply":
            dry_run = False
        elif sys.argv[1] == "--dry-run":
            dry_run = True
        else:
            print("Usage: python tools/clean_icons.py [--dry-run | --apply]")
            sys.exit(1)
            
    print(f"Running icon cleaner in {'DRY-RUN (Preview)' if dry_run else 'APPLY (Execution)'} mode...\n")
    
    if not ICON_DIR.exists():
        print(f"Error: Directory {ICON_DIR} does not exist.", file=sys.stderr)
        sys.exit(1)
        
    files = os.listdir(ICON_DIR)
    
    # 1. Compile known package names
    payload = load_variants()
    variants = payload.setdefault("variants", {})
    known_packages = set(variants.keys())
    
    # Add other files that look like valid package names (strictly lowercase to avoid class pollution)
    strict_pattern = re.compile(r"^([a-z0-9_-]+(?:\.[a-z0-9_-]+)+)\.png$")
    for f in files:
        m_suffix = re.search(r"_(\d+)\.png$", f)
        base_f = f[:m_suffix.start()] + ".png" if m_suffix else f
        m = strict_pattern.match(base_f)
        if m:
            pkg = m.group(1)
            # Filter out UUIDs
            if len(pkg) > 20 and "-" in pkg and pkg.replace("-", "").isalnum():
                continue
            # Filter out UI assets
            if pkg in [
                "ic_launcher", "ic_folder_bg", "icon_folder", "icon_mask", "icon_pattern",
                "icon_shortcut", "icon_shortcut_arrow", "icon_shortcut_mask",
                "icon_stack_largefolder_background", "portal_ring_inner_holo",
                "portal_ring_inner_holo_dark", "icon_border", "tutorials", "Smartisan"
            ]:
                continue
            known_packages.add(pkg)
            
    # 2. Analyze files to rename
    used_filenames = set(files)
    rename_proposals = {}  # old_filename -> new_filename
    unresolved_files = []
    
    # Sort files to ensure deterministic index assignment
    for f in sorted(files):
        if f == ".gitkeep" or not f.endswith(".png"):
            continue
            
        name = f[:-4]
        # Ignore template/UI assets and UUIDs
        if name in [
            "ic_launcher", "ic_folder_bg", "icon_folder", "icon_mask", "icon_pattern",
            "icon_shortcut", "icon_shortcut_arrow", "icon_shortcut_mask",
            "icon_stack_largefolder_background", "portal_ring_inner_holo",
            "portal_ring_inner_holo_dark", "icon_border", "tutorials", "Smartisan", "SplashActivity"
        ]:
            continue
        if len(name) > 20 and "-" in name and name.replace("-", "").isalnum():
            continue
            
        # Split base package part and variant suffix
        m_suffix = re.search(r"_(\d+)$", name)
        if m_suffix:
            pkg_part = name[:m_suffix.start()]
            suffix = m_suffix.group(0)
        else:
            pkg_part = name
            suffix = ""
            
        # Check if pkg_part is already standard
        is_standard = False
        target_pkg = None
        if "#" not in pkg_part and "package_name=" not in pkg_part:
            target_pkg = get_target_package(name, known_packages)
            if target_pkg and target_pkg != name:
                # It's actually a known variant (e.g. cn.wps.moffice_eng.xiaomi.lite -> cn.wps.moffice_eng)
                is_standard = False
            elif pkg_part in known_packages:
                is_standard = True
            else:
                segments = pkg_part.split(".")
                if len(segments) >= 2:
                    last_seg = segments[-1]
                    if last_seg.islower():
                        is_standard = True
                    elif not last_seg[0].isupper():
                        is_standard = True
                
        if is_standard:
            # Already standard, just make sure it is in variants
            if pkg_part in known_packages:
                v_list = variants.setdefault(pkg_part, [])
                if f not in v_list:
                    v_list.append(f)
            continue
            
        # Parse non-standard name
        if not target_pkg:
            target_pkg = get_target_package(name, known_packages)
            
        if not target_pkg:
            # Check if it has segments >= 2 and we can keep it as is
            segments = name.split(".")
            if len(segments) >= 2 and not any(s in segments[-1] for s in CLASS_SUFFIXES):
                # Standardize it as itself
                target_pkg = name
            else:
                unresolved_files.append(f)
                continue
                
        # Resolve rename collision
        if pkg_part == target_pkg:
            new_filename = f
        else:
            new_filename = f"{target_pkg}.png"
            
        if new_filename != f:
            idx = 2
            while new_filename in used_filenames:
                new_filename = f"{target_pkg}_{idx}.png"
                idx += 1
                
            rename_proposals[f] = new_filename
            used_filenames.add(new_filename)
            
            # Register in variants mapping
            v_list = variants.setdefault(target_pkg, [])
            if new_filename not in v_list:
                v_list.append(new_filename)
                
            # Also register the original primary if it exists in folder
            primary_name = f"{target_pkg}.png"
            if primary_name in files and primary_name not in v_list:
                v_list.append(primary_name)
        else:
            # Target matches current name, no rename needed, just ensure in variants
            v_list = variants.setdefault(target_pkg, [])
            if f not in v_list:
                v_list.append(f)

    # Clean up and sort variants lists
    cleaned_variants = {}
    for pkg, v_list in variants.items():
        # Keep only existing or proposed files
        available = [name for name in v_list if name in used_filenames]
        if available:
            # Sort naturally: com.example.png first, then com.example_2.png
            cleaned_variants[pkg] = sorted(list(set(available)), key=get_variant_sort_key)
            
    payload["variants"] = cleaned_variants

    # 3. Print summary
    print(f"Analysis complete:")
    print(f"  Total files to rename: {len(rename_proposals)}")
    print(f"  Unresolved files: {len(unresolved_files)}")
    print()
    
    if rename_proposals:
        print("Proposed renames:")
        for old, new in sorted(rename_proposals.items())[:100]:
            print(f"  {old} -> {new}")
        if len(rename_proposals) > 100:
            print(f"  ... and {len(rename_proposals) - 100} more.")
        print()
        
    if unresolved_files:
        print("Unresolved files (will remain unchanged):")
        for f in sorted(unresolved_files):
            print(f"  {f}")
        print()
        
    if dry_run:
        print("Dry run completed. No files were renamed.")
        print("To apply changes, run: python tools/clean_icons.py --apply")
    else:
        # Perform actual renames
        print("Applying renames...")
        for old, new in rename_proposals.items():
            try:
                os.rename(ICON_DIR / old, ICON_DIR / new)
            except Exception as e:
                print(f"Error renaming {old} to {new}: {e}", file=sys.stderr)
                
        # Save variants.json
        save_variants(payload)
        
        # Regenerate index.json
        if GENERATE_INDEX_SCRIPT.exists():
            print("Regenerating icon index...")
            try:
                subprocess.run([sys.executable, str(GENERATE_INDEX_SCRIPT)], check=True)
                print("Icon index regenerated successfully.")
            except Exception as e:
                print(f"Error running generate_icon_index.py: {e}", file=sys.stderr)
        else:
            print(f"Warning: Index generation script {GENERATE_INDEX_SCRIPT} not found.", file=sys.stderr)
            
        print("\nAll operations completed successfully!")

if __name__ == "__main__":
    main()
