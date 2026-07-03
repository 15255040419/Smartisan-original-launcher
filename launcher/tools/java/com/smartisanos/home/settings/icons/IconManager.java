package com.smartisanos.home.settings.icons;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;

import com.smartisanos.launcher.data.redirectIcon.RedirectIconDB;
import com.smartisanos.launcher.data.redirectIcon.RedirectIconInfo;
import com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class IconManager {
    private final Context mContext;
    private final Map<String, ResolveInfo> resolveInfoMap = new HashMap<String, ResolveInfo>();

    public IconManager(Context context) {
        mContext = context;
        loadResolveInfos();
    }

    public void appendResolveInfo(ResolveInfo info) {
        if (info == null || info.activityInfo == null) {
            return;
        }
        resolveInfoMap.put(key(info.activityInfo.packageName, info.activityInfo.name), info);
    }

    public List<RedirectIconInfo> getIconRedirectedApplications() {
        Map<String, RedirectIconInfo> stored = RedirectIconDB.getIconTableData(mContext, true);
        ArrayList<RedirectIconInfo> all = new ArrayList<RedirectIconInfo>();
        for (String key : resolveInfoMap.keySet()) {
            RedirectIconInfo info = stored.get(key);
            if (info == null) {
                String[] parts = key.split(";", 2);
                info = new RedirectIconInfo();
                info.packageName = parts[0];
                info.componentName = parts.length > 1 ? parts[1] : "";
                info.useImprovedAppIcon = true;
                info.drawableName = RedirectIconDB.MODE_AUTO;
            }
            all.add(info);
        }
        java.util.Collections.sort(all);
        return all;
    }

    public String getLableForPackage(String packageName, String componentName) {
        ResolveInfo info = resolveInfoMap.get(key(packageName, componentName));
        if (info == null) {
            return packageName;
        }
        CharSequence label = info.loadLabel(mContext.getPackageManager());
        return label == null ? packageName : label.toString();
    }

    public Drawable getOfficialIcon(RedirectIconInfo info) {
        ResolveInfo resolveInfo = info == null ? null : resolveInfoMap.get(info.getPrimaryId());
        return resolveInfo == null ? null : resolveInfo.loadIcon(mContext.getPackageManager());
    }

    public Drawable getRedirectedIcon(String packageName, String componentName) {
        byte[] data = RedirectIconDB.getRedirectIcon(mContext, packageName, componentName);
        if (data == null) {
            return null;
        }
        try {
            Bitmap bitmap = BitmapFactory.decodeByteArray(data, 0, data.length);
            return bitmap == null ? null : new android.graphics.drawable.BitmapDrawable(mContext.getResources(), bitmap);
        } catch (Throwable ignored) {
            return null;
        }
    }

    public ResolveInfo getResolveInfo(String pkg, String cmp) {
        return resolveInfoMap.get(key(pkg, cmp));
    }

    public void notifyIconUpdate(Map<String, RedirectIconInfo> infos) {
        if (infos == null) {
            return;
        }
        for (RedirectIconInfo info : infos.values()) {
            if (info == null) {
                continue;
            }
            RedirectIconDB.updateIconStatus(mContext, info.packageName, info.componentName, info.useImprovedAppIcon);
        }
        mContext.sendBroadcast(new Intent("com.smartisanos.launcher.update_icon"));
    }

    private void loadResolveInfos() {
        Intent intent = new Intent(Intent.ACTION_MAIN);
        intent.addCategory(Intent.CATEGORY_LAUNCHER);
        try {
            PackageManager pm = mContext.getPackageManager();
            int flags = android.os.Build.VERSION.SDK_INT >= 23 ? 0x00020000 : 0;
            List<ResolveInfo> infos = MaintainedLauncherSettingsHost
                    .queryLauncherActivitiesWithProfiles(pm, intent, flags);
            for (int i = 0; i < infos.size(); i++) {
                appendResolveInfo(infos.get(i));
            }
        } catch (Throwable ignored) {
        }
    }

    private static String key(String pkg, String cmp) {
        return String.valueOf(pkg) + ";" + String.valueOf(cmp);
    }
}
