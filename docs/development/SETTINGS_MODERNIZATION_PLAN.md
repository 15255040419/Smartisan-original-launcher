# 设置系统现代化完整实施方案

## 调查基线

| 项 | 值 |
|---|---|
| 分支 | `fix/pin-shortcut` |
| HEAD（方案审计时） | `8116c122999234805598c6fa99ed89c6be963ec3` |
| HEAD 说明 | `FIX修复桌面设置图标模糊问题` |
| `git status`（审计时） | 混合工作区：暂存内容包含现代设置实现、构建/Manifest 改动及 APK/截图产物；另有 `.idea/workspace.xml` 与 APK 产物的未暂存变化。它们均为审计前既有内容，本轮不覆盖、不解释为已验收。 |
| 审计日期 | 2026-07-22 |
| 本轮允许（审计轮） | 只读调查 + 写本文档与架构/矩阵/索引 |
| 本轮禁止（审计轮） | 改 launcher 代码、Smali、资源、Manifest、build、签名、版本、构建、提交、推送、自动实施 |

> 审计边界：工作区可见的 `com.smartisanos.launcher.settings`、路由、Bridge、二进制 Manifest 补丁和 APK 产物均是本轮开始前已有的待审查变更；本方案不将它们视为阶段完成证据。任何阶段只能在独立实施轮完成构建、安装和对应真机用例后更新状态。

配套文档：

- 架构：`docs/architecture/SETTINGS_ARCHITECTURE.md`
- 行为矩阵：`docs/development/ORIGINAL_SETTINGS_BEHAVIOR_MATRIX.md`
- 冷重载/宫格/主题既有结论：`docs/development/LAUNCHER_FIX_AND_OPTIMIZATION_PLAN.md`
- 原版摘要：`docs/development/ORIGINAL_BEHAVIOR_REFERENCE.md`

---

## 1. 当前状态

原始设置 UI 运行在 **单一** `ThemeChooserActivity` 上，全部页面由 **`MaintainedLauncherSettingsHost`（16568 行）** 通过 `setContentView` / `setSettingsContentView` 伪导航实现。当前混合工作区另有未验收的 `SettingsRouter`/多 Activity 路由改动；它只作为待审查现状记录，不改变本计划的阶段状态。

已确认事实：

| 项 | 值 |
|---|---|
| public static 声明 | 71 |
| private static 声明 | 733 |
| 页面方法 | show / showThemePage / showThemeItemPage / showWallpaperPage / showPageFlipPage / showIconPage / showProfileAppsPage / showPrivacy* / showOcdOptionsPage / showDynamicWeatherPage / showAboutPage / showSearchPage 等 |
| 进入动画 | `setSettingsContentView` 水平 180ms |
| 返回动画 | `forward=false`；部分 `overridePendingTransition(0,0)` |
| 左上角返回 | `bindBackTitle` → `show(main, scroll, true)` 重建首页 |
| finish | 主题成功、密码页、重载相关路径 |
| onActivityResult | 壁纸 10；自定义图标 53026 |
| onRequestPermissionsResult | 动态天气定位 2414 |
| onResume | `onSettingsHostResumed` |
| postDelayed | 15s 初始化迁移、主题轮询、loading 轮询等 |
| AlarmManager | 遗留重启调度仍存在 |
| killProcess | ≥3 处兜底 |
| 反射 | IconPack、F/DatabaseUpdater、Constants、Eb、主题、Role、AsUser 等 |
| 配置 | 多 SharedPreferences + System/Global 镜像 |
| 重载 | `LauncherColdReloadCoordinator` 为主；旧杀进程仍在 |

核心问题：UI、兼容、原版业务、进程管理混在一个类；系统返回与左上角返回语义不一致；无法按页测试与回退。

---

## 2. 最终目标

在 **不重写原版 Launcher 核心** 的前提下：

1. 设置 UI 改为 **XML + 多 Activity + 标准返回栈**。
2. 所有改桌面行为只经 **`OriginalSettingsBridge`**。
3. 系统能力只经 **Platform Compatibility Layer**。
4. 原版数据库、宫格迁移、主题动画、ActiveIcon、SMEngine 仍是唯一实现。
5. 与 legacy Host **共存**，默认旧 UI，验证后正式切换。
6. 最终仍是 **单 APK**、`com.smartisanos.launcher`、用户数据兼容。

表述边界：

> Android 6～16 主流设备可运行；厂商私有能力按设备能力安全降级。  
> **禁止**宣称“所有手机百分之百完全一致”。

---

## 3. 不在范围内

- 重写桌面核心 / SMEngine / 文件夹几何 / 解锁动画资源
- 用 Compose 重画设置页
- 用 Room 替换 Launcher DB
- 恢复独立 QuickSearch APK
- 与设置迁移同时升级 targetSdk（阶段 12 独立）
- 改签名密钥、包名、用户清空数据
- 为设置单独发布第二个 APK
- 把 maintained 整包覆盖进原版行为

---

## 4. 架构决策

详见 `docs/architecture/SETTINGS_ARCHITECTURE.md`。摘要：

```text
Settings UI → OriginalSettingsBridge → 原版语义 → 原版 Launcher 入口 → Core
                 ↘ Platform Compat（权限/默认桌面/PIN/NLS/User…）
```

结果枚举：`APPLIED | NO_CHANGE | RELOAD_REQUIRED | USER_ACTION_REQUIRED | UNSUPPORTED | FAILED`。

候选新增包：`com.smartisanos.launcher.settings`（路径可在阶段 1 因 build 约束微调，须记录原因）。

---

## 5. 阶段依赖图

```text
阶段0 审计映射
  └→ 阶段1 多Activity基础设施 + legacy开关
       └→ 阶段2 简单页面迁移（关于/日志/更新/OCD/默认桌面入口…）
            └→ 阶段3 OriginalSettingsBridge 正式落地
                 ├→ 阶段4 主题/壁纸
                 ├→ 阶段5 应用图标系统
                 ├→ 阶段6 12/20 宫格
                 ├→ 阶段7 动态天气/日历/定位
                 └→ 阶段8 分身/隐私密码
                      └→ 阶段9 系统能力 Compat 集中化
                           └→ 阶段10 清理旧 Host（需1–9 DEVICE_VERIFIED）
                                ├→ 阶段11 可选 Gradle 设置模块（非必须）
                                ├→ 阶段12 targetSdk 分级（独立分支）
                                └→ 阶段13 完整兼容验证与正式切换
```

并行约束：

- 阶段 4～8 可在 3 完成后按风险串行；**禁止**并行改同一 Host 大块无协调。
- 阶段 11、12 不阻塞 13 的“modern 默认开”最小集，但 12 不得与 4～8 混提交。

---

## 6. 阶段状态表

| 阶段 | 名称 | 前置阶段 | 当前状态 | 是否改数据库 | 是否改原版核心 | 是否需真机 |
|---|---|---|---|---|---|---|
| 0 | 现状审计与原版行为映射 | 无 | AUDITING（已采 legacy 入口/系统返回基线；其余用例和 UNKNOWN 待补） | 否 | 否 | 是 |
| 1 | 现代多 Activity 基础设施 | 0 | BUILD_VERIFIED（2026-07-22；安装/真机待确认） | 否 | ThemeChooserActivity 路由 wrapper | 是 |
| 2 | 设置首页与简单页面迁移 | 1 | IMPLEMENTING（About/Additional 与部分系统入口已存在） | 否 | 否 | 是 |
| 3 | OriginalSettingsBridge 落地 | 0,2 部分可提前设计 | IMPLEMENTING（grid/theme/active-icon/icon-size 已有方法；业务域未齐） | 否（只封装） | 现有反射 wrapper | 是 |
| 4 | 主题和壁纸迁移 | 3 | IMPLEMENTING（ThemeWallpaperActivity 仍委托 legacy Host） | 否 | 否（走原版入口） | 是 |
| 5 | 应用图标系统迁移 | 3 | IMPLEMENTING（AppIconsActivity 仍委托 legacy Host） | RedirectIcon 既有表 | 否 | 是 |
| 6 | 12/20 宫格迁移 | 3 | IMPLEMENTING（Main → Bridge → N.d/F.i 的 12/20 格子数与 12/9 基页模式边界已修复；vivo 新 APK 安装被 `Failure [-200]` 阻塞，未完成真机验收） | 是（原版迁移） | 调用原版 N/F | 是 |
| 7 | 动态天气/日历/定位 | 3 | IMPLEMENTING（Bridge 有联合开关；无独立 Activity/权限闭环） | 否 | ActiveIcon 原版 | 是 |
| 8 | 应用分身和隐私密码 | 3 | IMPLEMENTING（已由独立 Activity 承接导航；内容与数据链仍复用原版 Host） | 可能快捷方式行 | 否 | 是 |
| 9 | 系统能力兼容集中化 | 2–8 进行中可并行整理 | IMPLEMENTING（默认桌面/电池优化/通知使用权已集中；PIN/安装/Profile 未集中） | 否 | 否 | 是 |
| 10 | 清理旧设置宿主 | 1–9 DEVICE_VERIFIED | NOT_STARTED | 否 | 否 | 是 |
| 11 | 可选 Gradle/Kotlin 模块 | 10 稳定后 | NOT_STARTED | 否 | 否 | 是 |
| 12 | targetSdk 分级升级 | 独立 | NOT_STARTED | 否 | 可能 Manifest | 是 |
| 13 | 完整验证与正式切换 | 10 完成；11 可选 | NOT_STARTED | 否 | 否 | 是 |

