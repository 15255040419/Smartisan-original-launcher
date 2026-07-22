# 设置系统架构（Settings Architecture）

## 文档职责

本文档只记录设置系统的**稳定架构**：当前结构、目标分层、包结构、Activity 结构、数据所有权、导航与生命周期、构建方式、禁止跨层调用规则。

不记录每日流水。每日实施结果写在 `docs/development/DEVELOPMENT_LOG.md`。  
行为证据写在 `docs/development/ORIGINAL_SETTINGS_BEHAVIOR_MATRIX.md`。  
施工阶段写在 `docs/development/SETTINGS_MODERNIZATION_PLAN.md`。

---

## 调查基线

| 项 | 值 |
|---|---|
| 分支 | `fix/pin-shortcut` |
| HEAD | `8116c122999234805598c6fa99ed89c6be963ec3` |
| HEAD 摘要 | `FIX修复桌面设置图标模糊问题` |
| 工作区 | 混合工作区，已存在现代设置 Activity/Bridge、路由、Manifest 补丁、构建改动和 APK 产物；另有 IDE 与 APK 的未暂存变化。它们不是本轮审计结论，也未在本轮修改。 |
| 审计日期 | 2026-07-22 |
| 本轮是否改运行代码 | 否 |
| 本轮是否改 Manifest | 否 |
| 本轮是否构建 APK | 否 |

审计入口文件：

- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`（**16568 行**）
- `launcher/smali/com/smartisanos/launcher/theme/ThemeChooserActivity.smali`
- `launcher/tools/java/com/smartisanos/launcher/theme/LauncherSettingBridge.java`
- `launcher/tools/java/com/smartisanos/launcher/theme/NativeLauncherSettingsHost.java`
- `launcher/tools/maintained_settings_res/`
- `launcher/AndroidManifest.xml` / `launcher/original/AndroidManifest.xml`
- `build.bat`
- 原版：`build/decompiled_theme_check/com.android.settings-100/`、`clean_launcher/`
- 参考：`E:\FANG\smartisan\smartisan-launcher-maintained`

---

## 1. 当前架构（As-Is）

### 1.1 一句话结论

原始稳定实现是 **单 Activity + 巨型静态宿主**；当前工作区还存在未验收的现代路由代码，不能据此认定目标架构已落地：

```text
桌面“桌面设置”图标
  → ThemeChooserActivity (smali, 原始设置 Activity 壳)
    → MaintainedLauncherSettingsHost.show()（legacy 路径）
      → inflate maintained XML
      → setSettingsContentView() 替换 android.R.id.content
      → 所有二级/三级页面继续在同一 Activity 内 setContentView
      → 业务逻辑、反射、重载、权限、图标、主题、分身全部混在 Host

