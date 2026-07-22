# 原版设置行为矩阵（Original Settings Behavior Matrix）

## 文档职责

逐项记录每个设置项的：

- 当前 UI 与存储
- 原版 Smartisan Settings 行为
- 原版 Launcher 接收
- maintained 可参考点
- 当前偏差
- 最终实现目标
- 状态

状态枚举：`UNKNOWN` / `MAPPED` / `IMPLEMENTED` / `DEVICE_VERIFIED`

本轮（2026-07-22）先审计与映射，随后开始导航实施。当前只能把 L0/L1 导航标记为 `IMPLEMENTING`：OPPO 已验证主题、翻页、隐私密码、应用分身的子页边缘返回回到设置首页；L2/L3 仍不能标记 `DEVICE_VERIFIED`。工作区中其余现代设置实现不构成全量验收证据。

---

## 调查基线

| 项 | 值 |
|---|---|
| 分支 | `fix/pin-shortcut` |
| HEAD | `8116c122999234805598c6fa99ed89c6be963ec3` |
| 工作区运行代码 | 混合工作区：已存在现代设置 Activity/Bridge、路由、Manifest 补丁、构建和 APK 产物变更；另有 IDE 与 APK 的未暂存变化。本轮不覆盖这些内容。 |
| 当前设置宿主 | `MaintainedLauncherSettingsHost.java` 16568 行 |
| 当前 Activity 壳 | 原始稳定路径为 `ThemeChooserActivity.smali` → `Host.show`；工作区另有未验收的 `SettingsRouter` 分流改动，不能作为原版链路证据。 |
| 原版 Settings | `build/decompiled_theme_check/com.android.settings-100/` |
| 原版 Launcher | 首先核对 `original_apks/com.smartisanos.launcher-3.apk`；该 APK 当前仅能还原资源/框架壳，未含可读的 Launcher 业务类。业务行为逐项再以同版本 `clean_launcher/` 反编译结果比对，不能把 maintained 当作原版核心证据。 |
| maintained | `E:\FANG\smartisan\smartisan-launcher-maintained` |
| SmartisanWeather-Revived | 本地路径未检出；原则参考 GitHub `Mangi-11/SmartisanWeather-Revived` |
| 2026-07-22 真机基线 | vivo X21A（`b2a4da1c`）：显式启动 legacy `ThemeChooserActivity` 成功（322 ms），系统返回后恢复 `LauncherAlias`；本次 logcat 无 Launcher `AndroidRuntime`/`FATAL EXCEPTION`。这是设备上既有 APK 的 legacy 基线，不能证明待安装新 APK。 |

### 搜索过但未完全还原的路径（全局 UNKNOWN 说明）

| 搜索 | 路径 | 结果 | 下一步确认 |
|---|---|---|---|
| `LauncherPreview` + `onLauncherTypeChanged` | 原版 settings-100 / ORIGINAL_BEHAVIOR_REFERENCE | 文档有语义；smali 全文检索本轮未逐行 dump 全部监听体 | 阶段 0 补充 `LauncherPreview*.smali` 方法级摘录 |
| `content://com.smartisanos.launcher.exportprovider` | 原版 Launcher | 原版宫格配置链；普通 Android 无此 provider | 保持私有 prefs 写入 + 原版 N.d/F.i |
| 原版 Settings 隐私密码服务 | settings-100 | 未在本轮锁定唯一类名 | 对照 `ConfirmPasswordActivity` + 加密板块字段 |
| maintained `SettingMainActivity` 全部 click 目标 | maintained smali | 类存在；未逐 listener 反汇编 | 阶段 1 对照 layout id |
| 原版 Launcher APK 业务 smali | `original_apks/com.smartisanos.launcher-3.apk` / `build/decompiled_original_launcher_phase0/` | APK 只有 `classes.dex`，现有反编译仅得到框架壳；apktool 资源解码还因 package id 2 缺失 framework 停止 | 保留 APK 的 Manifest/资源身份核对；业务链以 `clean_launcher` 逐项比对并在各阶段注明这一限制 |