状态枚举：`NOT_STARTED | AUDITING | IMPLEMENTING | BUILD_VERIFIED | DEVICE_VERIFIED | BLOCKED | DEPRECATED`

---

## 6.1 阶段实施核查记录（2026-07-22）

本记录以当前工作区实际源码为准；`BUILD_VERIFIED` 仅表示 `build.bat`、APK 元数据、二进制 Manifest 与 v1/v2/v3 签名通过，**不等同于**页面交互或桌面业务已真机验收。

| 阶段 | 已确认实现证据 | 尚未满足的完成条件 | 本次结论 |
|---|---|---|---|
| 0 | 三份专项文档、Host 30 项审计表、26 项以上行为矩阵与 UNKNOWN 清单已存在；vivo X21A 已采 `ThemeChooserActivity` legacy 入口和系统返回至 `LauncherAlias` 基线，未见 Launcher crash。原版 Settings 的 `BaseActivity`、`AppIconsSettingsFragment`、`LauncherPreview` 已核对到 Activity/Fragment、包变更接收器和回调边界。 | 设置首页/三级页、权限、图片选择器、主题、图标大小、宫格的完整基线日志未逐项采集；原版 Launcher APK 当前只能提供 Manifest/资源级证据，业务 smali 必须继续由 `clean_launcher` 同版本反编译比对。 | AUDITING |
| 1 | `BaseSettingsActivity`、`SettingsMainActivity`、`SettingsRouter`、`SettingsUiFlags`、About；5 个设置 Activity 的 AXML 注入；legacy 默认 `false`、开关真实回显和滚动状态保存。vivo X21A 已覆盖安装，显式启用 modern 后进入 `SettingsMainActivity`；显式关闭后仍进入 `ThemeChooserActivity`。 | 设置首页全部交互与完整回归仍属阶段 2 验收。 | DEVICE_VERIFIED |
| 2 | `AdditionalFeaturesActivity`、About、默认桌面/电池优化/通知使用权入口已在 Main 或 Compat 中存在；`AdditionalFeaturesActivity.onResume()` 接回原 `onSettingsHostResumed()`。vivo X21A 已验证 Main → Additional、系统返回 Additional → Main、Main → 默认桌面系统页 → Main、Main → About；均无 `AndroidRuntime`。 | 通知使用权往返（未授权不写开、授权后仅同步请求目标）、电池优化跳转、各开关写入与杀进程恢复未逐项真机验收；Additional 仍复用 Host 内容绑定，尚未达到简单页完全脱离 Host 内容导航的阶段完成条件。 | IMPLEMENTING |
| 3 | `OriginalSettingsBridge` 已包含 `switchGridMode`、`applyTheme`、`setTransparentTheme`、`setDynamicWeatherCalendar`、`applyIconSizePercent`。 | wallpaper/app-icons/profile/privacy/badges 的统一结果契约、线程/失败语义与原版入口逐项证据不完整。 | IMPLEMENTING |
| 4 | `ThemeWallpaperActivity` 已注册并把主题/壁纸页面委托给 Host。 | 仍是 Host `setContentView` 伪导航；普通/毛玻璃/透明主题、选图回调与壁纸模糊无新 APK 真机验收。 | IMPLEMENTING |
| 5 | `AppIconsActivity` 已注册并委托 `showIconPagePublic`。 | 图标包、相册图标、替换图标、图标尺寸均未独立 Activity 化或完成回归。 | IMPLEMENTING |
| 6 | Main 的 12/20 预览项调用 Bridge，Bridge 在 A 的 Worker 上调用 `N.d` 和 `F.i` 后触发 reload。 | 迁移前后快照、失败不重载保护、连续双向切换及用户数据核对未完成。 | IMPLEMENTING |
| 7 | Bridge 有动态天气/日历联合开关与 reload 调用；`DynamicIconSettingsActivity` 已承接真实返回栈，内容继续复用原有 Host。 | 定位授权、城市选择、跨日和完整真机回归缺失。 | IMPLEMENTING |
| 8 | `ProfileAppsSettingsActivity`、`PrivacySettingsActivity` 已承接真实 Android 返回栈，内部仍复用 Host 的原有分身枚举、LauncherApps 和密码链。 | 多用户组合、认证修改链和完整真机回归仍未完成。 | IMPLEMENTING |
| 9 | `SettingsPlatformCompat` 已覆盖默认桌面、电池优化、通知使用权。 | PIN Shortcut、PackageInstaller、LauncherApps、UserManager、系统面板等未形成集中 Compat 边界。 | IMPLEMENTING |
| 10–13 | 无符合阶段目标的专用实现。 | 依赖前序阶段 DEVICE_VERIFIED；Gradle/Kotlin、targetSdk 分级与多 ROM 完整回归均未开始。 | NOT_STARTED |

### 本次构建与设备证据

- `build.bat` 于 2026-07-22 成功完成 apktool、`classes2.dex` 注入、zipalign 与签名。
- 阶段 2 的 `AdditionalFeaturesActivity.onResume()` 修改后，`build.bat` 于同日再次成功；该修改尚未完成新 APK 安装后的通知使用权往返测试。
- `aapt2 dump badging` 确认为 `com.smartisanos.launcher v1.5.4 / 29`；操作日志已于 2026-07-22 退役，后续最终 AXML 不再包含 `OperationLogActivity`；`apksigner verify` 的 v1/v2/v3 均为 true。
- vivo X21A（`b2a4da1c`）已成功覆盖安装本轮 APK：modern 开关两条入口、附加功能页、关于页、默认桌面系统页往返均已实测；通知使用权、电池优化、开关持久化及杀进程恢复仍未完成，不得将阶段 2 标为完成。

---

## 7. 兼容目标定义

| 维度 | 目标 |
|---|---|
| Android | 6, 8, 9, 10, 11, 12, 13, 14, 15, 16 |
| ROM | AOSP/Pixel, ColorOS, OriginOS, HyperOS, One UI, 摩托罗拉/联想, 华为可测系统 |
| 导航 | 三键、虚拟键、手势、预测性返回（API 允许时） |
| 设备 | 1080P/2K；60–144Hz；刘海/挖孔；多窗口尽力 |
| 数据 | 覆盖安装保留桌面布局与设置 |
| 能力降级 | 私有 Smartisan 服务缺失 → 明确 UI 提示，不崩溃 |

---

## 8. 风险分级

| 级 | 含义 | 示例 |
|---|---|---|
| R0 | 丢数据/坏库 | 宫格迁移错误、favorites 手写 SQL |
| R1 | 桌面不可用 | 主题消息错链、冷重载 task 被清 |
| R2 | 设置不可用可回退 | 单页 crash、legacy 开关可救 |
| R3 | 体验差异 | 动画、Insets、文案 |
| R4 | 文档/日志 | 状态不同步 |

任何 R0/R1 改动必须真机通过才标 DEVICE_VERIFIED。

---

## 9. 回退原则

1. **功能开关回退**：`settings_modern_ui_enabled=false` 立即回 legacy Host。  
2. **Git 回退**：按阶段 commit；禁止把 4～8 揉成一个不可逆 commit。  
3. **数据回退**：宫格迁移前快照 pages/items；失败不关过渡装成功。  
4. **不**用 `git push --force` 或 `reset --hard` 清用户工作区。  
5. legacy Host 在 modern 默认开启后 **至少再保留一个稳定版本**。

---

## 10. 文档更新规则

| 变更 | 更新 |
|---|---|
| 阶段状态变化 | 本文状态表 + DEVELOPMENT_LOG 当日记录 |
| 架构边界变化 | SETTINGS_ARCHITECTURE.md |
| 某设置项链变化 | ORIGINAL_SETTINGS_BEHAVIOR_MATRIX.md 对应节 |
| 长期稳定结论 | MEMORY.md（不写每日流水） |
| 构建/Manifest | BUILD_GUIDE.md |

禁止把每日 logcat 粘贴进三份专项文档正文。

---

# 阶段 0：现状审计与原版行为映射

### 1. 阶段目标

在不修改运行代码的前提下，弄清每个设置项的当前路径与原版路径，输出可指导阶段 1 的导航图、存储表、接收表、偏差表与 UNKNOWN 清单。

### 2. 为什么需要此阶段

上一版方案只有阶段名，无法施工。Host 16568 行若无映射就拆分，必然破坏主题时序、宫格迁移与冷重载。

### 3. 前置条件

- 工作区干净或已记录用户改动（本基线满足）
- 可读 `launcher/`、`clean_launcher/`、`settings-100`、maintained
- 已读 AGENTS/MEMORY/DEVELOPMENT_LOG/LAUNCHER 专项