待审查的工作区改动还在 `ThemeChooserActivity` 前加入 `SettingsRouter`，并新增多 Activity；这些文件尚无本计划要求的逐阶段验收，因此不能作为当前稳定架构或原版行为依据。
```

### 1.2 组件角色

| 组件 | 路径 | 当前职责 | 问题 |
|---|---|---|---|
| `ThemeChooserActivity` | `launcher/smali/.../ThemeChooserActivity.smali` | 唯一设置 Activity；`onCreate/onNewIntent` 调 `Host.show`；转发 `onActivityResult` / `onRequestPermissionsResult` / `onResume` | 不是真实主题选择器；承载全部设置页 |
| `MaintainedLauncherSettingsHost` | `launcher/tools/java/.../MaintainedLauncherSettingsHost.java` | UI 渲染 + 导航 + 配置读写 + 主题/宫格/图标/壁纸/分身/隐私/重载/安装/搜索 | 16568 行上帝类；UI 与业务耦合 |
| `LauncherSettingBridge` | 同包 | 配置读取（bool/string/icon size/transparent）；ActiveIcon 阴影几何 | 读路径已部分桥接，写路径仍在 Host |
| `NativeLauncherSettingsHost` | 同包 | 原生设置/宫格部分兼容 | 与 Host 职责重叠 |
| `WeatherBridge` | 同包 | 天气城市、定位、ActiveIcon 数据 | 设置页与桌面恢复共享 |
| `BadgeBridge` / `SmartisanBadgeListenerService` | `launcher/tools/java/.../badge/` | 通知使用权与角标 | 设置开关仍在 Host |
| `RedirectIconDB` | `.../data/redirectIcon/` | 自定义图标持久化 | 正确；应由 Bridge 统一调用 |
| `LauncherColdReloadCoordinator` | `.../reload/` | 宫格/图标大小/动态图标/透明主题冷重载外壳 | 正确；UI 不得直接杀进程 |
| `IconPackManager` / `IconManager` | `.../home/settings/icons/` | 图标包与列表 | 被 Host 反射/直接调用 |
| maintained 资源 APK | `assets/settings_maintained/maintained-settings-res.apk` | 设置 XML/drawable/string；运行时 `addAssetPath` 加载 | 包名资源仍为 `com.smartisanos.home` |
| 原版 Launcher 核心 | smali：`J`、`N`、`F`、`Constants`、`ChangeThemeHandler`、`Eb`、`SMEngine` 等 | 桌面唯一业务实现 | 必须继续作为唯一实现 |

### 1.3 当前导航（单 Activity 伪栈）

```text
ThemeChooserActivity
├── show() / setting_main ..................... 首页
├── showThemePage() ........................... 主题列表
│   └── showThemeItemPage() ................... 主题详情（同一 Activity 换 content）
├── showWallpaperPage() ....................... 壁纸
├── showPageFlipPage() ........................ 翻页动画
├── showIconPage() ............................ 应用图标
│   └── 替换图标页（代码内 page） ............. 三级
├── showProfileAppsPage() ..................... 应用分身
├── showSettingsPagePasswordEntry() ........... 隐私入口
│   ├── showSettingsPasswordPad() ............. 验证/设置密码
│   ├── showPrivacyPasswordPage() ............. 隐私设置
│   └── showDesktopBlockLockInfoPage() ........ 板块锁定说明
├── showOcdOptionsPage() ...................... 强迫症/附加功能
├── showDynamicWeatherPage() .................. 动态天气
├── showAboutPage() ........................... 关于
│   └── showOperationLogPreview() ............. 操作日志预览
├── showSearchPage() .......................... 内置搜索（非设置主栈）
└── 外部系统页（startActivity）
    ├── 默认桌面 / Role HOME
    ├── 电池优化
    ├── 通知使用权
    ├── 应用详情（定位权限）
    ├── 图片选择器（壁纸 requestCode=10 / 自定义图标 53026）
    └── 更新 APK 安装