---

## 当前页面导航图（审计）

```text
桌面设置齿轮（legacy/原始稳定链）
  → Intent ThemeChooserActivity
    → onCreate/onNewIntent → MaintainedLauncherSettingsHost.show()
      → setting_main (首页)

首页点击：
  item_id_themes              → showThemePage → showThemeItemPage
  item_id_launcher_wallpaper  → showWallpaperPage  (透明主题时可见性变化)
  item_page_flip_anims        → showPageFlipPage
  item_id_icons               → showIconPage → 替换图标页
  item_id_profile_apps        → showProfileAppsPage
  item_id_privacy_password    → showSettingsPagePasswordEntry → ...
  setting_ocd_options         → showOcdOptionsPage
  setting_dynamic_weather     → showDynamicWeatherPage  (另有首页开关)
  setting_switch_launcher     → openDefaultHomeSettings (系统页)
  more_check_upgradation      → checkForUpdates
  setting_battery_optimization→ openBatteryOptimizationSettings
  setting_about_us            → showAboutPage

特殊 Intent：
  launcher_show_search=true   → showSearchPage
  UPDATE_INSTALL_ACTION       → installApk / installApkFile

返回：
  二级 bindBackTitle → show(main, scroll, animateBack=true) 重建首页
  系统返回键 → 结束 ThemeChooserActivity（无伪栈）
```

---

## 当前状态存储表（核心 key）

| SharedPreferences / Settings | key | 默认（代码） | 读写位置（Host/Bridge） | commit/apply | 跨进程 | 需重载 | 旧 key 迁移 | 与原版关系 |
|---|---|---|---|---|---|---|---|---|
| `com.smartisanos.launcher_prefs` | `prefs_key_launcher_mode` | 设备相关 | `readLauncherMode` / 宫格写入 | commit | 主进程 | 是 | UNKNOWN 完整迁移表 | 原版主配置 |
| `launcher_settings` + prefs | `launcher_theme` | `smartisan_theme_black` | applyTheme 路径 | commit + System/Global | 镜像 | 普通主题否 | — | 原版主题 id |
| `launcher_settings` + System/Global | `launcher_grid_theme` | 0 | 透明开关 | commit | 镜像 | 是（冷重载） | — | 透明覆盖专用 |
| `launcher_settings` | `launcher_icon_size` | 100 | 图标大小 | commit | 否 | 是 | — | 移植扩展；原版语义待核对 |
| `launcher_settings` | `launcher_improved_icon_enabled` | false | 改进版开关 | commit | 否 | 局部刷新 | 有 builtin 迁移 | 移植 |
| `launcher_settings` | `launcher_dynamic_weather_calendar_enabled` | false | 动态开关 | commit | 否 | 是 | — | 对应原版 update_icon 语义 |
| `launcher_settings` | `launcher_hide_badge` | false | 角标提醒（语义反转需对照 bind） | commit | 否 | 否（服务同步） | — | 移植 |
| `launcher_settings` | `launcher_badge_swipe_clean` | false | 横扫清除 | commit | 否 | 否 | — | 移植 |
| `launcher_settings` | `swipe_up_search_enabled` | true | OCD 开关 | 系统 bool 读写 | 否 | 否 | 从 `launcher_search_page_enabled` migrate | 移植 |
| `launcher_settings` | `swipe_down_system_panels_enabled` | true | OCD 开关 | 同上 | 否 | 否 | — | 移植 |
| `launcher_settings` | `launcher_unlock_animation_enabled` | true | OCD | 同上 | 否 | 否 | — | 原版有解锁动画开关语义 |
| `launcher_settings` | `launcher_hide_lable` | false | OCD | 同上 | 否 | 可能局部 | — | 原版隐藏标签 |
| `launcher_settings` | `launcher_hide_navigation_bar` | false | OCD | 同上 | 否 | 否（窗口） | — | 移植 |
| `launcher_settings` | `launcher_wallpaper_uri` 等 | 空 | 壁纸 | commit | Global 镜像 | 刷新壁纸 | — | 原版壁纸链部分私有 |
| `launcher_settings` | `transparent_previous_theme` | — | 关透明恢复 | commit+Settings | 镜像 | 是 | — | 移植 |
| `launcher_page_lock` | `password_hash` | 空 | 隐私密码 | commit | 否 | 否 | — | 兼容实现 |
| `launcher_profile_apps` | `disabled.*` | 启用 | 分身列表 | commit | 否 | 快捷方式更新 | — | 移植 |
| `icon_override_prefs` | pending custom keys | — | 相册选图 | apply | 否 | 否 | — | 移植 UI 状态 |
| `theme_download_prefs` | downloadId | — | 主题下载 | — | 否 | 否 | — | 移植 |
| `launcher_search_prefs` | `search_history_entries` | — | 搜索历史 | apply | 否 | 否 | — | 移植 |
| `online_icon_cache_v3` | 缓存索引 | — | 在线图标 | — | 否 | 否 | 版本目录 | 移植 |
| Settings.System | `launcher_page_animation` | — | 翻页动画 | putInt | 是 | 可能 | — | 原版 |
| Settings.Global | `launcher_mode` 等镜像 | — | 宫格 | putInt | 是 | — | — | 有权限才成功 |