### 4. 本阶段不处理什么

- 任何 Java/Smali/资源/Manifest 修改
- 构建 APK
- 开始多 Activity 代码

### 5. 原版参考代码

- `build/decompiled_theme_check/com.android.settings-100/smali/com/android/settings/AppIconsSettingsFragment.smali`
- `LauncherPreview*`（settings-100）
- `clean_launcher/smali/com/smartisanos/launcher/theme/ChangeThemeHandler*.smali`
- `clean_launcher` 中 `N.smali`/`F.smali`/`Constants.smali`/`ConfirmPasswordActivity*`
- ORIGINAL_BEHAVIOR_REFERENCE 宫格与 update_icon 节

### 6. maintained 参考代码

- `smali/com/smartisanos/home/settings/view/SettingMainActivity.smali`
- `AdditionalFeaturesActivity`、`AppIconsSettingsActivity`、`ProfileAppsSettingsActivity`
- `ThemeChooserActivity`、`AboutUsActivity`、`PageFlipAnimChooser`、`BaseActivity`
- `AndroidManifest.xml` Activity 列表与 anim 资源

### 7. 当前项目入口

- 桌面设置图标 → `ThemeChooserActivity`（Aa 等处组件名）
- `ThemeChooserActivity.onCreate/onNewIntent` → `Host.show`
- `Host.bindPage` 全部 click
- `Host.setSettingsContentView` / `bindBackTitle`
- `build.bat` classes2.dex 与 maintained 资源步骤

### 8. 计划新增文件

- 本三份文档（本轮已创建）
- 可选：`docs/development/settings_audit/` 日志摘录（阶段 0 补基线时）

### 9. 计划修改文件

- 仅文档；`docs/INDEX.md` 索引

### 10. 详细实施步骤

1. 记录 git 基线（分支/HEAD/status）写入文档。  
2. 统计 Host 行数、public/private static、show 方法列表。  
3. 从 `ThemeChooserActivity` 画出页面导航图。  
4. 对每个 show 方法记录 layout 名、返回目标、是否 finish。  
5. 建立 SharedPreferences/Settings key 表（文件名、默认、读写、commit、重载）。  
6. 对每个产品设置项查原版 Settings 类/方法/键/Provider/广播。  
7. 查原版 Launcher 接收类/线程/是否 DB Worker/是否主题/是否 ActiveIcon。  
8. 建立偏差表：重实现、反射、延迟、杀进程、直接改库。  
9. 对照 maintained Activity 与 XML 命名，标记可复用 UI。  
10. 采集基线 logcat 场景（见下“真机”）；无设备则标记待补。  
11. 所有无法确认项写 UNKNOWN + 搜索路径。  
12. 更新矩阵状态；阶段 0 出口检查清单打勾。  
13. 用户审阅通过前不进入阶段 1 代码。  
14. 将 Host 30 项审计表写入本文附录 A（本轮已含摘要）。  

### 11. 页面和数据流

```text
用户点击桌面设置
 → ThemeChooserActivity
 → Host.show → setting_main
 → 用户操作 → prefs/Settings/RedirectIconDB/Bridge读
 → 可能 ColdReload / 主题消息 / 系统 Intent
 → 左上角 show(home) 或系统 back finish
```

### 12. Android 版本兼容

本阶段只记录差异：API23 WRITE_SETTINGS、API26+ PIN、API29+ Role HOME、API33+ 通知权限等，不改代码。

### 13. ROM 兼容和降级

记录各 ROM 上默认桌面 Intent、通知使用权、分身 userId 差异为矩阵输入。

### 14. 数据兼容

禁止迁移脚本；只快照 key 列表，保证后续不改名除非有迁移函数。

### 15. 日志要求

基线场景标签建议：

`SETTINGS_OPEN_MAIN`、`SETTINGS_OPEN_SUB`、`SETTINGS_BACK_TITLE`、`SETTINGS_BACK_SYSTEM`、`THEME_APPLY`、`GRID_SWITCH`、`ICON_SIZE_CHANGE`、`PERMISSION_RETURN`

### 16. 构建验证

不构建。验证文档完整性：三文件存在、INDEX 已链、矩阵覆盖清单。

### 17. 真机测试步骤

1. 打开设置首页  
2. 进二级/三级  
3. 左上角返回、虚拟返回、手势返回  
4. 权限页返回、图片选择器返回  
5. 主题应用、图标大小、12/20  
6. 保存 logcat  

无设备：步骤标记 PENDING，不阻断文档审阅，但阻断阶段 6/4 的 DEVICE_VERIFIED。

### 18. 回归测试

N/A（无代码）。检查文档与 DEVELOPMENT_LOG 顶部结论无冲突。

### 19. 风险

1. UNKNOWN 过多导致阶段 1 猜实现（R1）  
2. 把废弃方案当现行（R1）  
3. 忽略 Host 被 smali 大量反向调用，清理时误删（R1）  

### 20. 回退方案

删除/回退文档 git 版本即可；无运行影响。

### 21. 完成条件

- [x] 设置项进入矩阵（主体）  
- [x] 当前页面导航图  
- [x] 原版入口有证据或 UNKNOWN  
- [x] 未改运行代码  
- [ ] 基线真机日志齐（已采 legacy 入口/系统返回；其余场景待补）
- [ ] 双击锁屏等 UNKNOWN 关闭或明确不做  

### 22. 进入下一阶段条件

用户审阅通过本方案；阶段 0 剩余 UNKNOWN 有负责人与确认方法；确认阶段 1 类名/包路径无异议。

---

# 阶段 1：现代多 Activity 基础设施

### 1. 阶段目标

建立新设置系统的 Activity 基础与路由，**不**迁移核心桌面功能；默认仍走 legacy UI。

### 2. 为什么需要此阶段

没有 Base/Router/开关，后续每页迁移都会重复造窗口与 Manifest 错误。

### 3. 前置条件

- 阶段 0 文档可指导施工  
- 用户确认包名 `com.smartisanos.launcher.settings`  
- 理解 `build.bat`：javac → d8 → **classes2.dex**；二进制 Manifest 注入  

### 4. 本阶段不处理什么

宫格、主题业务、图标 DB、动态天气、分身、隐私、targetSdk。

### 5. 原版参考代码

原版 Settings 多 Activity 返回与 `taskAffinity`；Launcher 侧仅确认设置入口组件名不变或可路由。

### 6. maintained 参考代码

- `BaseActivity.smali`：标题、返回、动画  
- `SettingMainActivity`、`AboutUsActivity`  
- anim：`push_left_in/out` 等  

### 7. 当前项目入口

- `ThemeChooserActivity`  
- `Host.show` / `tuneWindow`  
- `build.bat` 第 10 步 Java 编译  
- Manifest 中 ThemeChooser 声明  

### 8. 计划新增文件

```text
launcher/tools/java/com/smartisanos/launcher/settings/BaseSettingsActivity.java
launcher/tools/java/com/smartisanos/launcher/settings/SettingsMainActivity.java
launcher/tools/java/com/smartisanos/launcher/settings/SettingsRouter.java
launcher/tools/java/com/smartisanos/launcher/settings/OriginalSettingsBridge.java  // 空壳+只读探测
launcher/tools/java/com/smartisanos/launcher/settings/SettingsPlatformCompat.java // 空壳
launcher/tools/java/com/smartisanos/launcher/settings/SettingsApplyResult.java
launcher/tools/java/com/smartisanos/launcher/settings/SettingsUiFlags.java
launcher/tools/java/com/smartisanos/launcher/settings/AboutActivity.java
```

### 9. 计划修改文件

- `launcher/AndroidManifest.xml` + **二进制** `launcher/original/AndroidManifest.xml`  
- `ThemeChooserActivity.smali` 或 Host.show 入口：读取 modern 开关后 Router  
- 可选：极小 Host 改动挂开关（默认 false）  

### 10. 详细实施步骤

1. 读 `build.bat` 确认 java_sources 收集规则，新文件自动进列表。  
2. 确认 d8 输出注入为 `classes2.dex`。  
3. 确认 maintained 资源仍经 assets APK，`inflate` 可用。  
4. 按 BUILD_GUIDE 写入二进制 Manifest 新 Activity（portrait、taskAffinity 与现设置一致、exported 策略：主入口按桌面调用需要）。  
5. 实现 `BaseSettingsActivity`：无标题 theme、状态栏/导航栏与现 `tuneWindow` 对齐、标题绑定、左上角 `onBackPressed`、统一 enter/exit anim、`onSaveInstanceState` 基础、不拦 KEYCODE_BACK。  
6. 实现 `SettingsMainActivity`：仅 `setting_main` 展示与跳转绑定；复杂操作仍 start legacy 或 no-op。  
7. 实现 `SettingsRouter`：`MAIN|THEME|SEARCH|UPDATE_INSTALL|LEGACY`。  
8. `SettingsUiFlags`：`settings_modern_ui_enabled` 默认 **false**。  
9. 桌面设置点击：若 modern 开 → Main；否则 ThemeChooser+Host。  
10. 迁移 **关于我们** 为独立 Activity（只读）；操作日志不是原版功能，保持移除。
11. 验证返回栈：桌面→主→关于→返回主→返回桌面。  
12. modern 关时全量旧 UI 无回归。  
13. `aapt2 dump xmltree` 确认组件。  
14. 构建签名安装。  

