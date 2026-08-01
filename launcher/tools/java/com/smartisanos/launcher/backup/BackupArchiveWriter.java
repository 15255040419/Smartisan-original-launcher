package com.smartisanos.launcher.backup;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public final class BackupArchiveWriter {
    private BackupArchiveWriter() {}

    public static File write(File staging, BackupManifest manifest, JSONObject layout,
            JSONObject settings, JSONObject theme, JSONObject icons,
            DesktopBackupController.CancellationToken cancellation) throws Exception {
        BackupFileUtils.ensureDirectory(staging);
        BackupFileUtils.writeJson(new File(staging, "manifest.json"), manifest.toJson());
        BackupFileUtils.writeJson(new File(staging, "layout.json"), layout);
        BackupFileUtils.writeJson(new File(staging, "settings.json"), settings);
        BackupFileUtils.writeJson(new File(staging, "theme.json"), theme);
        BackupFileUtils.writeJson(new File(staging, "icons/redirects.json"), icons);
        JSONObject pending = new JSONObject();
        pending.put("version", 1);
        pending.put("items", new JSONArray());
        BackupFileUtils.writeJson(new File(staging, "pending_items.json"), pending);

        JSONObject checksums = new JSONObject();
        List<File> payload = files(staging, false);
        for (File file : payload) checksums.put(relative(staging, file), BackupFileUtils.sha256(file));
        BackupFileUtils.writeJson(new File(staging, "checksums.json"), checksums);
        JSONObject complete = new JSONObject();
        complete.put("complete", true);
        complete.put("createdAt", manifest.createdAt);
        complete.put("manifestSha256", BackupFileUtils.sha256(new File(staging, "manifest.json")));
        BackupFileUtils.writeJson(new File(staging, "complete.json"), complete);

        File archive = new File(staging, "archive.slauncherbackup");
        ZipOutputStream output = new ZipOutputStream(new FileOutputStream(archive));
        try {
            List<File> ordered = files(staging, true);
            for (File file : ordered) {
                cancellation.throwIfCancelled();
                String name = relative(staging, file);
                if ("archive.slauncherbackup".equals(name) || "complete.json".equals(name)) continue;
                add(output, file, name, cancellation);
            }
            add(output, new File(staging, "complete.json"), "complete.json", cancellation);
            output.finish();
        } finally { output.close(); }
        File verifyRoot = new File(staging, "verified");
        BackupValidator.validateAndExtract(archive, verifyRoot);
        BackupFileUtils.deleteRecursively(verifyRoot);
        return archive;
    }

    private static void add(ZipOutputStream output, File file, String name,
            DesktopBackupController.CancellationToken cancellation) throws Exception {
        output.putNextEntry(new ZipEntry(name));
        BufferedInputStream input = new BufferedInputStream(new FileInputStream(file));
        try { BackupFileUtils.copy(input, output, 20L * 1024L * 1024L, cancellation); }
        finally { input.close(); }
        output.closeEntry();
    }

    private static List<File> files(File root, boolean includeControl) {
        ArrayList<File> out = new ArrayList<File>();
        collect(root, out);
        Collections.sort(out, new java.util.Comparator<File>() {
            public int compare(File a, File b) { return a.getPath().compareTo(b.getPath()); }
        });
        return out;
    }

    private static void collect(File directory, List<File> out) {
        File[] children = directory.listFiles();
        if (children == null) return;
        for (File child : children) {
            if (child.isDirectory()) {
                if (!"verified".equals(child.getName())) collect(child, out);
            } else out.add(child);
        }
    }

    private static String relative(File root, File child) {
        return root.toURI().relativize(child.toURI()).getPath();
    }
}