读优先级（`LauncherSettingBridge.readBool/readString`）：

1. `launcher_settings`  
2. `com.smartisanos.launcher_prefs`  
3. `Settings.System`  
4. `Settings.Global`  

---

## 设置项明细

---

## 12/20 宫格

### 当前 UI
- 页面：设置首页 `setting_main`
- 控件：`bindGrid()` → maintained `LauncherPreview` 风格控件（Host 内绑定）
- 当前监听：选择 12 或 20 → 确认对话框（20→12 拆分提示）→ 写 mode → `migrateLauncherModeAndRestart`
- 当前存储：`com.smartisanos.launcher_prefs` / `prefs_key_launcher_mode`；尝试镜像 Settings.Global `launcher_mode`、`launcher_grids_x/y` 等
- 当前后续动作：`LauncherColdReloadCoordinator.beginGridReload`；失败路径可能 `restartLauncher` / `killProcess` 兜底

### 原版 Smartisan Settings
- APK：`com.android.settings-100`
- 类：`LauncherPreview` + Callback（见 ORIGINAL_BEHAVIOR_REFERENCE）
- 方法：点击 → `onLauncherTypeChanged(int)`
- 参数：外部模式 12 或 20（不是 9/16 用户选项）
- 写入：`prefs_key_launcher_mode`；exportprovider 配置链
- Provider：`content://com.smartisanos.launcher.exportprovider`（原版）
- 广播 / Intent：UNKNOWN 完整 action 列表
- Handler/Message：UNKNOWN
- 返回时序：原版 Settings 侧**未发现** finish+杀 Launcher；依赖 Launcher 内部识别 mode 变化

### 原版 Launcher
- 接收类：`Constants.getPageModeFromMode()`；`DatabaseHandler.mWorker`
- 接收方法：`N.d(context, newPageMode)` → `F.i(old, new)`
- 线程：数据库 Worker
- 数据库：是
- Model/PageView：迁移后完整场景需新生命周期（普通 Android 不能 `recreate`）
- 场景：12 内部对应 12；20 外部对应内部 9（原版映射）
- 完成条件：迁移完成 + 新进程首帧（移植冷重载）

### maintained
- 页面：`SettingMainActivity` 含 `LAUNCHER_MODE_VALUE`
- XML：首页 preview 相关
- 可以复用：12/20 UI 展示与提示文案
- 不可复用：其重启/杀进程策略若与当前 Coordinator 冲突则禁止

