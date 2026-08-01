package com.smartisanos.launcher.backup;

import android.content.Context;
import android.content.SharedPreferences;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class PreferenceBackupCodec {
    private static final String[] FILES = {
            "launcher_settings", "com.smartisanos.launcher_prefs", "launcher_dynamic_weather"
    };
    private static final Set<String> KEYS = new HashSet<String>(Arrays.asList(
            "prefs_key_launcher_mode", "launcher_icon_size", "launcher_theme",
            "launcher_grid_theme", "launcher_page_animation",
            "launcher_dynamic_weather_calendar_enabled",
            "automatic_location", "manual_city", "manual_station_id",
            "launcher_hide_badge", "launcher_badge_swipe_clean", "launcher_hide_lable",
            "launcher_hide_navigation_bar", "launcher_unlock_animation_enabled",
            "swipe_down_system_panels_enabled", "swipe_up_search_enabled",
            "launcher_search_page_enabled", "launcher_global_icon_source_v2",
            "launcher_improved_icon_enabled", "prefs_key_selected_icon_pack",
            "launcher_icon_source", "launcher_icon_pack", "icon_pack_package",
            "use_improved_app_icon", "active_icon_enabled",
            "launcher_transparent_theme", "launcher_aero_theme", "launcher_page_mode"
    ));

    private PreferenceBackupCodec() {}

    public static JSONObject encode(Context context) throws Exception {
        JSONObject root = new JSONObject();
        root.put("version", 1);
        JSONObject files = new JSONObject();
        for (String file : FILES) {
            JSONObject values = new JSONObject();
            Map<String, ?> all = context.getSharedPreferences(file, Context.MODE_PRIVATE).getAll();
            for (String key : KEYS) {
                if (!all.containsKey(key)) continue;
                JSONObject typed = encodeValue(all.get(key));
                if (typed != null) values.put(key, typed);
            }
            files.put(file, values);
        }
        root.put("files", files);
        return root;
    }

    public static void restore(Context context, JSONObject root) throws Exception {
        JSONObject files = root.getJSONObject("files");
        for (String file : FILES) {
            JSONObject values = files.optJSONObject(file);
            if (values == null) continue;
            SharedPreferences.Editor editor = context.getSharedPreferences(file, Context.MODE_PRIVATE).edit();
            java.util.Iterator<String> names = values.keys();
            while (names.hasNext()) {
                String key = names.next();
                if (!KEYS.contains(key)) continue;
                apply(editor, key, values.getJSONObject(key));
            }
            if (!editor.commit()) throw new IllegalStateException("Preference commit failed: " + file);
        }
    }

    private static JSONObject encodeValue(Object value) throws Exception {
        JSONObject out = new JSONObject();
        if (value instanceof Boolean) { out.put("type", "boolean"); out.put("value", value); }
        else if (value instanceof Integer) { out.put("type", "int"); out.put("value", value); }
        else if (value instanceof Long) { out.put("type", "long"); out.put("value", value); }
        else if (value instanceof Float) { out.put("type", "float"); out.put("value", value); }
        else if (value instanceof String) { out.put("type", "string"); out.put("value", value); }
        else if (value instanceof Set) {
            out.put("type", "stringSet");
            JSONArray array = new JSONArray();
            for (Object item : (Set) value) if (item instanceof String) array.put(item);
            out.put("value", array);
        } else return null;
        return out;
    }

    private static void apply(SharedPreferences.Editor editor, String key, JSONObject typed) throws Exception {
        String type = typed.getString("type");
        if ("boolean".equals(type)) editor.putBoolean(key, typed.getBoolean("value"));
        else if ("int".equals(type)) editor.putInt(key, typed.getInt("value"));
        else if ("long".equals(type)) editor.putLong(key, typed.getLong("value"));
        else if ("float".equals(type)) editor.putFloat(key, (float) typed.getDouble("value"));
        else if ("string".equals(type)) editor.putString(key, typed.getString("value"));
        else if ("stringSet".equals(type)) {
            JSONArray array = typed.getJSONArray("value");
            HashSet<String> values = new HashSet<String>();
            for (int i = 0; i < array.length(); i++) values.add(array.getString(i));
            editor.putStringSet(key, values);
        } else throw new IllegalArgumentException("Unsupported preference type");
    }
}
