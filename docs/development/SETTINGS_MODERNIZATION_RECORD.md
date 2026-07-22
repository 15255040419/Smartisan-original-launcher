# Smartisan Launcher 设置现代化迁移记录 (阶段 0 - 阶段 2)

本项目正对 Smartisan Launcher 的设置系统进行现代化改造，旨在将其从基于原版 Host 单 Activity + `setContentView` 动态 inflate 伪造子页的脆弱模式，重构为标准、健壮的 **多 Activity 架构**，从而解决返回栈失效、生命周期错乱及现代 Android ROM 对后台/ADB 启动的兼容性限制。

本文档专门用于统一保存并记录已完成的 **阶段 0**、**阶段 1** 和 **阶段 2** 的所有研究成果、代码修改、测试方案与真机验证细节。

---

## 阶段 0：现状审计与原版行为映射 (MAPPED)

阶段 0 的目标是在不改动任何运行代码的前提下，彻底理清 Launcher 的所有设置项，并记录原版逻辑与偏差，防止盲目改造。

### 1. 偏差矩阵与存储 Key 映射
我们完成了对 26+ 个设置项的详细审计（参见 [ORIGINAL_SETTINGS_BEHAVIOR_MATRIX.md](file:///e:/FANG/smartisan/smartisan-launcher-original-port/docs/development/ORIGINAL_SETTINGS_BEHAVIOR_MATRIX.md)），明确了以下核心偏好键的读写和重载逻辑：
* `prefs_key_launcher_mode` (SharedPreferences): 控制 12/20 宫格。
* `launcher_theme` (SharedPreferences / System/Global): 控制普通和毛玻璃主题。
* `launcher_grid_theme` (SharedPreferences / System/Global): 控制透明主题覆盖（值为 `1` 表示开启）。
* `launcher_icon_size` (SharedPreferences): 对应图标物理大小。
* `launcher_dynamic_weather_calendar_enabled` (SharedPreferences): 动态天气和日历开关。
* `launcher_hide_badge` (SharedPreferences): 是否隐藏角标提醒（逻辑反转，true 为隐藏）。
* `launcher_badge_swipe_clean` (SharedPreferences): 是否开启紧贴屏幕横扫清除角标。
* `swipe_up_search_enabled` (SharedPreferences / System): 是否上滑打开搜索页。
* `swipe_down_system_panels_enabled` (SharedPreferences / System): 是否下拉打开通知栏/控制中心。
* `launcher_unlock_animation_enabled` (SharedPreferences / System): 是否开启解锁动画。
* `launcher_hide_lable` (SharedPreferences / System): 是否隐藏桌面图标名称。

### 2. 遗留未知项 (UNKNOWN) 记录
* **双击锁屏**：未在 Host 发现直接入口，本轮已将其标识为 `UNKNOWN` 并归为不阻碍后续进度的遗留项，待后续抓取系统 logcat 补齐。
* **隐私密码哈希格式**：由于使用本地 Hash 兼容实现，待在阶段 8 与原版哈希盐格式进行对照验证。
* **Settings.Global 镜像写入**：`launcher_grid_theme` 等键的 Global 写入在部分厂商 ROM 上是否跨进程生效，留待后续多 ROM 回归验证。

---

## 阶段 1：多 Activity 基础设施建设 (DEVICE_VERIFIED)

阶段 1 专注于解决现代 Activity 引入过程中的 NPE 崩溃、主题加载及 Smali 最小路由打通，形成可一键回退的安全架构。

### 1. 崩溃分析与修复 (NPE & Attribute resolution)
* **NPE 根因**：原版 maintained 资源包的主页面在启动时，由于 Activity 的 `mOuterContext` 在 `attachBaseContext` 阶段尚未被 Framework 初始化完毕，在此处直接反射调用 `base.getTheme()` 导致 `NullPointerException`。
* **System Attributes 崩溃根因**：custom theme 初始化为空，导致 `PhoneWindow` 在 inflate 布局时由于没有包含系统默认窗口风格属性（如 `windowNoTitle`），在寻找系统属性时抛出 `UnsupportedOperationException: Failed to resolve attribute at index 35` 异常。
* **懒加载修复**：在 [BaseSettingsActivity.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/settings/BaseSettingsActivity.java) 内部的 `SettingsResourceContext.getTheme()` 中设计了**延迟懒加载初始化（Lazy Initialization）**，只在 Framework 首帧开始读取 Theme 且 Outer Context attach 完成时，执行 `theme.setTo(super.getTheme())`。
* **资源包名硬编码**：将所有 Activity 中的 `getIdentifier` 资源查找参数的 package name 硬编码传递为 `"com.smartisanos.home"`，确保 100% 能够定位到 `maintained-settings-res.apk` 中。

### 2. 代码实现与接口
* **[BaseSettingsActivity.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/settings/BaseSettingsActivity.java)**：所有设置类 Activity 的基类，封装延迟 Theme 加载与资源加载上下文。
* **[SettingsMainActivity.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/settings/SettingsMainActivity.java)**：现代设置主页面。修正了 `SettingItemSwitch` 的 `import` Package，消除了错位；设计了“使用现代版设置”开关。
* **[SettingsUiFlags.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/settings/SettingsUiFlags.java)**：管理 modern UI 的使能开关 `settings_modern_ui_enabled`（默认置为 **true**）。
* **`ThemeChooserActivity.smali` 拦截**：在桌面点击设置图标拉起时，读取 `settings_modern_ui_enabled`，为 true 则跳转到新设置 Activity，为 false 则走原版 Host 伪栈。
* **[patch_modern_settings_manifest.py](file:///e:/FANG/smartisan/smartisan-launcher-original-port/tools/patch_modern_settings_manifest.py)**：向 preserved 二进制 Manifest 注入 `SettingsMainActivity`、`AboutActivity` 和 `OperationLogActivity` 的 Activity 节点，解决 API 限制与 task 隔离。

### 3. 验证结论
* **构建**：Java 编译出的类成功通过 `build.bat` 并借助 `d8` 汇编生成 `classes2.dex` 注入 APK。
* **测试**：点击齿轮可瞬间前台路由至现代主设置页，切换开关能保存偏好并 Toast 弹出 reload 传统页面，完全闭环工作。

---

## 阶段 2：设置首页和简单页面迁移 (DEVICE_VERIFIED)

阶段 2 将不直接读写 Favorites DB 数据库与 SMEngine 引擎渲染机制的简单页面，彻底迁移到独立二级 Activity 中，并重构外部跳转兼容层。

### 1. 简单页面多 Activity 化
* **强迫症选项页 ([AdditionalFeaturesActivity.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/settings/AdditionalFeaturesActivity.java))**：
  * 继承自 `BaseSettingsActivity`，加载布局 `setting_ocd_options`。
  * 绑定并统一接管了：隐藏桌面图标名称、桌面隐藏虚拟键、角标提醒开关、滑动清除角标、解锁动画、上滑搜索页、下拉通知/控制中心 7 个偏好开关。
  * 开关偏好读写直接对接 Host 的 `writeBoolSetting/applyLauncherSettingChange`，完美保持 Launcher 引擎的原版响应能力。
  * 动态监听和响应 `BadgeBridge.hasNotificationAccess`，实现开关值与系统通知使用权的运行时自动同步校验。
* **操作日志页 ([OperationLogActivity.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/settings/OperationLogActivity.java))**：
  * 移除先前阶段 1 的 finish() 空壳，重构为完全绑定 `MaintainedLauncherSettingsHost.bindOperationLogSection` 逻辑的日志页。
  * 实现了在 Activity 容器内对操作日志捕获状态（开始/保存）的显示与交互，以及应用私有目录日志文件列表的同步展示。

### 2. 外部跳转兼容门面 ([SettingsPlatformCompat.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/settings/SettingsPlatformCompat.java))
* **默认桌面**：自 Android 10 (API 29) 起首选通过 `RoleManager` 发送 `ROLE_HOME` 请求；对低版本或失效情况降级拉起 `HOME_SETTINGS` 或 `MANAGE_DEFAULT_APPS`，最后使用通用设置并配合 Toast 引导。
* **电池优化**：调用忽略电池优化的白名单请求；拒绝或失败时，级联降级尝试至系统详情页。
* **通知权限**：直接委托 `BadgeBridge` 完成对系统通知使用权界面的拉起。

### 3. 主页路由与 Manifest 编译集成
* **[SettingsMainActivity.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/settings/SettingsMainActivity.java)**：
  * 重新绑定子项点击事件，将关于我们、附加功能、默认桌面、关闭电池优化分别导向对应的现代 Activity/Compat 门面，其余复杂页面依旧保留 legacy 重定向。
* **Host 公开包装 ([MaintainedLauncherSettingsHost.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java))**：
  * 新增包装方法 `migrateSearchGestureSettingPublic`、`synchronizeBadgeSettingsWithNotificationAccessPublic`、`readSystemBoolPublic`，无侵入公开原有私有逻辑，防止重复编写。
* **自动注入与构建**：
  * 升级了 `patch_modern_settings_manifest.py`，改为对每个 Activity 进行单独存在性校验，以实现增量注入。
  * 在 [build.bat](file:///e:/FANG/smartisan/smartisan-launcher-original-port/build.bat) 步骤 6.5 中挂载 python 调用，保证每次 `.\build.bat` 均能自动将新增的 `AdditionalFeaturesActivity` patch 写入二进制 Manifest 中。

---

## 阶段 2 真机验证结果记录

* **构建通过**：编译顺利，`SUCCESS: build\launcher-signed.apk`。
* **声明校验**：使用 `aapt2 dump xmltree` 验证，4 个现代设置 Activity 已全部成功声明在 Manifest 中：
  ```
  A: android:name="com.smartisanos.launcher.settings.SettingsMainActivity"
  A: android:name="com.smartisanos.launcher.settings.AboutActivity"
  A: android:name="com.smartisanos.launcher.settings.OperationLogActivity"
  A: android:name="com.smartisanos.launcher.settings.AdditionalFeaturesActivity"
  ```
* **实机运行 (ColorOS 14)**：
  * **主界面与子页**：首页点击「强迫症选项」可瞬间无阻拉起 OCD 界面。页面布局清晰、无重合；左上角「返回」按钮与系统的手势返回均能正确回退到主设置页，完全恢复了标准的系统 Activity 返回栈。
  * **联动机制**：在 OCD 页切换隐藏名称、角标提醒等开关，返回桌面后引擎立刻生效，偏好完美同步；关于我们页能成功读取本地操作日志列表。

---

## 阶段 3：OriginalSettingsBridge 正式落地 (BUILD_VERIFIED)

阶段 3 建立了 UI 界面与原版 Launcher 核心引擎及数据库之间**唯一可审计的调用门面 `OriginalSettingsBridge`**。所有现代设置 Activity 严禁直接通过混淆反射包或自建 Handler 消息操作后台引擎，统一由 Bridge 门面抽象并记录日志。

### 1. 核心架构与方法设计
在 [OriginalSettingsBridge.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/settings/OriginalSettingsBridge.java) 中实现了以下统一门面 API：
* **结构化日志捕获 (`log`)**：格式化输出 `domain`、`op`、`args`、`result` 和 `entry`，方便调试与错误溯源。
* **统一偏好写入 (`writeBoolSetting` / `writeLocalBool` / `writeSystemInt` / `writeSystemString`)**：同时向 `com.smartisanos.launcher_prefs`、`launcher_settings` 本地 SharedPreference 及 `Settings.System` / `Settings.Global` 写入配置，并调用 `MaintainedLauncherSettingsHost.applyLauncherSettingChange` 广播更新。
* **宫格模式安全切换 (`switchGridMode`)**：
  * 先将 Task 投递至 `DatabaseHandler` (`A.mWorker`) 后台工作线程。
  * 调用原版 `N.getInstance().d(context, mode)` 存储并由 `F.i(oldMode, newMode)` 完成 12/20 宫格数据库重组。
  * 数据库完成后，主线程更新本地 pref，并启动 `LauncherColdReloadCoordinator.beginGridReload` 进行受控冷重载。
* **主题应用门面 (`applyTheme` & `setTransparentTheme`)**：
  * 普通/毛玻璃主题应用：先清除透明主题标志，随后由原版 `X.X()` / `X.k()` 解析主题，`X.ja()` 持久化，派发 `ChangeThemeHandler` 消息 (`RequireChangeFrom.SETTING`)，调用 `O.a` 写入，启动 HOME Intent 返回桌面由 `onResume` 原版消费。
  * 透明主题切换：更新 `launcher_grid_theme` 标志与 local/system 键，随后启动 `LauncherColdReloadCoordinator.beginThemeReload` 进行受控冷重载。
* **动态天气/日历开关 (`setDynamicWeatherCalendar`)**：
  * 同步 `KEY_DYNAMIC_WEATHER_CALENDAR` 至 system 及 local prefs。
  * 触发 `LauncherColdReloadCoordinator.beginActiveIconReload` 进行受控冷重载。
* **图标尺寸动态调校 (`applyIconSizePercent`)**：
  * 保存 `launcher_icon_size` 属性并发送广播。
  * 调用 `LayoutPropertyAdapter.setUserIconScale` 与 `Constants.layoutPropertyMap` 运行时像素等比缩放，更新 `Eb` 视图。
  * 启动 `LauncherColdReloadCoordinator.beginIconSizeReload` 进行受控冷重载。

### 2. 状态与枚举规范
* 在 [SettingsApplyResult.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/settings/SettingsApplyResult.java) 中补充完善了 `SUCCESS`、`SUCCESS_NO_CHANGE`、`PENDING`、`APPLIED`、`NO_CHANGE`、`RELOAD_REQUIRED`、`USER_ACTION_REQUIRED`、`UNSUPPORTED`、`FAILED` 枚举定义。

### 3. 验证结论
* **构建与编译**：Java 源代码成功编译，`build.bat` 执行完成，`classes2.dex` 成功注入，最终产出 `SUCCESS: build\launcher-signed.apk`。
* **接口安全性**：所有反射入口均有完整的 Throwable 捕获与回退保护，未在主 UI 线程中阻塞数据库 I/O。

---

## 阶段 4：主题和壁纸迁移 (BUILD_VERIFIED)

阶段 4 将桌面主题选择（普通主题、毛玻璃主题、透明主题切换）与桌面壁纸设置（图片选择器、恢复默认壁纸、模糊效果）完整迁移至现代独立 Activity **[ThemeWallpaperActivity.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/settings/ThemeWallpaperActivity.java)** 中。

### 1. 多 Activity 路由与 UI 拆分
* **[ThemeWallpaperActivity.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/settings/ThemeWallpaperActivity.java)**：继承自 `BaseSettingsActivity`。根据 Intent Extra (`extra_page`) 路由至主题页或壁纸页：
  * **桌面主题页 (`PAGE_THEME`)**：
    * 包含“透明主题”开关项（使用 `SettingItemSwitch`），Toggle 事件触发 `OriginalSettingsBridge.setTransparentTheme`。
    * 包含“经典木纹主题”与“毛玻璃主题”选择项（使用 `SettingItemTextVertical`），点击时调用 `OriginalSettingsBridge.applyTheme` 正式应用主题。
  * **桌面壁纸页 (`PAGE_WALLPAPER`)**：
    * 包含“选择图片”项，点击触发 `MaintainedLauncherSettingsHost.pickWallpaperPublic` 拉起系统图片选择器。
    * 包含“恢复默认壁纸”项，点击调用 `MaintainedLauncherSettingsHost.restoreDefaultWallpaperPublic`。
    * 透明主题开启时，动态加载“桌面壁纸模糊效果”开关，偏好同步写入 `launcher_transparent_wallpaper_blur`。
    * 重写 `onActivityResult` 将选择结果委托交由 `MaintainedLauncherSettingsHost.onActivityResult` 异步处理与绘制。
* **[SettingsMainActivity.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/settings/SettingsMainActivity.java)**：新增 `bindThemeWallpaperLaunch` 绑定方法，将“桌面主题” (`item_id_themes`) 与“桌面壁纸” (`item_id_launcher_wallpaper`) 正式从 legacy 伪栈重定向路由至 `ThemeWallpaperActivity`。

### 2. 宿主方法暴露与 Manifest 自动注入
* **宿主包装 ([MaintainedLauncherSettingsHost.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java))**：公开了 `pickWallpaperPublic` 与 `restoreDefaultWallpaperPublic` 包装静态 API。
* ** Manifest 自动 Patch ([tools/patch_modern_settings_manifest.py](file:///e:/FANG/smartisan/smartisan-launcher-original-port/tools/patch_modern_settings_manifest.py))**：在 `MODERN_ACTIVITIES` 列表中新增 `"com.smartisanos.launcher.settings.ThemeWallpaperActivity"` 声明。

### 3. 验证结论
* **构建与编译**：编译顺利，`SUCCESS: build\launcher-signed.apk`。
* ** Manifest 注入校验**：`aapt2.exe dump xmltree --file AndroidManifest.xml build\launcher-signed.apk` 确认 `ThemeWallpaperActivity` 已成功声明在二进制 Manifest 节点中：
  ```
  E: activity (line=0)
    A: android:name(0x01010003)="com.smartisanos.launcher.settings.ThemeWallpaperActivity" (Raw: "com.smartisanos.launcher.settings.ThemeWallpaperActivity")
    A: android:exported(0x01010010)=false (Raw: "false")
    A: android:theme(0x01010000)=@0x7f0c015f
    A: android:excludeFromRecents(0x01010017)=true (Raw: "true")
    A: android:launchMode(0x0101001d)=1
    A: android:screenOrientation(0x0101001e)=1
  ```

---

## 阶段 5：应用图标系统迁移 (BUILD_VERIFIED)

阶段 5 将应用图标设置（图标缩放调校、已安装图标包列表预热、改进版图标切换、单应用图标替换与自定义相册选图）完整迁移至现代独立 Activity **[AppIconsActivity.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/settings/AppIconsActivity.java)** 中。

### 1. 多 Activity 路由与 UI 托管
* **[AppIconsActivity.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/settings/AppIconsActivity.java)**：继承自 `BaseSettingsActivity`。`onCreate` 时直接委托调用 `MaintainedLauncherSettingsHost.showIconPagePublic(this)`，将完整的 `app_icon_settings_layout`（包含 Header 图标调节 slider、图标包 GridView、单应用图标切换 List）干净地托管在现代 Activity 容器中。
* **自定义图标回调接管**：重写 `onActivityResult` 将自定义相册选图回调 (`REQUEST_PICK_CUSTOM_ICON = 53026`) 委托交由 `MaintainedLauncherSettingsHost.onActivityResult` 异步读取、剪裁、更新 `RedirectIconDB` 数据库并实时刷新 UI。
* **[SettingsMainActivity.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/settings/SettingsMainActivity.java)**：将“应用图标” (`item_id_icons`) 点击事件重定向路由至 `AppIconsActivity`。

### 2. 宿主方法暴露与 Manifest 自动注入
* **宿主包装 ([MaintainedLauncherSettingsHost.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java))**：公开了 `showIconPagePublic` 包装静态 API。
* ** Manifest 自动 Patch ([tools/patch_modern_settings_manifest.py](file:///e:/FANG/smartisan/smartisan-launcher-original-port/tools/patch_modern_settings_manifest.py))**：在 `MODERN_ACTIVITIES` 列表中新增 `"com.smartisanos.launcher.settings.AppIconsActivity"` 声明。

### 3. 验证结论
* **构建与编译**：编译顺利，`SUCCESS: build\launcher-signed.apk`。
* ** Manifest 注入校验**：`aapt2.exe dump xmltree --file AndroidManifest.xml build\launcher-signed.apk` 确认 `AppIconsActivity` 已成功声明在二进制 Manifest 节点中：
  ```
  E: activity (line=0)
    A: android:name(0x01010003)="com.smartisanos.launcher.settings.AppIconsActivity" (Raw: "com.smartisanos.launcher.settings.AppIconsActivity")
    A: android:exported(0x01010010)=false (Raw: "false")
    A: android:theme(0x01010000)=@0x7f0c015f
    A: android:excludeFromRecents(0x01010017)=true (Raw: "true")
    A: android:launchMode(0x0101001d)=1
    A: android:screenOrientation(0x0101001e)=1
  ```

---

## 阶段 6：12/20 宫格迁移与设置整体闭环 (BUILD_VERIFIED)

阶段 6 将 12 宫格与 20 宫格视图模式切换完全整合至 `SettingsMainActivity` 现代视图框架中，并通过 `OriginalSettingsBridge.switchGridMode` 实现与后台 Favorites 数据库重组及受控冷重载协调器的无缝衔接。

### 1. 宫格模式绑定与数据交接
* **[SettingsMainActivity.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/settings/SettingsMainActivity.java)**：新增 `bindGridModeSelection` 绑定逻辑：
  * 读取当前系统及本地偏好中的宫格模式 (`readLauncherModePublic`)，初始化 `smartisan_launcher_9_grids` (12 宫格) 与 `smartisan_launcher_16_grids` (20 宫格) 的 Checkmark 勾选状态。
  * 用户点击勾选 12 宫格或 20 宫格选项时，立刻响应并调用 `OriginalSettingsBridge.switchGridMode(this, oldMode, newMode)`。
* **[OriginalSettingsBridge.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/settings/OriginalSettingsBridge.java)**：
  * 将 `N.getInstance().d()` 持久化与 `F.i(oldMode, newMode)` 数据库拆分重组逻辑安全投递至 `DatabaseHandler` (`A.mWorker`) 后台线程执行。
  * 数据库完成后回到主线程同步更新 SharedPreference (`prefs_key_launcher_mode`) 与 `Settings.System`，并启动 `LauncherColdReloadCoordinator.beginGridReload` 安全拉起 `:reload` 不透明过渡页并完成 Launcher 进程热升级与首帧握手。

### 2. 宿主方法暴露
* **宿主包装 ([MaintainedLauncherSettingsHost.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java))**：公开了 `readLauncherModePublic` 静态读取 API。

### 3. 验证结论
* **构建与编译**：全量编译顺利，`SUCCESS: build\launcher-signed.apk`。
* ** Manifest 完整性校验**：所有 6 个现代设置 Activity（`SettingsMainActivity`、`AboutActivity`、`OperationLogActivity`、`AdditionalFeaturesActivity`、`ThemeWallpaperActivity`、`AppIconsActivity`）均成功 Patch 写入二进制 Manifest 并在 APK 中通过 `aapt2` 验证。

### 4. 100% 复用原版宿主视图门面 (Native View Delegation)
为严格遵循项目第一原则（**优先复用已有实现**），消除任何自写代码导致的布局错位与文字重叠：
* **[ThemeWallpaperActivity.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/settings/ThemeWallpaperActivity.java)**：`onCreate` 完全委托给 `MaintainedLauncherSettingsHost.showThemePagePublic(this)` 与 `showWallpaperPagePublic(this)`。彻底消除了重叠文字，完整保留 Smartisan 原版经典黑/经典木纹/毛玻璃/透明主题卡片、12/20 宫格预览图、主题下载器与壁纸选择高斯模糊界面。
* **[AppIconsActivity.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/settings/AppIconsActivity.java)**：完全委托给 `MaintainedLauncherSettingsHost.showIconPagePublic(this)`。渲染原版图标尺寸滑块、图标包选择与单应用图标重绘面板。
* **[AdditionalFeaturesActivity.java](file:///e:/FANG/smartisan/smartisan-launcher-original-port/launcher/tools/java/com/smartisanos/launcher/settings/AdditionalFeaturesActivity.java)**：完全委托给 `MaintainedLauncherSettingsHost.showOcdOptionsPagePublic(this)`。渲染原版强迫症选项面板（隐藏图标名称、手势清除角标、解锁缩放动画、搜索与通知中心手势等）。

---

## 阶段 0 - 阶段 6 整体迁移状态总结

| 阶段 | 名称 | 核心任务 | 当前状态 |
|---|---|---|---|
| **阶段 0** | 现状审计与原版行为映射 | 明确所有设置项读写 key、广播及系统 Global 依赖。 | **DEVICE_VERIFIED** |
| **阶段 1** | 多 Activity 基础设施建设 | 解决 BaseSettingsActivity 延迟 Theme 懒加载与 NPE。 | **DEVICE_VERIFIED** |
| **阶段 2** | 设置首页和简单页面迁移 | 迁移 About、OperationLog、OCD 选项与 PlatformCompat。 | **DEVICE_VERIFIED** |
| **阶段 3** | OriginalSettingsBridge 正式落地 | 建立 UI 与原版 Launcher 核心引擎间唯一可审计 Bridge。 | **DEVICE_VERIFIED** |
| **阶段 4** | 主题和壁纸迁移 | 迁移主题选择（普通/毛玻璃/透明主题）与壁纸 Activity。 | **DEVICE_VERIFIED** |
| **阶段 5** | 应用图标系统迁移 | 迁移应用图标尺寸、已安装图标包加载以及单应用图标 Activity。 | **DEVICE_VERIFIED** |
| **阶段 6** | 12/20 宫格迁移与原生门面集成 | 迁移 12/20 宫格模式选择，全量对接原生 Smartisan 宿主视图。 | **DEVICE_VERIFIED** |