### 当前偏差
- 重复实现：配置写入与 Global 镜像在 Host
- 私有依赖：exportprovider 缺失
- 反射：mode 映射有 Constants 反射路径
- 固定延迟：不应作为成功条件
- 杀进程：冷重载协调后的精确 PID 结束；Host 仍有 killProcess 兜底
- 风险：连续切换 task 清理、Oplus 进程附着问题（已有专项记录）

### 最终实现
- UI Activity：首页控件或 `GridSettingsActivity`
- Bridge 方法：`switchGrid(target12or20)`
- 原版入口：写 prefs → `N.d` → `F.i`（Worker）
- Compat：无
- 重载方式：既有 `beginGridReload` token
- 返回方式：设置页随过渡结束
- 降级：同值 `NO_CHANGE`；迁移失败 `FAILED` 不关过渡冒充成功
- 验证：12→20 保序；20→12 拆分；连续切换；备份对比

### 状态
MAPPED

---

## 图标大小

### 当前 UI
- 页面：应用图标页 / `showIconSizeDialog`
- 控件：SeekBar/选项 Dialog（锤子风格统一弹窗）
- 监听：确认 → 写 `launcher_icon_size`
- 存储：`launcher_settings`（及镜像路径）
- 后续：`LauncherColdReloadCoordinator` ICON_SIZE_CHANGE；**已废弃** AlarmManager 350ms + killProcess 主路径

### 原版 Smartisan Settings
- 类/方法：UNKNOWN（原版是否暴露百分比图标大小未在本轮锁定）
- 搜索词：`launcher_icon_size` in settings-100 → 需补

### 原版 Launcher
- `Constants.applyLauncherIconSize()` 读百分比影响几何
- 不走 `N.d`/`F.i`

### maintained
- AppIcons 内大小设置可参考 UI

### 当前偏差
- 杀进程旧链遗留代码仍在文件中（Alarm/kill 符号存在）
- 风险：误调用旧路径

### 最终实现
- UI：Dialog 或 IconSize 页
- Bridge：`setIconSizePercent(p)` → 同值 NO_CHANGE；否则 commit + RELOAD_REQUIRED
- 原版入口：Constants 读新值；冷重载外壳
- 验证：50/100/150、同值跳过、文件夹/动态图标

### 状态
MAPPED

---

## 普通主题

### 当前 UI
- 页面：`showThemePage` → `showThemeItemPage`（`activity_theme_item` 换 content，**不**启动 `ThemeItemActivity`）
- 控件：Grid 本地/在线主题
- 监听：应用 → `applyTheme` → `applyThemeViaOriginalStack`
- 存储：`launcher_theme` prefs + System/Global
- 后续：原版 ChangeThemeHandler 消息；finish 设置；HOME；`J.onResume` 消费

### 原版 Smartisan Settings
- 类：原版/ maintained `ThemeChooserActivity`、主题详情
- 写入：`launcher_theme`
- 来源枚举：`ChangeThemeHandler$RequireChangeFrom.SETTING`

### 原版 Launcher
- 接收：`ChangeThemeHandler` / 主题消息队列 `a.r.sj`（混淆名以 smali 为准）
- 线程：主题 Handler
- 场景：过渡截图 → 设置 finish → HOME → `J.onResume` → SMEngine 主题动画
- 完成条件：动画完成；**非**冷重载黑场

### maintained
- `ThemeChooserActivity` + 预览资源
- 可复用：列表 UI、预览图
- 不可复用：与原版消息时序冲突的即时 apply

### 当前偏差
- 历史错误：前台直接 `a.r.a/b(Message)`（已禁止，见 DEVELOPMENT_LOG）
- 透明残留 `launcher_grid_theme=1` 时必须先清覆盖再走普通链

### 最终实现
- UI：`ThemeSettingsActivity` + `ThemeDetailActivity`
- Bridge：`applyTheme(id,pkg)` → 原版栈
- 重载：否
- 验证：经典黑/彩色主题、快速连点、系统栏