```

返回机制（当前）：

- 二级页左上角：`bindBackTitle()` → 再次 `show(activity, sMainSettingsScrollY, true)` 重建首页。
- 多数子页 **不是** `Activity.finish()`，而是 `setContentView` 回首页。
- 主题应用成功路径会 `finish()` 设置 Activity 并回 HOME（原版时序）。
- 宫格/部分重载路径可能 `finish()` + 冷重载。
- 系统返回键：依赖 Activity 栈；因只有一个设置 Activity，系统返回直接退出设置，**不会**走 `bindBackTitle` 的伪返回。

### 1.4 当前构建路径

```text
build.bat
  1) aapt2 编译 launcher/tools/maintained_settings_res
     → maintained-settings-res.apk
     → copy 到 launcher/assets/settings_maintained/
  2) apktool 打包 launcher/ → launcher-unsigned.apk
  3) 二进制 Manifest 注入 launcher/original/AndroidManifest.xml
  4) javac launcher/tools/java/** → d8 → classes2.dex
     jar uf 注入 APK
  5) zipalign + apksigner → build/launcher-signed.apk
```

结论：

- 新 Java 设置类应放在 `launcher/tools/java/`，进入 **`classes2.dex`**。
- 新 XML 若走 maintained 资源链路，需进入 `maintained_settings_res` 或确认最终 `resources.arsc` 注入方式。
- 新 Activity **必须** 同步文本 Manifest 与二进制 `launcher/original/AndroidManifest.xml`。

### 1.5 当前 Host 审计摘要（完整项见施工文档阶段 0 附录）

| 统计项 | 结果 |
|---|---|
| 文件总行数 | **16568** |
| `public static` 声明数（含字段） | **71** |
| `private static` 声明数（含字段） | **733** |
| 页面 `showXXX` 主方法 | `show`、`showSearchPage`、`showThemePage`、`showThemeItemPage`、`showWallpaperPage`、`showPageFlipPage`、`showIconPage`、`showProfileAppsPage`、`showPrivacyPasswordPage`、`showSettingsPagePasswordEntry/Verify/Set`、`showDesktopBlockLockInfoPage`、`showOcdOptionsPage`、`showDynamicWeatherPage`、`showAboutPage`、`showOperationLogPreview`、`showIconSizeDialog`、密码 pad/loading 等 |
| 导航方式 | `setSettingsContentView` / `activity.setContentView` 伪栈 |
| 进入动画 | `setSettingsContentView(..., forward=true)` 水平滑入 180ms |
| 返回动画 | `forward=false` 反向滑入；部分路径 `overridePendingTransition(0,0)` |
| `onActivityResult` | 壁纸 `10`；自定义图标 `53026` |
| `onRequestPermissionsResult` | 仅动态天气定位 `2414` |
| `onResume` | `onSettingsHostResumed`：角标同步、壁纸刷新、部分状态回读 |
| `Handler.postDelayed` | 初始化迁移 15s、主题轮询、loading 轮询、搜索 IME、若干 UI 延迟 |
| `AlarmManager` | 旧重启路径仍存在 `setExact`（图标大小主路径已迁冷重载，Alarm 为遗留/兜底） |
| `killProcess` | 至少 3 处（`7448`、`7528`、`8423` 一带）进程重生兜底 |
| 反射 | IconPackManager、DatabaseUpdater/`F`、Constants、ChangeThemeHandler 相关、`Eb`、UserHandle、RoleManager、AsUser API 等 |
| 配置存储 | `launcher_settings`、`com.smartisanos.launcher_prefs`、`launcher_page_lock`、`launcher_profile_apps`、`icon_override_prefs`、`theme_download_prefs`、`launcher_search_prefs`、`online_icon_cache_v3`、`launcher_operation_log_prefs` + Settings.System/Global 镜像 |
| Provider | `content://com.smartisanos.launcher.settings/favorites` 查询；原版 exportprovider 在普通 Android 上多为缺失 |
| 重载 | `LauncherColdReloadCoordinator` + 遗留 `restartLauncher`/`killProcess` |

---

## 2. 目标架构（To-Be）

```text
┌─────────────────────────────────────────────────────────────┐
│ Settings UI Layer                                           │
│  XML Layout + Android View + 多 Activity                    │
│  标题栏 / 返回栈 / 页面动画 / 滚动位置 / 临时 UI 状态      │
│  权限说明 / 错误提示 / 设置项可用状态                        │
└───────────────────────────┬─────────────────────────────────┘
                            │ 只调用 Bridge + Compat
┌───────────────────────────▼─────────────────────────────────┐
│ OriginalSettingsBridge                                      │
│  读原版配置 / UI 参数→原版参数 / 调用原版入口               │
│  统一结果：APPLIED / NO_CHANGE / RELOAD_REQUIRED /          │
│           USER_ACTION_REQUIRED / UNSUPPORTED / FAILED       │
└───────────────────────────┬─────────────────────────────────┘
                            │
┌───────────────────────────▼─────────────────────────────────┐
│ 原版 Smartisan Settings 行为语义（键、时序、消息）          │
└───────────────────────────┬─────────────────────────────────┘
                            │
┌───────────────────────────▼─────────────────────────────────┐
│ Original Launcher Core（唯一实现）                          │
│  Launcher / J / Constants / N / F / DatabaseHandler         │
│  ItemInfo / PageView / Cell / Folder / Dock                 │
│  ThemeManager / ChangeThemeHandler / ActiveIcon            │
│  WeatherView / CalendarView / Eb / SMEngine                 │
└─────────────────────────────────────────────────────────────┘

并行：
┌─────────────────────────────────────────────────────────────┐
│ Platform Compatibility Layer                                │
│  运行时权限 / 默认桌面 / LauncherApps / PinItemRequest      │
│  PackageInstaller / NotificationListener / UserManager      │
│  Activity Result / 系统 Settings 页 / Insets / ROM 降级     │
└─────────────────────────────────────────────────────────────┘
```

### 2.1 分层职责

#### A. Settings UI Layer

**负责：**

- XML Layout 与 Android View 绑定
- 多 Activity 页面与系统返回栈
- 标题栏、左上角返回（调用 `onBackPressed()` / `finish()`）
- 页面进入/退出动画（Activity transition 或统一 base）
- 滚动位置与临时 UI 状态（`onSaveInstanceState`）
- 权限说明文案、错误 Toast/Dialog、开关可用态

**不得负责：**

- 数据库迁移、`N.d` / `F.i`、ItemInfo 重排
- 主题渲染 / SMEngine 节点
- ActiveIcon 创建
- Launcher 进程管理 / `killProcess`
- 第二套图标缓存或桌面 Model

#### B. OriginalSettingsBridge

**负责：**

- 读取当前可信配置（优先既有 key 与 `LauncherSettingBridge` 读路径）
- UI 参数转换为原版参数（例如外部 12/20 → 内部 page mode）
- 调用已确认的原版入口（优先直接/最小 Smali wrapper，避免猜反射）
- 返回统一 `SettingsApplyResult`
- 低频结构化日志：`ORIGINAL_SETTINGS_BRIDGE domain=... op=... result=... entry=...`

**不得负责：**

- 第二套数据库 / 主题管理器 / 图标缓存 / 宫格算法 / ActiveIcon
- 固定延迟“假装成功”
- UI 控件绑定

统一结果类型：

```text
APPLIED              已应用，无需额外动作
NO_CHANGE            与当前值相同
RELOAD_REQUIRED      需要既有冷重载外壳（带 token）
USER_ACTION_REQUIRED 需要用户去系统页/授权
UNSUPPORTED          设备/ROM 不支持
FAILED               明确失败，附 error code
```

#### C. Original Launcher Core

继续作为**唯一**桌面实现。设置系统只通过已确认入口触发，不复制算法。

#### D. Platform Compatibility Layer

只封装公开 Android / 厂商可降级能力。返回 `SUPPORTED | DEGRADED | UNSUPPORTED | FAILED`。

---

## 3. 目标包结构

建议包名（审计后可微调，须在阶段 1 文档中记录原因）：

```text
launcher/tools/java/com/smartisanos/launcher/settings/
  BaseSettingsActivity.java          # 新增
  SettingsMainActivity.java          # 新增
  SettingsRouter.java                # 新增
  OriginalSettingsBridge.java        # 新增（可分域内部类/文件）
  SettingsPlatformCompat.java        # 新增门面；子模块可同包 compat/
  SettingsApplyResult.java           # 新增枚举
  SettingsUiFlags.java               # 新增：legacy/modern 开关

  ui/
    ThemeSettingsActivity.java
    ThemeDetailActivity.java
    WallpaperSettingsActivity.java
    AppIconsSettingsActivity.java
    ReplaceIconActivity.java
    IconPackSettingsActivity.java    # 若图标包独立页
    IconSizeSettingsActivity.java    # 或 Dialog 宿主
    GridSettingsActivity.java        # 若宫格从首页拆出
    ProfileAppsSettingsActivity.java
    PrivacySettingsActivity.java
    DynamicIconSettingsActivity.java
    WeatherLocationSettingsActivity.java
    GestureSettingsActivity.java     # 或并入 AdditionalFeatures
    BadgeSettingsActivity.java       # 或并入 AdditionalFeatures
    DefaultHomeSettingsActivity.java # 多为系统跳转壳
    AdditionalFeaturesActivity.java
    AboutActivity.java
    OperationLogActivity.java
    UpdateSettingsActivity.java      # 检查更新结果/进度

  compat/                            # 阶段 9 收敛
    DefaultHomeCompat.java
    ShortcutCompat.java              # 复用现有 ShortcutCompatBridge
    NotificationAccessCompat.java
    PackageEventCompat.java
    UserProfileCompat.java
    BatteryOptimizationCompat.java
    SystemPanelCompat.java
    InsetsCompat.java
```

保留但不膨胀：

- `com.smartisanos.launcher.theme.ThemeChooserActivity`：legacy 入口与兼容路由，阶段 10 前不删除
- `MaintainedLauncherSettingsHost`：阶段迁移期间默认 UI；逐步抽离后降级为 helper 集合
- `LauncherSettingBridge`：读路径可并入 Bridge 或继续作为 Bridge 内部依赖
- `PinShortcutConfirmActivity` / `ShortcutLaunchActivity`：桌面快捷方式入口，不属于设置 UI 主栈，但由 Compat 统一

资源：

- 继续优先复用 `launcher/tools/maintained_settings_res/res/layout/*`
- 不重新设计 UI；不新增 Material 风格

---

## 4. Activity 目标结构

状态标记：

- **已存在（当前项目）**
- **maintained 已存在**
- **当前项目需要新增**
- **名称待审计确认**

共性约定（除非单项覆盖）：

- `screenOrientation=portrait`（与当前 `ThemeChooserActivity` launchMode/orientation 一致）
- `taskAffinity` 设置页建议继续 `com.android.settings`（与现 Manifest 一致），避免污染桌面 task
- 父返回：`finish()` + Base 统一 exit 动画；**禁止** 用 `setContentView` 重建父页
- 状态保存：至少保存 `scrollY`、选中 tab、待处理 request token
- 外部页返回：本 Activity `onResume` / Activity Result 只刷新本页
- 默认不触发 Launcher 业务 `finish`；仅主题应用等原版时序要求时由 Bridge 指示 UI finish

### 4.1 页面清单

#### SettingsMainActivity

| 字段 | 内容 |
|---|---|
| 状态 | **当前项目需要新增**（maintained：`SettingMainActivity`） |
| 层级 | L0 根 |
| 父 | 无（从桌面/路由进入） |
| 启动 Intent | `com.smartisanos.launcher.settings.SettingsMainActivity`；Router `MAIN` |
| 输入 | 可选 `extra_restore_scroll_y`；Router action |
| 输出 | 无业务 result |
| XML | `setting_main`（maintained） |
| 数据读取 | Bridge：当前主题预览、版本号、开关摘要 |
| 操作提交 | 仅导航；开关类逐步改 Bridge |
| 返回 | `finish()` 回桌面 |
| 状态保存 | `main_scroll_y` |
| 外部返回 | `onResume` 刷新默认桌面状态、版本号 |
| 触发 Launcher finish | 否 |
| 需要重载 | 否（本页不直接改桌面） |
| 横竖屏 | 竖屏 |
| 可独立恢复 | 是 |

#### ThemeSettingsActivity

| 字段 | 内容 |
|---|---|
| 状态 | **当前项目需要新增**（maintained：`ThemeChooserActivity` 列表职责） |
| 层级 | L1 |
| 父 | SettingsMainActivity |
| Intent | Router `THEME` |
| 输入 | 无 |
| 输出 | 无 |
| XML | `theme_preview_gridview` |
| 读取 | 已装主题列表、在线主题元数据、当前 `launcher_theme` |
| 提交 | 进入详情；下载主题包 |
| 返回 | finish |
| 状态 | 列表 scroll |
| 重载 | 否（应用在详情） |

#### ThemeDetailActivity

| 字段 | 内容 |
|---|---|
| 状态 | **当前项目需要新增**（当前项目：`ThemeItemActivity.smali` 存在但 Host **未启动**，详情在同一 Activity 换 layout；maintained 有详情布局 `activity_theme_item`） |
| 层级 | L2 |
| 父 | ThemeSettingsActivity |
| 输入 | `theme_id`, `theme_pkg`, `theme_name`, `installed` |
| 输出 | 可选 `result_theme_applied` |
| XML | `activity_theme_item` |
| 提交 | `OriginalSettingsBridge.applyTheme(...)` |
| 返回/finish | 普通/毛玻璃成功：按原版时序 finish 设置栈并 HOME；透明：独立冷重载链 |
| 触发 Launcher finish | 否直接；Bridge 指示 UI 结束设置页 |
| 重载 | 普通主题：否（原版动画）；透明：是（既有 token） |

#### WallpaperSettingsActivity

| 字段 | 内容 |
|---|---|
| 状态 | **当前项目需要新增** |
| 层级 | L1 |
| XML | 当前 `showWallpaperPage` 使用的 maintained 壁纸 layout（阶段 0 精确资源名） |
| 读取 | `launcher_wallpaper_uri` / thumb |
| 提交 | 系统图片选择 `requestCode` 自有；Bridge 持久化与刷新 |
| 外部返回 | Activity Result 后留在本页 |
| 重载 | 通常否；失败标记 pending refresh |

#### AppIconsSettingsActivity

| 字段 | 内容 |
|---|---|
| 状态 | **当前项目需要新增**（maintained：`AppIconsSettingsActivity`） |
| 层级 | L1 |
| XML | `app_icon_settings_layout` 等 |
| 读取 | 后台线程应用列表；改进版开关；图标包摘要；图标大小 |
| 提交 | 开关/图标包/大小 → Bridge；点应用 → ReplaceIcon |
| 状态 | list scroll + filter（已重绘/未重绘） |
| 重载 | 图标大小：RELOAD_REQUIRED；单应用替换：局部刷新 |

#### ReplaceIconActivity

| 字段 | 内容 |
|---|---|
| 状态 | **当前项目需要新增** |
| 层级 | L2 |
| 输入 | `packageName`, `componentName`, `userId/serial`, `return_scroll_y` |
| XML | 替换图标布局（当前 Host 代码内 page / maintained item layout） |
| 提交 | `RedirectIconDB` 经 Bridge；相册 URI |
| 返回 | setResult + finish；父页恢复 scroll |

#### IconPackSettingsActivity

| 字段 | 内容 |
|---|---|
| 状态 | **名称待审计确认**（maintained 多在 AppIcons 内 Dialog/Support；可能不独立 Activity） |
| 建议 | 阶段 5 若交互复杂再拆；否则作为 AppIcons 内 Dialog |

#### IconSizeSettingsActivity

| 字段 | 内容 |
|---|---|
| 状态 | **名称待审计确认**（当前为 `showIconSizeDialog` Dialog） |
| 建议 | 优先保留 Dialog 宿主在 AppIcons；不强制独立 Activity |

#### GridSettingsActivity

| 字段 | 内容 |
|---|---|
| 状态 | **当前项目需要新增** 或保留首页 `LauncherPreview` 控件（当前 `bindGrid` 在首页） |
| 层级 | L0 控件或 L1 |
| 提交 | `Bridge.switchGrid(12|20)` → 原版 `N.d`+`F.i` + 冷重载 |
| 重载 | 是 RELOAD_REQUIRED |

#### ProfileAppsSettingsActivity

| 字段 | 内容 |
|---|---|
| 状态 | **当前项目需要新增**（maintained 同名） |
| 读取 | UserManager + LauncherApps + `launcher_profile_apps` |
| 提交 | 启用/禁用分身快捷方式；不伪造 user |

#### PrivacySettingsActivity

| 字段 | 内容 |
|---|---|
| 状态 | **当前项目需要新增** |
| 读取 | `launcher_page_lock` / `password_hash` |
| 提交 | 设置/修改/验证密码；板块锁说明 |
| 注意 | 无明文；系统返回不可绕过验证门 |

#### DynamicIconSettingsActivity / WeatherLocationSettingsActivity

| 字段 | 内容 |
|---|---|
| 状态 | **当前项目需要新增**（可一页两段） |
| key | `launcher_dynamic_weather_calendar_enabled` |
| 权限 | `ACCESS_COARSE_LOCATION`；拒绝不写开 |
| 重载 | ACTIVE_ICON_SETTINGS_CHANGE 冷重载 |

#### GestureSettingsActivity / BadgeSettingsActivity / AdditionalFeaturesActivity

| 字段 | 内容 |
|---|---|
| 状态 | **当前项目需要新增**（maintained：`AdditionalFeaturesActivity`；当前 `setting_ocd_options`） |
| keys | `swipe_up_search_enabled`、`swipe_down_system_panels_enabled`、`launcher_hide_badge`、`launcher_badge_swipe_clean`、`launcher_unlock_animation_enabled`、`launcher_hide_lable`、`launcher_hide_navigation_bar` |
| 角标 | 依赖 NotificationListener；未授权不写开 |

#### DefaultHomeSettingsActivity

| 字段 | 内容 |
|---|---|
| 状态 | **名称待审计确认**（当前直接系统 Intent，可不建 Activity） |
| 建议 | Compat 方法 + 主页入口点击即可 |

#### AboutActivity / OperationLogActivity / UpdateSettingsActivity

| 字段 | 内容 |
|---|---|
| 状态 | **当前项目需要新增**（maintained：`AboutUsActivity`） |
| 重载 | 否 |
| 更新 | DownloadManager + 安装；经 Compat/现有安装链 |

### 4.2 遗留入口

| 类 | 状态 | 目标 |
|---|---|---|
| `ThemeChooserActivity` | 已存在 | 长期兼容别名：Router 转到 SettingsMainActivity；legacy 开关开启时仍 `Host.show` |
| `ThemeItemActivity` | smali 已存在但 Host 未用 | 阶段 4 评估是否恢复为真实详情 Activity 或删除死代码（删除前引用扫描） |
| `ConfirmPasswordActivity` | 原版/现有 | 桌面加密板块与搜索目标启动；设置隐私页可复用验证语义 |

---

## 5. 数据所有权

| 数据 | 所有者 | 设置 UI | Bridge | Compat |
|---|---|---|---|---|
| 桌面 pages/items DB | 原版 DatabaseHandler | 只读展示必要时 | 触发原版迁移 | 否 |
| `prefs_key_launcher_mode` | `com.smartisanos.launcher_prefs` | 展示 | 写入+校验 | Global 镜像可选 |
| `launcher_theme` | prefs + System/Global | 展示 | 写入并走 ChangeThemeHandler | 否 |
| `launcher_grid_theme` | 透明覆盖专用 | 展示 | 透明开关链 | 否 |
| `launcher_icon_size` | prefs | 展示 | 写入+冷重载 token | 否 |
| 改进版/图标包/RedirectIcon | prefs + RedirectIconDB | 列表 UI | 提交 | 否 |
| 动态天气开关 | `launcher_dynamic_weather_calendar_enabled` | 开关 UI | 提交+重载 | 定位权限 |
| 角标开关 | `launcher_hide_badge` 等 | 开关 UI | 写配置 | 通知使用权 |
| 手势开关 | swipe_up/down keys | 开关 UI | 写配置 | 系统面板能力探测 |
| 分身启用表 | `launcher_profile_apps` | 列表 | 写+快捷方式 | UserManager |
| 隐私密码 hash | `launcher_page_lock` | 输入 UI | 验证/保存 | 否 |
| 壁纸 URI | `launcher_settings` + 文件副本 | 选择 UI | 持久化/刷新 | WallpaperManager |
| 操作日志 | files + prefs | 展示 | 写日志 API | 否 |
| PIN Shortcut | 原版 DB + QuickLaunchItem | 确认 Activity（非设置主栈） | 安装动作 | PinItemRequest |

**禁止** UI 或 Compat 直接 `SQLiteDatabase` 改 favorites。

---

## 6. 页面导航方式

目标：

```text
桌面 → startActivity(SettingsMainActivity)
SettingsMainActivity → startActivity(子 Activity)
子 → startActivity(孙)
孙 finish → 子（系统栈恢复 scroll）
子 finish → 主
主 finish → 桌面
```

规则：

1. 禁止用单 Activity `setContentView` 模拟多级页面（legacy 除外）。
2. 左上角返回 = `onBackPressed()` / `OnBackPressedDispatcher` 等价 `finish()`。
3. 不拦截 `KEYCODE_BACK` 做自定义坐标手势。
4. 主题成功等特殊路径：Bridge 返回需要 finish 设置 task 时，由 UI 显式 `finishAffinity` 或按原版顺序 finish + HOME Intent。
5. deep link：`SettingsRouter` 解析 `MAIN` / `THEME` / `SEARCH` / `UPDATE_INSTALL` / legacy。

---

## 7. 生命周期方式

| 事件 | UI | Bridge | Core |
|---|---|---|---|
| onCreate | setContentView、bind | 只读初始化 | 不触达 |
| onResume | 刷新本页状态 | 可选只读 | 不重建桌面 |
| onPause | 停动画/轮询 | 无 | 无 |
| onSaveInstanceState | scroll/pending | 无 | 无 |
| onActivityResult | 本页处理 | 提交业务 | 按入口 |
| onRequestPermissionsResult | 本页处理 | 成功才 commit | 重载若需要 |
| 进程回收 | 可独立恢复 | 配置已持久化 | 桌面自恢复 |

借鉴 SmartisanWeather-Revived（架构原则，非照搬代码）：

- XML + View，不用 Compose 重画设置
- 多 Activity + 标准 Result
- 系统 Insets / 标准权限
- 原版视觉资源与现代数据/权限边界分离  
本地仓库未检出 `SmartisanWeather-Revived`，阶段 1 前以 GitHub 仓库 README/结构复核。

---

## 8. 构建方式（设置相关）

| 产物 | 来源 |
|---|---|
| maintained 资源 APK | `launcher/tools/maintained_settings_res` → assets |
| Java 兼容/设置层 | `launcher/tools/java` → **classes2.dex** |
| 原版逻辑 | smali → classes.dex |
| 组件声明 | 文本 Manifest + **二进制** `launcher/original/AndroidManifest.xml` |
| 最终包 | `build/launcher-signed.apk` 单 APK，包名不变 |

新增 Activity 检查清单：

1. `launcher/AndroidManifest.xml` 文本声明  
2. 二进制 Manifest 同步（按 `docs/build/BUILD_GUIDE.md`）  
3. `aapt2 dump xmltree` 确认  
4. 不改 packageName / version 除非发版任务  

---

## 9. 禁止跨层调用规则

| 禁止 | 正确做法 |
|---|---|
| UI → `N.d` / `F.i` / DatabaseHandler | UI → Bridge.switchGrid |
| UI → `Process.killProcess` | Bridge → ColdReloadCoordinator |
| UI → 直接改 favorites SQL | 原版 DatabaseUpdater 入口 |
| UI → 反射猜十几个混淆方法 | 阶段 0 固定入口 + 最小 Smali wrapper |
| UI → 固定 delay 当成功 | token / 回调 / 明确失败 |
| Bridge → 操作 View/动画 | 只返回 Result 让 UI 表现 |
| Bridge → 新建第二套主题引擎 | ChangeThemeHandler 原版链 |
| Compat → 写桌面数据库 | 只提供系统能力 |
| Compat → 替代 ActiveIcon | 仅权限/定位/网络辅助 |
| 设置现代化 → 同时升 targetSdk | 阶段 12 独立专项 |
| 设置现代化 → 引入 Compose/Room 替换核心 | 禁止 |

---

## 10. Legacy 与 Modern 共存

| 开关 | 建议 key | 默认 | 作用 |
|---|---|---|---|
| Modern UI | `settings_modern_ui_enabled`（名称阶段 1 确认） | **false** 直到阶段 13 | true 时 Router 进多 Activity |
| Legacy Host | `ThemeChooserActivity` + Host.show | 默认路径 | 任一 modern 页失败可回退 |

正式切换条件见施工文档阶段 13；未满足前不得删除 Host 页面导航。

---

## 11. 与其它文档关系

| 文档 | 关系 |
|---|---|
| `SETTINGS_MODERNIZATION_PLAN.md` | 按阶段落地本架构 |
| `ORIGINAL_SETTINGS_BEHAVIOR_MATRIX.md` | 每项设置的原版/当前/目标链 |
| `LAUNCHER_FIX_AND_OPTIMIZATION_PLAN.md` | 冷重载/宫格/主题动画既有结论，设置迁移必须服从 |
| `ORIGINAL_BEHAVIOR_REFERENCE.md` | 原版行为摘要 |
| `MEMORY.md` / `DEVELOPMENT_LOG.md` | 长期事实与每日验证 |

---

## 12. 架构决策记录（ADR 摘要）

1. **不重写 Launcher 核心**：设置现代化只换 UI 壳与调用边界。  
2. **单 APK 单包名**：不拆第二个设置 APK。  
3. **Bridge 唯一业务入口**：杜绝 Host 式发散调用。  
4. **冷重载只走既有 Coordinator**：宫格/图标大小/动态图标/透明主题。  
5. **普通主题走原版消息动画**：禁止黑色 Loading 冒充主题切换。  
6. **透明主题独立键 `launcher_grid_theme`**：不进 `launcher_theme` 队列。  
7. **先共存后清理**：阶段 10 前保留 legacy。  
8. **targetSdk 升级独立**：阶段 12，不与功能迁移混做。  