### 11. 页面和数据流

```text
桌面 → Router
  modern? → SettingsMainActivity → AboutActivity
  else    → ThemeChooserActivity → Host.show
```

### 12. Android 版本兼容

- 不引入 AndroidX 强制依赖（当前工程无 AndroidX 设置模块）  
- Activity 动画 API 用支持库已有或平台 `overridePendingTransition`  
- API21+ 状态栏颜色与现 Host 一致  

### 13. ROM 兼容和降级

- 窗口 flags 失败 catch 后仍可显示内容  
- 动画资源缺失时 0 动画，不崩溃  

### 14. 数据兼容

- 不写新业务 key；仅 UI flags prefs  
- 关于页只读 versionName  

### 15. 日志要求

`SETTINGS_ROUTER target=... modern=...`  
`SETTINGS_ACTIVITY_CREATE name=...`  
`SETTINGS_ACTIVITY_FINISH name=...`  

### 16. 构建验证

```powershell
.\build.bat
apksigner verify --verbose build\launcher-signed.apk
aapt2 dump badging build\launcher-signed.apk
aapt2 dump xmltree build\launcher-signed.apk AndroidManifest.xml
```

确认 classes2.dex 含新类（`dexdump`/`jadx` 可选）。

### 17. 真机测试步骤

1. 默认 modern=false：旧设置全功能抽查  
2. 开发开关 modern=true：打开新首页  
3. 关于/日志进出与系统返回  
4. 旋转锁定竖屏  
5. 进程回收后从最近任务恢复  

### 18. 回归测试

桌面启动、主题入口图标、搜索 extra、更新安装 Intent 不误进新页闪旧页。

### 19. 风险

1. 二进制 Manifest 漏改导致安装失败（R1）  
2. taskAffinity 导致设置与桌面 task 错乱（R1）  
3. 资源 inflate 包名仍 `com.smartisanos.home` 需沿用现 SettingsResourceContext（R2）  

### 20. 回退方案

flags=false；Manifest 可保留未导出 Activity；或 git 回退阶段 1 commit。

### 21. 完成条件

- [ ] 新首页可独立打开
- [ ] 简单二级系统返回正确（关于）
- [ ] 旧 UI 一键回退（`settings_modern_ui_enabled=false` → 走 ThemeChooserActivity）
- [ ] 包名/DB/核心不变
- [x] BUILD_VERIFIED（2026-07-22；build、AXML、v1/v2/v3 签名通过）
- [ ] DEVICE_VERIFIED

### 22. 进入下一阶段条件

阶段 1 的全部完成条件满足并记录到 `DEVELOPMENT_LOG.md` 后，才可开始阶段 2；首先迁移的简单页面组需由用户确认（建议：附加功能/关于/角标开关）。

---

# 阶段 2：设置首页和简单页面迁移

### 1. 阶段目标

迁移不直接修改桌面数据库与渲染核心的页面到多 Activity。

### 2. 为什么需要此阶段

先搬低风险页验证导航、权限返回、滚动，再动主题/宫格。

### 3. 前置条件

阶段 1 完成；maintained XML 与现 Host 绑定 id 对照表。

### 4. 本阶段不处理什么

主题 apply、宫格、RedirectIcon 写、ActiveIcon、分身写库、隐私哈希格式变更。

### 5. 原版参考代码

原版 Settings 中 about/默认应用相关；非必须逐行。

### 6. maintained 参考代码

`AdditionalFeaturesActivity`、`AboutUsActivity`、`setting_ocd_options` 布局。

### 7. 当前项目入口

`Host.bindPage`、`showOcdOptionsPage`、`showAboutPage`、`checkForUpdates`、`openDefaultHomeSettings`、`openBatteryOptimizationSettings`、角标开关 bind。

### 8. 计划新增文件

```text
.../AdditionalFeaturesActivity.java
.../GestureSettingsActivity.java      # 或并入 Additional
.../BadgeSettingsActivity.java        # 或并入 Additional
.../UpdateSettingsActivity.java       # 可选
# DefaultHome 可为方法不建 Activity
```

### 9. 计划修改文件

- SettingsMainActivity 绑定  
- Host 对应 show 方法改为委托或保留 legacy 双路径  
- BadgeBridge 调用改为 Compat 门面（薄封装）  

### 10. 详细实施步骤

1. 列出简单页与 layout：`setting_about_us`、`setting_ocd_options` 等。  
2. 不重新设计 UI，只搬绑定逻辑。  
3. Activity 只展示与跳转。  
4. 开关读写继续现有 key 与 `LauncherSettingBridge.readBool` 优先级。  
5. 外部系统设置统一 `SettingsPlatformCompat`。  
6. 权限/角色返回后 `onResume` 只刷新本页。  
7. **禁止** `Host.show` 整页重建当返回。  
8. 保存 ScrollView 位置。  
9. 检查更新：网络与下载逻辑可暂调现有 Host 静态方法，UI 在新 Activity。  
10. 电池优化 Intent 失败 → 应用详情。  
11. 每迁一页：构建→安装→测返回。  
12. 确认无其它入口调用后再删 Host 页代码。  
13. 一次只删一个页面组。  
14. 角标：未授权不写开；与 `BadgeBridge` 一致。  

### 11. 页面和数据流

```text
Main → AdditionalFeatures → 系统通知使用权 → 返回 Additional onResume 同步开关
Main → About
Main → 默认桌面系统页 → 返回 Main 刷新
```

### 12. Android 版本兼容

- 6–12：`startActivityForResult`  
- 未引入 AndroidX 不强制 Activity Result API  
- 13+ 通知权限仅当真正需要时  
- 返回手势交系统栈  

### 13. ROM 兼容和降级

- ActivityNotFoundException → Toast 说明  
- 厂商电池页失败 → `APPLICATION_DETAILS_SETTINGS`  

### 14. 数据兼容

key 不改名；migrateSearchGestureSetting 逻辑保留。

### 15. 日志要求

`SETTINGS_PAGE_OPEN`、`SETTINGS_TOGGLE key= value=`、`SETTINGS_EXTERNAL_INTENT action=`

### 16. 构建验证

同阶段 1；另测 modern 开关两种路径。

### 17. 真机测试步骤

每页：进入、切换开关、系统返回、左上角、杀进程恢复、通知使用权往返。

### 18. 回归测试

legacy 路径同页行为一致；桌面角标/手势开关读值一致。

### 19. 风险

1. 开关写路径与桌面读路径优先级不一致（R2）  
2. 角标未授权却写入（R2）  
3. 更新安装 Intent 仍指向 ThemeChooser 需 Router 兼容（R2）  

### 20. 回退方案

modern 关；恢复 Host show 方法（git）。

### 21. 完成条件

简单页脱离 setContentView 导航；权限返回位置正确；三返回一致；桌面核心不变。

### 22. 进入下一阶段条件

阶段 2 的全部完成条件满足并记录到 `DEVELOPMENT_LOG.md` 后，矩阵中相关 Bridge 方法才可进入实施；本计划不记录实施结果。

---


# 阶段 3：OriginalSettingsBridge 正式落地

### 1. 阶段目标

建立 UI 与原版 Launcher 之间唯一可审计调用入口。

### 2. 为什么需要此阶段

没有 Bridge，阶段 4–8 会再次把业务写回 Activity。

### 3. 前置条件

矩阵中每项有原版入口或明确移植入口；阶段 1 空壳已存在。

### 4. 本阶段不处理什么

不改 UI 视觉；不删 Host；不升 targetSdk。

### 5. 原版参考代码

ChangeThemeHandler、Constants、N、F、DatabaseUpdater、ActiveIcon 相关 smali 入口表（阶段 0 固定）。

### 6. maintained 参考代码

仅对照参数语义，不复制杀进程。

### 7. 当前项目入口

Host 中 `applyTheme`、`migrateLauncherModeAndRestart`、`applyDynamicWeatherCalendarSetting`、`maybeApplyLauncherIconSize`、RedirectIcon 更新等。

### 8. 计划新增文件

```text
OriginalSettingsBridge.java  (分域方法)
可能: bridge/GridBridge.java 等内部拆分
最小 smali wrapper（仅当 Java 无法访问）
```

### 9. 计划修改文件

- Host 逐步改为调 Bridge（可先双写日志对比）  
- 新 Activity 只调 Bridge  

### 10. 详细实施步骤