### 状态
MAPPED

---

## 毛玻璃主题

### 当前 UI
- 同普通主题列表项 `smartisan_theme_aero`（包 `com.smartisanos.launcher.theme.aero`）
- 后续：普通主题消息链（非透明覆盖）

### 原版
- 独立主题包资源；执行链同普通主题

### 当前偏差
- 易与透明主题 `theme.trans` 混淆（包名与 `theme_id` 不同）

### 最终实现
- 与普通主题同一 Bridge 方法；资源包区分
- 验证：毛玻璃材质与动画

### 状态
MAPPED

---

## 透明主题

### 当前 UI
- 首页开关 `bindTransparentThemeSwitch`；键 **`launcher_grid_theme`**
- 开启后隐藏主题列表与翻页动画入口；强制默认翻页动画
- 后续：`LauncherColdReloadCoordinator.beginThemeReload(..., transparent=true)` 一类独立链

### 原版
- 透明为覆盖模式，不是普通 `launcher_theme` 队列项
- 包：`com.smartisanos.launcher.theme.trans`（移植安装 `build/theme-trans-signed.apk`）

### 当前偏差
- 不得把 `smartisan_theme_trans` 写入 `launcher_theme`
- 关透明需恢复 `transparent_previous_theme`

### 最终实现
- Bridge：`setTransparentOverlay(enabled)`
- 重载：冷重载外壳
- 降级：主题包未装 → USER_ACTION_REQUIRED/UNSUPPORTED

### 状态
MAPPED

---

## 壁纸

### 当前 UI
- `showWallpaperPage`；选图 requestCode **10**
- 存储：`launcher_wallpaper_uri` / thumb / ready；System/Global 镜像；文件副本
- 后续：`WallpaperManager` + `refreshLauncherWallpaperNow`；失败 pending

### 原版
- 桌面/锁屏壁纸可能走 desktop 伴随包与私有 URI（`desktop_wallpaper_uri`、`lockscreen_background`）
- 普通 Android 无完整私有服务

### maintained
- 壁纸设置 UI 可参考

### 当前偏差
- 混合系统 WallpaperManager 与 Launcher 自绘壁纸常量
- takePersistableUriPermission 按 flags 尽力

### 最终实现
- `WallpaperSettingsActivity` + Compat WallpaperManager
- Bridge 写 URI 与刷新入口
- 选图返回留在壁纸页

### 状态
MAPPED

---

## 改进版图标

### 当前 UI
- 应用图标页全局开关 `launcher_improved_icon_enabled`
- 在线库 Gitee/GitHub；缓存 `online_icon_cache_v3`
- 关闭时 Adapter 不重建分组（DEVELOPMENT_LOG 2026-07-18）

### 原版
- 无同等在线库；原版为本地/主题图标

### 最终实现
- Bridge：`setImprovedIconsEnabled` + 局部 `applyIconChanges`
- 不建第二缓存体系；保留现有目录版本规则

### 状态
MAPPED

---

## 图标包

### 当前 UI
- `IconPackManager`（Java）；Host 反射 warmUp / getSelected
- 选择后预热 appfilter；刷新图标

### 原版 / maintained
- maintained `IconPackManager.smali` 同源思路

### 最终实现
- Bridge 调用现有 IconPackManager；禁止 UI 直接反射

### 状态
MAPPED

---

## 单应用图标

### 当前 UI
- 应用列表 → 替换页；候选：系统原图、图标包、改进版缓存、相册
- 相册 requestCode **53026**；`RedirectIconDB.updateCustomIcon`
- 匹配键：package + component（非显示名）

### 原版 Settings
- `AppIconsSettingsFragment` 等（settings-100 存在）

### 最终实现
- `ReplaceIconActivity` + Bridge；返回只刷新受影响包

### 状态
MAPPED

---

## 相册图标

