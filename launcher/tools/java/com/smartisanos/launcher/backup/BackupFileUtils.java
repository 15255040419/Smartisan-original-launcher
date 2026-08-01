package com.smartisanos.launcher.backup;

import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.security.MessageDigest;

final class BackupFileUtils {
    static final Charset UTF_8 = Charset.forName("UTF-8");
    static final int BUFFER_SIZE = 32 * 1024;

    private BackupFileUtils() {}

    static void ensureDirectory(File directory) throws IOException {
        if ((!directory.exists() && !directory.mkdirs()) || !directory.isDirectory()) {
            throw new IOException("Cannot create directory");
        }
    }

    static void writeJson(File file, JSONObject json) throws IOException {
        writeBytes(file, json.toString().getBytes(UTF_8));
    }

    static void writeBytes(File file, byte[] data) throws IOException {
        File parent = file.getParentFile();
        if (parent != null) ensureDirectory(parent);
        FileOutputStream output = new FileOutputStream(file);
        try {
            output.write(data);
            output.flush();
            try { output.getFD().sync(); } catch (Throwable ignored) {}
        } finally {
            output.close();
        }
    }

    static JSONObject readJson(File file, long maxBytes) throws Exception {
        return new JSONObject(new String(readBytes(file, maxBytes), UTF_8));
    }

    static byte[] readBytes(File file, long maxBytes) throws IOException {
        if (!file.isFile() || file.length() < 0 || file.length() > maxBytes) {
            throw new IOException("Invalid file size");
        }
        FileInputStream input = new FileInputStream(file);
        try {
            ByteArrayOutputStream output = new ByteArrayOutputStream((int) Math.min(file.length(), 65536));
            copy(input, output, maxBytes, null);
            return output.toByteArray();
        } finally {
            input.close();
        }
    }

    static long copy(InputStream input, OutputStream output, long maxBytes,
            DesktopBackupController.CancellationToken cancellation) throws IOException {
        byte[] buffer = new byte[BUFFER_SIZE];
        long total = 0;
        int count;
        while ((count = input.read(buffer)) != -1) {
            if (cancellation != null) cancellation.throwIfCancelled();
            total += count;
            if (total > maxBytes) throw new IOException("Size limit exceeded");
            output.write(buffer, 0, count);
        }
        return total;
    }

    static String sha256(File file) throws Exception {
        MessageDigest digest = MessageDigest.getInstance("SHA-256");
        FileInputStream input = new FileInputStream(file);
        try {
            byte[] buffer = new byte[BUFFER_SIZE];
            int count;
            while ((count = input.read(buffer)) != -1) digest.update(buffer, 0, count);
        } finally {
            input.close();
        }
        return hex(digest.digest());
    }

    static String hex(byte[] data) {
        StringBuilder result = new StringBuilder(data.length * 2);
        for (byte value : data) result.append(String.format(java.util.Locale.US, "%02x", value & 0xff));
        return result.toString();
    }

    static void deleteRecursively(File target) {
        if (target == null || !target.exists()) return;
        if (target.isDirectory()) {
            File[] children = target.listFiles();
            if (children != null) for (File child : children) deleteRecursively(child);
        }
        target.delete();
    }

    static void closeQuietly(Closeable closeable) {
        if (closeable == null) return;
        try { closeable.close(); } catch (Throwable ignored) {}
    }
}