1. 按域分组方法：grid、iconSize、theme、wallpaper、appIcons、activeIcons、profile、privacy、badges。  
2. 每方法定义：入参、范围、原版入口、线程、结果、是否重载、是否 finish 设置、是否要权限。  
3. 优先直接调用可访问 Java/已有 Coordinator。  
4. 需 smali：最小 wrapper 只转发。  
5. 禁止反射猜多个混淆名。  
6. 禁止固定 delay 当成功。  
7. 统一返回 `SettingsApplyResult`。  
8. 日志：`ORIGINAL_SETTINGS_BRIDGE domain op args result entry`。  
9. 不记密码明文与敏感 URI 全路径。  
10. 为每个方法写矩阵链接注释。  
11. 单元级：同值 NO_CHANGE 测试（可仪器）。  
12. 对比 Host 旧路径日志字段。  
13. 未找到原版依据的方法不得标可上线。  
14. Code review 检查无 UI 引用。  

### 11. 页面和数据流

```text
UI 事件 → Bridge.method → 原版入口/Coordinator → Result → UI 表现
```

### 12. Android 版本兼容

Bridge 内部分支只处理 API 差异写配置；不替代 Compat。

### 13. ROM 兼容和降级

写 Settings.System 失败时降级 prefs（与现 Host 策略一致）并打日志。

### 14. 数据兼容

读写 key 与现网一致；禁止新平行 key。

### 15. 日志要求

见上；失败必须 `result=FAILED error=`。

### 16. 构建验证

编译；可选调试调用 NO_CHANGE 路径。

### 17. 真机测试步骤

用临时调试入口各调一次只读与同值写；确认无桌面破坏。

### 18. 回归测试

桌面冷启动、已有设置值读取。

### 19. 风险

1. Wrapper 签名错误导致 VerifyError（R1）  
2. 双路径不一致（R2）  
3. 日志泄露隐私（R2）  

### 20. 回退方案

Activity 改回 Host 方法；Bridge 保留但不用。

### 21. 完成条件

后续页不直接碰 DB/PageView/SMEngine；每方法有矩阵依据。

### 22. 进入下一阶段条件

Bridge 网格/主题/图标/动态/分身/隐私方法签名冻结。

---

# 阶段 4：主题和壁纸页面迁移

### 1. 阶段目标

主题/壁纸 UI 多 Activity 化；**完整保留**原版主题执行链。

### 2. 为什么需要此阶段

主题是用户高频且最易破坏动画时序的路径。

### 3. 前置条件

阶段 3 `applyTheme`/`setTransparentOverlay`/`setWallpaper` 已定义。

### 4. 本阶段不处理什么

宫格、图标包、targetSdk、重写 SMEngine 主题动画。

### 5. 原版参考代码

`ChangeThemeHandler$RequireChangeFrom.SETTING`、ThemeItem 时序、`J.onResume` 消费消息；透明主题键规则。

### 6. maintained 参考代码

`ThemeChooserActivity` 列表与预览加载。

### 7. 当前项目入口

`showThemePage`、`showThemeItemPage`、`applyTheme`、`applyThemeViaOriginalStack`、`showWallpaperPage`、`onWallpaperPicked`。

### 8. 计划新增文件

`ThemeSettingsActivity`、`ThemeDetailActivity`、`WallpaperSettingsActivity`。

### 9. 计划修改文件

Router THEME；Host 主题方法委托；可能启用/对齐 `ThemeItemActivity`（若用独立 Activity 则评估现 smali）。

### 10. 详细实施步骤

1. ThemeSettings 展示本地/在线列表（复用 Host 列表数据逻辑迁出）。  
2. 点击进 ThemeDetail，Intent 传 id/pkg/name。  
3. 用户应用 → Bridge.applyTheme。  
4. 普通/毛玻璃：原版消息→截图→finish 设置→HOME→J.onResume→动画。  
5. **不**冷重载、**不**杀进程、**不**重复发消息。  
6. 透明：独立识别；既有冷重载；不进普通消息链。  
7. 从透明切普通：先清 `launcher_grid_theme` 再普通链。  
8. 壁纸：系统选图 Result 留在壁纸页；Bridge 持久化。  
9. 无原版壁纸服务时 WallpaperManager。  
10. 快速连点防重入（现有 guard 迁 Bridge/UI）。  
11. 构建验证。  
12. 真机：普通/毛玻璃/透明/互切。  
13. 系统栏透明保持。  
14. 数据不丢。  

### 11. 页面和数据流

```text
Main→ThemeSettings→ThemeDetail→Bridge.applyTheme→原版链→桌面动画
Main→Wallpaper→picker→Bridge.persist→refresh
```

### 12. Android 版本兼容

图片 URI 权限；WRITE_SETTINGS 镜像失败不影响 prefs。

### 13. ROM 兼容和降级

主题包未安装 → 引导下载/安装；失败 FAILED。

### 14. 数据兼容

`launcher_theme` / `launcher_grid_theme` / previous theme 规则不变。

### 15. 日志要求

`THEME_APPLY_REQUEST`、`THEME_APPLY_RESULT`、`THEME_TRANSPARENT_PATH`、`WALLPAPER_PICKED`

### 16. 构建验证

build + 签名 + 安装；可选主题包安装。

### 17. 真机测试步骤

普通、毛玻璃、透明、透明↔普通、连点、返回、HOME、系统栏、动画、杀进程。

### 18. 回归测试

四指滑主题（若启用）、解锁中主题、文件夹打开时主题。

### 19. 风险

1. 误入冷重载黑场（R1）  
2. 透明与普通队列交叉（R1）  
3. 设置 task 未 finish 导致动画不播（R1）  

### 20. 回退方案

modern 主题入口改回 Host.showThemePage。

### 21. 完成条件

UI 多 Activity；原版动画在；普通不进黑场；透明不进普通链。

### 22. 进入下一阶段条件

主题 DEVICE_VERIFIED 或已知问题登记且不阻塞图标迁移。

---

# 阶段 5：应用图标系统迁移

### 1. 阶段目标

应用图标列表、替换、图标包、改进版、相册、图标大小 UI 迁移；数据仍走 RedirectIconDB 与现缓存。

### 2. 为什么需要此阶段

图标页是 Host 最大 UI 块之一，且与桌面显示强相关。

### 3. 前置条件

Bridge 图标方法就绪；IconPackManager 可被非反射调用。

### 4. 本阶段不处理什么

新建图标 DB；按应用名匹配；全量清缓存；恢复 Alarm+kill 图标大小。

### 5. 原版参考代码

`AppIconsSettingsFragment`；Redirect 相关。

### 6. maintained 参考代码

`AppIconsSettingsActivity`、`IconPackChoiceSupport`。

### 7. 当前项目入口

`showIconPage`、`showIconSizeDialog`、替换页、`onActivityResult` 53026、`RedirectIconDB`。

### 8. 计划新增文件

`AppIconsSettingsActivity`、`ReplaceIconActivity`；图标包/大小按需。

### 9. 计划修改文件

Host 图标 UI 删除前双路径；IconManager 列表查询线程。

### 10. 详细实施步骤

1. AppIcons 后台加载列表。  
2. UI 不创建 Launcher Model。  
3. 点击 → ReplaceIcon Intent（package/component/user/scroll）。  
4. 候选：系统/图标包/改进版/相册。  
5. 确认 → Bridge → RedirectIconDB + 局部 applyIconChanges。  
6. 返回恢复 scroll；不整桌刷新。  
7. 图标大小 → commit 后 ICON_SIZE token 冷重载。  
8. 同值 NO_CHANGE。  
9. 相册 content URI + persistable 尽力。  
10. 关闭改进版不重建分组（保持现行为）。  
11. 覆盖安装保留选择。  
12. 构建与真机。  
13. 分身 user 图标不串。  
14. 禁止文件路径唯一依赖。  

### 11. 页面和数据流

```text
AppIcons → ReplaceIcon → Bridge.setCustomIcon → RedirectIconDB → 局部刷新
AppIcons → setIconSize → RELOAD_REQUIRED
```

### 12. Android 版本兼容

相册权限/照片选择器 API 差异用 Compat。

### 13. ROM 兼容和降级

无图标包 → 仅系统与改进版；改进版网失败用原图。

### 14. 数据兼容

RedirectIcon 表结构不变；online_icon_cache_v3 不变（升版另任务）。

### 15. 日志要求

`ICON_REPLACE pkg=`、`ICON_SIZE_CHANGE old= new=`、`ICON_SIZE_UNCHANGED_SKIP`

### 16. 构建验证

build；安装；抽查桌面图标。

### 17. 真机测试步骤

列表滚动、替换、相册、图标包、大小 50/100/150、同值、覆盖安装。

### 18. 回归测试

动态天气图标底板、分身角标、NEW 标记。

### 19. 风险

1. 全量刷新卡顿（R2）  
2. user 串包（R1）  
3. 误调旧 kill 路径（R1）  

### 20. 回退方案

legacy 图标页；DB 已写自定义图标仍有效。

### 21. 完成条件

返回/滚动/替换/图标包/大小/覆盖安装通过。

### 22. 进入下一阶段条件

图标 DEVICE_VERIFIED。

---

# 阶段 6：12/20 宫格迁移

### 1. 阶段目标

宫格 UI 经 Bridge 调用原版迁移 + 既有冷重载；产品只暴露 12 与 20。

### 2. 为什么需要此阶段

宫格是 R0 数据风险最高路径。

### 3. 前置条件