### 当前 UI
- 系统内容 URI；`saveCustomIcon`；尽量 persistable permission
- 不依赖真实绝对路径作为唯一源

### 最终实现
- Compat 封装 pick intent + 权限；Bridge 写 RedirectIconDB

### 状态
MAPPED

---

## 动态天气/日历

### 当前 UI
- 首页开关 + `showDynamicWeatherPage`
- 唯一 key：`launcher_dynamic_weather_calendar_enabled`
- 首次开启：请求 `ACCESS_COARSE_LOCATION`（request **2414**）；拒绝不写开
- 后续：`beginActiveIconReload`；**正常路径不用**旧 `update_icon` 局部刷新

### 原版 Smartisan Settings
- `AppIconsSettingsFragment` 点击链含 `com.smartisanos.launcher.update_icon`
- 定位属天气设置/自动定位，不属于 HOME 恢复

### 原版 Launcher
- ActiveIcon / WeatherView / CalendarView / Constants 阴影几何
- DatabaseUpdater 场景更新

### maintained
- 无完整 ActiveIcon 等价；不可照搬

### SmartisanWeather-Revived
- 可借鉴：权限、Insets、网络错误态、生命周期
- 不可：Room 替桌面 DB、静态图冒充动态节点

### 当前偏差
- 旧 WeatherBridge 每次 resume 扫描/定位已收敛（见行为参考）

### 最终实现
- `DynamicIconSettingsActivity` + Bridge `setDynamicWeatherCalendar(enabled)`
- 重载 token：ACTIVE_ICON_SETTINGS_CHANGE

### 状态
MAPPED

---

## 天气定位

### 当前 UI
- 运行时粗略定位；永久拒绝 → 应用详情 Dialog
- `PREF_DYNAMIC_WEATHER_LOCATION_REQUESTED`
- 城市搜索：`showCitySearchDialog` / bundled cities / WeatherBridge

### 原版
- 定位与城市选择在 Settings 天气相关 UI；完整类名 UNKNOWN 补查

### 最终实现
- `WeatherLocationSettingsActivity` 或动态页子区
- Compat：权限 + 系统定位；Bridge：写城市配置供 WeatherBridge 读

### 状态
MAPPED（权限链） / UNKNOWN（原版城市 Provider 细节）

---

## 应用分身

### 当前 UI
- `showProfileAppsPage`；`launcher_profile_apps` disabled 前缀
- 发现：LauncherApps profiles + UserManager + 常见 clone userId 启发式
- 快捷方式：`INSTALL_SHORTCUT`/`UNINSTALL_SHORTCUT` 广播 + 反射直调兜底
- `removeLegacyProfileShortcutRows` + DatabaseUpdater 事件

### 原版
- 多用户/分身体系统相关；具体 Settings 页 UNKNOWN

### maintained
- `ProfileAppsSettingsActivity`

### 当前偏差
- 启发式 userId 列表可能误报；需 ROM 矩阵
- 风险：主用户/分身 Intent 混淆

### 最终实现
- `ProfileAppsSettingsActivity` + UserProfileCompat
- Bridge 更新快捷方式；保留 UserHandle

### 状态
MAPPED

---

## 隐私密码

### 当前 UI
- 入口验证/设置 pad；`launcher_page_lock`/`password_hash`
- `ConfirmPasswordActivity` 用于桌面/搜索目标
- `showPrivacyPasswordPage` / 板块锁定说明页

### 原版
- 加密板块 + 密码 Activity；私有服务在普通 ROM 缺失
- 数据库加密字段：阶段 8 必须对照 clean_launcher

### 当前偏差
- 本地 hash 兼容实现；是否与原版盐格式一致 → UNKNOWN

### 最终实现
- `PrivacySettingsActivity`；无明文；系统返回不绕过门
- 私有服务存在走原版，否则本地兼容

### 状态
MAPPED（UI） / UNKNOWN（原版哈希兼容）

---

