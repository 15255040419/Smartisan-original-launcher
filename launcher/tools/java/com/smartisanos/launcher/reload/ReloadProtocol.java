package com.smartisanos.launcher.reload;

/** Cross-process contract for the opaque Launcher cold-reload handoff. */
public final class ReloadProtocol {
    public static final String ACTION_FIRST_FRAME_READY =
            "com.smartisanos.launcher.reload.FIRST_FRAME_READY";
    public static final String EXTRA_RELOAD_TOKEN = "reload_token";
    public static final String EXTRA_MAIN_PROCESS_PID = "main_process_pid";
    public static final String EXTRA_RELOAD_REASON = "reload_reason";
    public static final String EXTRA_GRID_MODE = "grid_mode";
    public static final String EXTRA_THEME_MODE = "theme_mode";
    public static final String EXTRA_LAUNCHER_PID = "launcher_pid";
    public static final String EXTRA_ICON_SIZE_OLD = "icon_size_old";
    public static final String EXTRA_ICON_SIZE_NEW = "icon_size_new";

    private ReloadProtocol() {
    }
}