LAUNCHER 专项阶段 3/4 结论；Bridge.switchGrid；迁移前后备份工具。

### 4. 本阶段不处理什么

自研拆分算法；9/16 选项；Activity.recreate 当迁移。

### 5. 原版参考代码

LauncherPreview 回调；`N.d`；`F.i`；Constants 映射；exportprovider 语义。

### 6. maintained 参考代码

SettingMain 宫格 UI；**不**复制其进程策略。

### 7. 当前项目入口

`bindGrid`、`migrateLauncherModeAndRestart`、`LauncherColdReloadCoordinator.beginGridReload`。

### 8. 计划新增文件

可选 `GridSettingsActivity`；备份 helper。

### 9. 计划修改文件

Main 绑定；Host 宫格路径删前双路径。

### 10. 详细实施步骤

1. UI 只显示 12/20。  
2. 读真实 mode（prefs_key_launcher_mode + Constants）。  
3. 确认 → Bridge.switchGrid。  
4. 校验目标仅 12/20。  
5. 写原版配置。  
6. Worker：`N.d` → `F.i`。  
7. 等待迁移完成条件。  
8. beginGridReload token。  
9. 禁止 UI 线程搬 ItemInfo。  
10. 12→20 保序保格；20→12 原版拆分。  
11. 迁移前备份 pages/items/mode。  
12. 迁移后计数对比。  
13. 失败：不关过渡、不额外杀进程、留日志。  
14. 连续切换压力测试。  

### 11. 页面和数据流

```text
UI confirm → Bridge.switchGrid → prefs+N.d+F.i → ColdReload → 新进程首帧
```

### 12. Android 版本兼容

多进程 reload 在各 API 的 task 行为；禁止 CLEAR_TASK 问题再现。

### 13. ROM 兼容和降级

Oplus 进程附着问题按 DEVELOPMENT_LOG 条件收敛。

### 14. 数据兼容

覆盖安装保留；失败可手工恢复备份（开发期）。

### 15. 日志要求

`GRID_SWITCH_REQUEST`、`GRID_MIGRATE_BEGIN/END`、`GRID_RELOAD_TOKEN`、`GRID_MIGRATE_FAILED`

### 16. 构建验证

build；安装。

### 17. 真机测试步骤

12→20、20→12、连续、文件夹、隐藏/加密页、Dock、数量核对。

### 18. 回归测试

主题、图标大小、动态图标与宫格组合。

### 19. 风险

1. 丢图标（R0）  
2. task 清过渡页（R1）  
3. 映射 20→内部 9 错误（R0）  

### 20. 回退方案

失败保留旧进程策略；git 回退；数据备份恢复。

### 21. 完成条件

双向真机；连续切换；无第二套算法；无丢数据。

### 22. 进入下一阶段条件

宫格 DEVICE_VERIFIED。

---

# 阶段 7：动态天气、日历和定位

### 1. 阶段目标

动态开关/定位/城市 UI 迁移；ActiveIcon 仍为原版节点。

### 2. 为什么需要此阶段

权限与重载耦合，单 Activity 返回易错。

### 3. 前置条件

Bridge 动态方法；WeatherBridge 读开关；冷重载 ACTIVE_ICON 原因。

### 4. 本阶段不处理什么

Room 天气库；静态图冒充动态；HOME 恢复申请定位。

### 5. 原版参考代码

AppIconsSettingsFragment `update_icon` 语义；ActiveIcon/WeatherView/CalendarView。

### 6. maintained 参考代码

无完整等价。

### 7. 当前项目入口

`showDynamicWeatherPage`、`onRequestPermissionsResult` 2414、`applyDynamicWeatherCalendarSetting`。

### 8. 计划新增文件

`DynamicIconSettingsActivity`、可选 `WeatherLocationSettingsActivity`。

### 9. 计划修改文件

权限请求迁 Activity；Host 委托。

### 10. 详细实施步骤

1. 联合开关 UI。  
2. 开启能力检测。  
3. 需定位则 requestPermission。  
4. 拒绝不写开。  
5. 永久拒绝给应用详情。  
6. 手动城市不强制定位。  
7. commit 成功后 Bridge。  
8. ACTIVE_ICON_SETTINGS_CHANGE 冷重载。  
9. 不用旧 update_icon 作正常路径。  
10. 新进程读配置初始化 ActiveIcon。  
11. 借鉴 Weather-Revived：权限/Insets/错误态。  
12. 跨日日历、天气 TTL 保持。  
13. 阴影只读 Constants。  
14. 真机横竖（Launcher 竖屏）与连续开关。  

### 11. 页面和数据流

```text
Toggle on → permission? → commit → Bridge → ColdReload → ActiveIcon
```

### 12. Android 版本兼容

定位权限模型；后台定位不在设置页申请。

### 13. ROM 兼容和降级

无定位 → 手动城市或 UNSUPPORTED 提示。

### 14. 数据兼容

单 key 联合开关不变。

### 15. 日志要求

`DYNAMIC_ICON_PERMISSION_RESULT`、`DYNAMIC_ICON_RELOAD_REQUESTED`（现有可延续）

### 16. 构建验证

build；Manifest 已有定位权限声明确认。

### 17. 真机测试步骤

授权开、拒绝、永久拒绝、城市、刷新、跨日、重载后节点。

### 18. 回归测试

改进版图标与动态并存；宫格切换后动态。

### 19. 风险

1. 拒绝仍开启（R2）  
2. 丢失原版阴影/节点（R1）  
3. HOME 误申请权限（R2）  

### 20. 回退方案

legacy 动态页；key 已写则桌面行为保持。

### 21. 完成条件

权限流正确；城市；跨日；节点动画阴影在。

### 22. 进入下一阶段条件

动态 DEVICE_VERIFIED。

---

# 阶段 8：应用分身和隐私密码

### 1. 阶段目标

分身列表与隐私密码多 Activity；公开 API 优先；无明文密码。

### 2. 为什么需要此阶段

涉及 UserHandle 与认证门，错误会导致隐私绕过或分身串。

### 3. 前置条件

Bridge profile/privacy 方法；ConfirmPasswordActivity 审计。

### 4. 本阶段不处理什么

伪造分身 user；改老用户密码格式无迁移；删除加密板块数据。

### 5. 原版参考代码

ConfirmPasswordActivity；加密板块 DB 字段；原版密码服务（若有）。

### 6. maintained 参考代码

`ProfileAppsSettingsActivity`。

### 7. 当前项目入口

`showProfileAppsPage`、`updateProfileShortcut`、`showSettingsPagePassword*`、`launcher_page_lock`。

### 8. 计划新增文件

`ProfileAppsSettingsActivity`、`PrivacySettingsActivity`。

### 9. 计划修改文件

Host 密码 pad 迁 UI；分身启发式收敛到 Compat。

### 10. 详细实施步骤

**分身：**  
1. UserManager + LauncherApps + UserHandle。  
2. 审计厂商检测。  
3. 合并扫描。  
4. 保留真实 UserHandle。  
5. 点击/图标按 component+user。  
6. 不支持则展示状态。  
7. 不伪造 user。  
8. 缺 API 不崩。  

**隐私：**  
9. 审计 ConfirmPasswordActivity。  
10. 审计加密板块字段。  
11. 保留显示/隐藏语义。  
12. 有私有服务走原版。  
13. 无则本地 hash（现有）。  
14. 无明文。  
15. 盐/版本字段明确。  
16. 不擅自改老格式。  
17. 错误动画/触觉保持。  
18. 系统返回不绕过认证门。  

### 11. 页面和数据流

```text
Profile toggle → Bridge → shortcut install/uninstall → 桌面
Privacy set/verify → hash prefs → 门控加密板块
```

### 12. Android 版本兼容

多用户 API 差异；串行 profile。

### 13. ROM 兼容和降级

双开方案各异；检测失败 DEGRADED 列表空+说明。

### 14. 数据兼容

password_hash 格式不变；profile disabled key 不变。

### 15. 日志要求

`PROFILE_SHORTCUT`、`PRIVACY_AUTH_RESULT ok=`（无密码）

### 16. 构建验证

build。

### 17. 真机测试步骤

有分身机型开关与启动；无分身机型提示；设密/改密/错误/返回绕过尝试。

### 18. 回归测试

搜索打开加密应用；桌面加密页。

### 19. 风险

1. 返回绕过（R0 隐私）  
2. 分身进主用户（R1）  
3. 快捷方式残留（R2）  

### 20. 回退方案

legacy 页；数据保留。

### 21. 完成条件

多用户不混；分身点击对；隐私逐级返回；无明文；缺服务不崩。

### 22. 进入下一阶段条件

阶段 8 DEVICE_VERIFIED。

---

# 阶段 9：系统能力兼容集中化

### 1. 阶段目标

整理平台能力到 Compat 模块，不新建重复 Manager/Service。

### 2. 为什么需要此阶段

默认桌面、PIN、NLS、安装、面板分散，设置与桌面双份 Intent。

### 3. 前置条件

阶段 2–8 已暴露调用点清单。

### 4. 本阶段不处理什么