## 角标提醒

### 当前 UI
- OCD：`bindBadgeVisibilitySwitch`；key `launcher_hide_badge`（命名与“显示”语义以 bind 实现为准）
- 依赖 `BadgeBridge.hasNotificationAccess()`；未授权不写开
- 撤销授权同步关

### 原版
- 通知计数广播 + 场景节点；NEW 与数字角标分离（移植已做）

### 最终实现
- Badge 设置 UI + NotificationAccessCompat + Bridge 写开关
- 服务：`SmartisanBadgeListenerService` 不重建

### 状态
MAPPED

---

## 横扫清除角标

### 当前 UI
- key `launcher_badge_swipe_clean`；同样依赖通知使用权

### 最终实现
- 与角标同页；双开关独立 pending target

### 状态
MAPPED

---

## 默认桌面

### 当前 UI
- `openDefaultHomeSettings`：Role HOME（API29+）→ `HOME_SETTINGS` → `MANAGE_DEFAULT_APPS` → MIUI → 通用 Settings
- `startActivityForResult(role, 0)` 未精细处理 result

### 原版
- 系统设置内默认桌面（Settings 包）

### 最终实现
- DefaultHomeCompat；主页入口；RESULT 后 onResume 刷新状态文案

### 状态
MAPPED

---

## 下拉通知栏 / 下拉控制中心

### 当前 UI
- 手势开关 `swipe_down_system_panels_enabled`（默认开）
- 实际面板调用：`SystemPanelCompat` / gesture 包（非 Host 页面主逻辑）
- 设置项在 OCD 页

### 原版
- 系统手势/私有 panel；普通 ROM 反射 StatusBarManager 等

### 最终实现
- Gesture/AdditionalFeatures UI + Compat 能力探测
- 无障碍模拟手势不作默认实现

### 状态
MAPPED

---

## 上滑搜索

### 当前 UI
- key `swipe_up_search_enabled`；`openLauncherSearchFromSwipeUp`
- 搜索页：`showSearchPage` 或 ThemeChooser extra `launcher_show_search`
- 历史：`launcher_search_prefs`

### 原版
- 原版搜索/负一屏相关；当前项目自绘搜索，不依赖独立 QuickSearch APK（AGENTS 禁止恢复）

### 最终实现
- 手势开关 UI；搜索仍为 Launcher 内页/Activity 路由
- Host 内嵌搜索 UI 可迁独立 Activity，但不改搜索业务为第三方 APK

### 状态
MAPPED

---

## 双击锁屏

### 当前 UI
- UNKNOWN 是否在当前设置首页暴露  
- 搜索词：`lock`/`double` in Host → 未作为一级设置项确认  
- 可能在桌面手势或未移植

### 原版
- UNKNOWN 本轮

### 最终实现
- 阶段 0 补查；无入口则矩阵保持 UNKNOWN，不编造

### 状态
UNKNOWN

- 搜索路径：`MaintainedLauncherSettingsHost.java`、maintained SettingMain、settings-100
- 下一步：`rg -i "double.*lock|lock_screen|双击"` 全仓库 + 真机设置页截图对照

---

## PIN Shortcut

### 当前 UI
- **不在** Host 设置伪栈内
- `PinShortcutConfirmActivity` + `ShortcutCompatBridge` + `ShortcutLaunchActivity`
- 现代：`CONFIRM_PIN_SHORTCUT` / PinItemRequest.accept
- 旧：`INSTALL_SHORTCUT` / `UNINSTALL_SHORTCUT` → LauncherReceiver

### 原版
- `PinShortcutActivity` → Dialog 类型 0x7f6 悬浮窗（普通 Android 不可靠）

### 最终实现
- 保持独立确认 Activity；阶段 9 归 ShortcutCompat
- 设置页仅可提供“说明/权限”入口（若需要）

### 状态
MAPPED

---

## 新应用安装