重写 SmartisanInstallManager 队列；新 NLS；新 PIN 数据库。

### 5. 原版参考代码

各系统公开 API 文档级；原版私有仅降级。

### 6. maintained 参考代码

默认桌面/权限跳转。

### 7. 当前项目入口

`openDefaultHomeSettings`、`PinShortcutConfirmActivity`、`BadgeBridge`、`SmartisanInstallManager`、`SystemPanelCompat`、`ShortcutCompatBridge`。

### 8. 计划新增文件

```text
compat/DefaultHomeCompat.java
compat/ShortcutCompat.java          # 门面，复用现有
compat/NotificationAccessCompat.java
compat/PackageEventCompat.java      # 门面
compat/UserProfileCompat.java
compat/BatteryOptimizationCompat.java
compat/SystemPanelCompat.java       # 或迁移现有
compat/InsetsCompat.java
```

### 9. 计划修改文件

调用点改门面；删除 Host 重复 startAction 副本。

### 10. 详细实施步骤

1. 每模块返回 SUPPORTED/DEGRADED/UNSUPPORTED/FAILED。  
2. 默认桌面：API29+ Role → 旧设置页 → 厂商 → 详情。  
3. PIN：API26+ PinItemRequest 校验来源与类型；旧 INSTALL_SHORTCUT 保留。  
4. 角标：NLS；未授权不写开；撤销同步关；NEW 分离。  
5. 安装：单事件队列不变。  
6. 面板：公开能力；无私有则降级；无障碍非默认。  
7. Insets：BaseSettingsActivity 统一。  
8. 无重复 Receiver。  
9. UI 展示降级文案。  
10. 启动路径不因私有 API 缺而崩（已有启动审计延续）。  
11. 文档矩阵更新。  
12. 多 ROM 抽测。  
13. 构建。  
14. 与阶段 10 引用报告对接。  

### 11. 页面和数据流

设置/桌面 → Compat → 系统 API → 状态回 UI/Bridge。

### 12. Android 版本兼容

按模块 API 表分支。

### 13. ROM 兼容和降级

厂商 Intent 表可配置列表，失败链式回退。

### 14. 数据兼容

无新 DB。

### 15. 日志要求

`COMPAT name= status= detail=`

### 16. 构建验证

build；组件 dump。

### 17. 真机测试步骤

默认桌面、通知使用权、电池优化、PIN（微信/支付宝）、面板手势。

### 18. 回归测试

安装 NEW、卸载、分身。

### 19. 风险

1. 重复 Manager（R2）  
2. PIN accept 两次（R1）  
3. 降级静默无提示（R3）  

### 20. 回退方案

门面内调回旧静态方法。

### 21. 完成条件

能力有状态；UI 可展示；私有缺不影响启动；无重复底层。

### 22. 进入下一阶段条件

引用报告可生成；1–9 功能 DEVICE_VERIFIED。

---

# 阶段 10：清理旧设置宿主

### 1. 阶段目标

在 1–9 全部 DEVICE_VERIFIED 后，分批删除 Host 伪导航与重复逻辑。

### 2. 为什么需要此阶段

否则双 UI 永久分叉，维护成本不可接受。

### 3. 前置条件

**硬门槛**：阶段 1–9 DEVICE_VERIFIED；modern 可默认试用。

### 4. 本阶段不处理什么

一次删光 Host；格式化无关文件；删仍被 smali 调用的 public 方法。

### 5. 原版参考代码

N/A。

### 6. maintained 参考代码

N/A。

### 7. 当前项目入口

全仓库 `MaintainedLauncherSettingsHost` 引用（smali+java）。

### 8. 计划新增文件

无必须；可有 `HostLegacyFacades` 临时。

### 9. 计划修改文件

Host 拆分删除；ThemeChooserActivity 变薄路由；DEX 体积观察。

### 10. 详细实施步骤

1. 生成方法引用报告（rg）。  
2. 按页面组删除已迁 UI。  
3. 每组构建+真机。  
4. 保留桌面仍用 helper：图标 load、badge dirty、reload loading、wallpaper decode 等。  
5. helper 移小类。  
6. 删 setContentView 导航、返回 Runnable、静态 Activity 弱引用滥用、重复权限、废弃 delay/反射。  
7. 不一次删整个类。  
8. legacy fallback 稳定版本策略。  
9. fallback 移除单独确认。  
10. 检查 DEX 无用类。  
11. 不格式化无关代码。  
12. 更新架构文档 as-is。  
13. MEMORY 记“设置已多 Activity”。  
14. DEVELOPMENT_LOG 记录删除组。  

### 11. 页面和数据流

仅标准 Activity + Bridge + Compat。

### 12. Android 版本兼容

回归全版本抽测。

### 13. ROM 兼容和降级

同阶段 13 预演。

### 14. 数据兼容

无迁移。

### 15. 日志要求

删除组标记 `LEGACY_HOST_REMOVED page=`。

### 16. 构建验证

每次删除后 full build。

### 17. 真机测试步骤

全设置树走查 + 桌面核心。

### 18. 回归测试

smali 调用的 public API 冒烟。

### 19. 风险

1. 误删 smali 依赖方法（R1）  
2. 清理引入回归（R1）  
3. 过早删 fallback（R1）  

### 20. 回退方案

git 按组回退；或恢复 Host 文件。

### 21. 完成条件

ThemeChooser 不再承载全部页；Host 非超大单文件；页均标准 Activity；业务经 Bridge；平台经 Compat。

### 22. 进入下一阶段条件

清理完成 BUILD+DEVICE；可评估 11/13。

---

# 阶段 11：可选 Gradle/Kotlin 设置模块

### 1. 阶段目标

仅当 Apktool 流成为主瓶颈时，将设置 UI/Compat 抽为 library，仍打进同一 APK。

### 2. 为什么需要此阶段

可选提效；**非**功能必须。

### 3. 前置条件

设置全稳；多 ROM 过；团队确认瓶颈。

### 4. 本阶段不处理什么

迁 smali 核心；Compose；Room 替 DB；第二 APK；改签名。

### 5. 原版参考代码

N/A。

### 6. maintained 参考代码

N/A。

### 7. 当前项目入口

`build.bat` 注入链。

### 8. 计划新增文件

`settings-ui/` Gradle module 等。

### 9. 计划修改文件

`build.bat` 或复合脚本；**不**改包名。

### 10. 详细实施步骤

1. 建 library module。  
2. applicationId 不变。  
3. namespace 不冲原版。  
4. 输出 AAR/classes。  
5. build.bat 注入同一 APK。  
6. 核心仍 smali。  
7. XML/View 继续。  
8. Kotlin 可逐类。  
9. 可用 AndroidX lifecycle。  
10. 禁 Compose 重画。  
11. 禁 Room 替桌面。  
12. 禁第二 APK。  
13. 禁改签名与数据目录。  
14. 对照构建产物 badging。  

### 11. 页面和数据流

同前；仅编译系统变。

### 12. Android 版本兼容

library minSdk 与主包一致。

### 13. ROM 兼容和降级

同前。

### 14. 数据兼容

同前。

### 15. 日志要求

构建日志记录注入路径。

### 16. 构建验证

双路径构建对比 APK 内容。

### 17. 真机测试步骤

全设置冒烟。

### 18. 回归测试

桌面核心。

### 19. 风险

1. 资源 id 冲突（R1）  
2. 构建变脆（R2）  
3. 范围蔓延迁核心（R0）  

### 20. 回退方案

回 apktool+javac 流。

### 21. 完成条件

单 APK；包名/DB 不变；设置可单测编译；核心仍 smali。

### 22. 进入下一阶段条件

可选；不阻塞 12/13。

---

# 阶段 12：targetSdk 分级升级

### 1. 阶段目标

独立分支按 28→31→33→35 升级；**不**与设置功能迁移混做。

### 2. 为什么需要此阶段

高 target 改变权限/导出/后台规则，混做无法归因。

### 3. 前置条件

设置稳定或明确只测 target 差异；独立分支。

### 4. 本阶段不处理什么

功能新特性；同时改宫格算法。

### 5. 原版参考代码

N/A。

### 6. maintained 参考代码

其 target 经验仅参考。

### 7. 当前项目入口

Manifest target/min；二进制 Manifest。

### 8. 计划新增文件

专项检查清单文档。

### 9. 计划修改文件

Manifest 版本字段；必要 exported/receiver flags。

### 10. 详细实施步骤

1. 只升一个阶梯。  
2. 审计：31 exported/visibility/pending/后台；33 通知/媒体/receiver flags；34/35 FGS/隐式 Intent/edge/安装/Job。  
3. 构建。  
4. 安装。  
5. 测 Launcher。  
6. 测设置。  
7. 测主题。  
8. 测宫格。  
9. 测安装事件。  
10. 测快捷方式。  
11. 测权限。  
12. 测锁屏解锁。  
13. 多 ROM。  
14. 失败只回退该 target 阶梯。  

### 11. 页面和数据流

无业务流变更。

### 12. Android 版本兼容

本阶段主题。

### 13. ROM 兼容和降级

厂商对高 target 更严，需矩阵。

### 14. 数据兼容

覆盖安装。

### 15. 日志要求

`TARGET_SDK_STEP=n`

### 16. 构建验证

badging targetSdk 确认。

### 17. 真机测试步骤

见上 5–12。

### 18. 回归测试

全关键路径。

### 19. 风险

1. 组件不可见（R1）  
2. 后台启动失败（R1）  
3. 与功能 commit 混（R1）  

### 20. 回退方案

降回上一 target；独立 commit revert。

### 21. 完成条件

该阶梯多 ROM 通过。

### 22. 进入下一阶段条件

按阶梯迭代；全部完成后再评估更高。

---

# 阶段 13：完整兼容验证和正式切换

### 1. 阶段目标

全版本/ROM/导航/设备矩阵验证；modern UI 默认开启；legacy 保留一稳定版。

### 2. 为什么需要此阶段

未经验证不得默认 modern。

### 3. 前置条件

阶段 10 完成或 modern 与 legacy 功能等价证明；关键路径 DEVICE_VERIFIED。

### 4. 本阶段不处理什么

新功能开发；宣称 100% 全机一致。

### 5. 原版参考代码

对照有争议行为。

### 6. maintained 参考代码

体验对照可选。

### 7. 当前项目入口

`SettingsUiFlags` 默认值；发布说明。

### 8. 计划新增文件

测试矩阵表（可放 docs/development/settings_qa_matrix.md）。

### 9. 计划修改文件

默认 flags=true；README 兼容表述；MEMORY。

### 10. 详细实施步骤

1. 列 Android 6–16 测试机。  
2. 列 ROM 列表。  
3. 列导航模式。  
4. 列分辨率/刷新率/挖孔。  
5. 首次安装。  
6. 覆盖安装。  
7. 保留布局。  
8. 冷/热启动。  
9. HOME/最近任务/锁屏解锁。  
10. 设置全树。  
11. 三返回。  
12. 权限/选图返回。  
13. 进程回收/不保留活动。  
14. 宫格/主题/图标/动态/分身/隐私/角标/快捷方式/安装卸载。  
15. 崩溃率对比。  
16. DB 无丢失抽查。  
17. 未支持能力有提示。  
18. 文档状态同步。  
19. 默认 modern=true 发版。  
20. legacy 保留策略写入 MEMORY。  

### 11. 页面和数据流

生产路径仅 modern；legacy 隐藏调试。

### 12. Android 版本兼容

矩阵执行。

### 13. ROM 兼容和降级

矩阵执行。

### 14. 数据兼容

覆盖安装样本。

### 15. 日志要求

QA 用例 id + 通过/失败。

### 16. 构建验证

发布构建 badging 与签名。

### 17. 真机测试步骤

见步骤 5–14。

### 18. 回归测试

已知历史 bug 列表（主题黑场、宫格丢图标、角标未授权等）复测。

### 19. 风险

1. 默认切换后长尾 ROM（R2）  
2. 文档与真机不一致（R3）  
3. 过早删 legacy（R1）  

### 20. 回退方案

远程/发版回退 flags 默认 false 的版本；保留 legacy 一版。

### 21. 完成条件

1. modern 默认开  
2. legacy 至少一稳定版可回  
3. 崩溃率无新增  
4. DB 无丢失  
5. 多 ROM 核心路径过  
6. 未支持有降级提示  
7. 文档=真机  

### 22. 进入下一阶段条件

无；维护模式。后续仅修 bug 与可选 11/12。

---

# 附录 A：MaintainedLauncherSettingsHost 30 项审计表

| # | 项 | 位置/方法 | 职责 | UI | 原版业务 | 平台兼容 | 处置 | 依据 |
|---|---|---|---|---|---|---|---|---|
| 1 | 行数 | 文件 16568 行 | 上帝类 | 混 | 混 | 混 | 拆分至 settings 包 | 统计 |
| 2 | public static | 71 | 对外 API 含桌面回调 | 部分 | 部分 | 部分 | 引用报告后保留/迁移 | rg |
| 3 | private static | 733 | 内部实现 | 混 | 混 | 混 | 随页删除 | rg |
| 4 | showXXX | show/Theme/Icon/… | 伪页面 | 是 | 否 | 否 | 迁 Activity | 方法表 |
| 5 | setContentView | setSettingsContentView 等 | 伪栈 | 是 | 否 | 否 | 删除（阶段10） | L3775+ |
| 6 | 进入动画 | setSettingsContentView forward | 滑入 | 是 | 否 | 否 | Base transition | L3841+ |
| 7 | 返回动画 | forward=false / override 0,0 | 滑出/无动画 | 是 | 否 | 否 | 标准 finish | bindBackTitle |
| 8 | 左上角返回 | bindBackTitle L3722 | 回首页重建 | 是 | 否 | 否 | onBackPressed | 代码 |
| 9 | finish | 主题/密码/重载等 | 结束设置 | 是 | 时序需要 | 否 | Bridge 指示 | 多处 |
| 10 | onActivityResult | L2660 | 壁纸10/图标53026 | 是 | 写壁纸/图标 | URI | 各 Activity | 代码 |
| 11 | onRequestPermissionsResult | L4633 | 动态定位2414 | 是 | 写开关 | 权限 | Dynamic Activity | 代码 |
| 12 | onResume | onSettingsHostResumed | 角标/壁纸刷新 | 是 | 部分 | 部分 | 分页 onResume | smali |
| 13 | postDelayed | 多处 | 迁移/轮询/IME | 混 | 否 | 否 | 去掉成功判定延迟 | rg |
| 14 | AlarmManager | L7674+ | 旧重启调度 | 否 | 否 | 是 | 删除主路径依赖 | rg |
| 15 | killProcess | L7448,7528,8423 | 进程重生兜底 | 否 | 否 | 是 | 仅 Coordinator PID | rg |
| 16 | 反射 | 多处 | 调混淆/隐藏 API | 否 | 是 | 是 | Bridge+wrapper/Compat | rg |
| 17 | SharedPreferences | 多文件 | 配置 | 否 | 是 | 否 | Bridge 统一读写 | 常量 |
| 18 | Settings.* | System/Global | 镜像 | 否 | 是 | 是 | 失败降级 prefs | 代码 |
| 19 | 数据库 | RedirectIconDB；favorites query | 图标/查询 | 否 | 是 | 否 | Bridge；禁手写 favorites | 代码 |
| 20 | 广播 | 分身快捷方式等 | 安装快捷方式 | 否 | 是 | 是 | Bridge/Compat | L5594+ |
| 21 | Provider | favorites content uri | 查询 | 否 | 是 | 否 | 只读保留 | L5869 |
| 22 | Launcher 重载 | ColdReloadCoordinator 等 | 场景重建 | 否 | 是 | 是 | Bridge 返回 RELOAD | 代码 |
| 23 | 主题入口 | applyTheme | 主题 | 是 | 是 | 否 | Bridge.applyTheme | L8338+ |
| 24 | 图标入口 | showIconPage 等 | 图标 | 是 | 是 | 否 | 阶段5 Activity | 代码 |
| 25 | 宫格入口 | bindGrid | 12/20 | 是 | 是 | 否 | Bridge.switchGrid | L3987+ |
| 26 | 动态天气入口 | showDynamicWeatherPage | ActiveIcon 配置 | 是 | 是 | 权限 | 阶段7 | 代码 |
| 27 | 分身入口 | showProfileAppsPage | 分身 | 是 | 是 | User | 阶段8 | 代码 |
| 28 | 隐私入口 | showSettingsPagePassword* | 密码 | 是 | 是 | 否 | 阶段8 | 代码 |
| 29 | 默认桌面入口 | openDefaultHomeSettings | 系统页 | 是 | 否 | 是 | DefaultHomeCompat | L9118 |
| 30 | PIN/安装 | 非 Host 主栈；InstallManager/PinActivity | 快捷方式/安装 | 部分 | 是 | 是 | 阶段9 归 Compat | 既有类 |

---

# 附录 B：阶段 1 开始前需用户确认

1. 是否同意包名 `com.smartisanos.launcher.settings` 与候选类名列表。  
2. modern 开关默认 false 是否接受。  
3. 设置 Activity `taskAffinity=com.android.settings` 是否保持。  
4. 阶段 0 未采真机基线日志是否允许先做阶段 1 代码（建议允许，但 DEVICE_VERIFIED 仍要真机）。  
5. 是否优先迁移关于作为第一批页面（操作日志已移除）。
6. `ThemeItemActivity` 现 smali 是恢复还是继续废弃（阶段 4 前确认）。  

---

# 附录 C：建议执行顺序（审阅通过后）

1. 补阶段 0 真机基线日志与 UNKNOWN（双击锁屏等）  
2. **阶段 1** 基础设施  
3. 阶段 2 简单页  
4. 阶段 3 Bridge  
5. 阶段 4→8 按风险  
6. 阶段 9 与 10  
7. 阶段 13 正式切换  
8. 阶段 11/12 按需  

**本轮停止于文档。不开始阶段 1 代码。**