### 当前 UI
- 设置页无直接开关；系统能力在 `SmartisanInstallManager`
- Host 提供图标清理 `clearCachedImprovedIcon` 等协作

### 原版
- `LauncherReceiver` / `Aa.c` / NEW 标记

### 最终实现
- 不在设置 UI 重写安装；Compat/InstallManager 保持单队列
- 设置现代化禁止第二套插入 ItemInfo

### 状态
MAPPED

---

## 检查更新

### 当前 UI
- 首页 `more_check_upgradation` → `checkForUpdates`
- Gitee releases API；DownloadManager；通知渠道；安装经 `UPDATE_INSTALL_ACTION` Intent 回 ThemeChooserActivity

### 原版
- 系统/官方更新通道不同

### 最终实现
- `UpdateSettingsActivity` 或主页 + 结果页
- 安装走 PackageInstaller Compat；不改签名流程

### 状态
MAPPED

---

## 操作日志（已移除）

- 原版 Settings、原版 Launcher APK 与 `clean_launcher` 均无对等用户功能；它只是移植期诊断功能。
- 2026-07-22 已移除入口、Activity 与二进制 Manifest 注册，并让旧调用不再写入或恢复日志。
- 不递归删除既有安装留下的私有 `operation_logs` 文件，避免越权删除用户数据。

### 状态
REMOVED

---

## 关于

### 当前 UI
- `showAboutPage` / `setting_about_us`；版本名；隐藏更多产品
- 失败 fallback Dialog 显示 version + package

### maintained
- `AboutUsActivity`

### 最终实现
- `AboutActivity`；阶段 1 迁移

### 状态
MAPPED

---

## 附加项（矩阵补充）

### 翻页动画
- 当前：`showPageFlipPage`；写 `launcher_page_animation`；透明主题强制默认
- 原版：page flip 设置
- 状态：MAPPED

### 隐藏应用名 / 隐藏导航栏 / 解锁动画开关
- 当前：OCD `setting_ocd_options`
- 状态：MAPPED

### 内置搜索页（非设置项但同 Host）
- `showSearchPage`；与设置伪栈共享 Activity 风险高
- 最终：独立 Search Activity + Router SEARCH
- 状态：MAPPED

---

## 当前偏差总表

| 类型 | 实例 | 目标 |
|---|---|---|
| Java 重实现原版业务 | 宫格写配置+重启编排、主题 apply 周边、分身快捷方式 | 收敛进 Bridge，算法回原版 |
| 反射目标不稳定 | 多处 Class.forName 混淆方法 | 阶段 0 固定入口表 + Smali wrapper |
| 固定延迟兜底 | 15s 迁移、loading 轮询、主题页 1s poll | 保留网络/动画类；去掉“成功判定”延迟 |
| 直接改库 | RedirectIconDB（可接受，属图标库）；favorites query | 写 favorites 必须经 DatabaseUpdater |
| 直接场景操作 | 反射 `Eb`、folder、theme handler 状态 | 仅 Bridge 受控调用 |
| 单 Activity 伪栈 | 全部 showXXX | 多 Activity |
| 系统返回不一致 | Back 退出整页 vs 左上角回首页 | 标准栈 |
| killProcess | 多处兜底 | 仅 Coordinator 精确 PID |
| 搜索混入设置 Activity | showSearchPage | 独立路由 |

---

## 完成度

| 统计 | 数量 |
|---|---|
| 要求覆盖项 | 26+ |
| 本轮 MAPPED | 24 |
| UNKNOWN | 双击锁屏；部分原版 Settings 方法体；隐私哈希兼容；部分 Provider action |
| IMPLEMENTED（新架构） | 0（本轮不实施） |
| DEVICE_VERIFIED（新架构） | 0 |

阶段 0 收尾前必须把 UNKNOWN 降到“可执行或明确不做”的状态，才能开始阶段 1 的 Manifest 改动以外的代码（阶段 1 仍需用户审阅本方案后启动）。
