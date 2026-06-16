# 开发与修复记录

本文件从旧 README 中拆出，用来记录每天修复了哪些 BUG、实现了哪些功能、当时采用了什么修复方式，以及历史迁移路线。

注意：本文档只保留当前可信记录和倒序每日修复记录。旧归档中已经被后续修复覆盖或推翻的内容已删除；如果本文档和 `README.md` 冲突，以本文档顶部“当前状态总览”为准。

## 当前状态总览（2026-06-16）

### 已完成

- APK 可通过 `build.bat` 构建、签名并输出 `build\launcher-signed.apk`，最近多次安装验证通过。
- 当前发布版本调整为 `v1.5.0`，Manifest `versionCode=25`，`versionName=v1.5.0`；最终 APK 仍以 `launcher/original/AndroidManifest.xml` 二进制清单为准，文本 Manifest 和二进制 Manifest 需要同步维护。
- 当前桌面主 APK 为 `minSdkVersion=23`、`targetSdkVersion=28`，理论安装基线是 Android 6.0+（API 23+），已按 Android 15 安装方向保留 target 28。
- 兼容安装与包体瘦身已持续推进：最终 APK 的 `minSdkVersion` 从 29 降到 23，`targetSdkVersion` 调整为 28；纹理资源统一走 `1080p`，删除冗余资源和不再使用的独立搜索产物后，当前 `build\launcher-signed.apk` 约 50.2MB。
- 构建签名流程已从 `jarsigner` 旧 v1 签名改为 `zipalign -p` 后用 `apksigner` 输出 v1/v2/v3 签名，修复 Android 12 等新系统上可能因只有 v1/JAR 签名而安装失败的问题。
- 桌面主入口、桌面内“桌面设置”虚拟入口、12 / 20 宫格、主题页、壁纸页、翻页动画页、应用图标页、三个设置开关均已接入。
- 经典黑主题 12 / 20 宫格顶部网格和底部 Dock 资源已从原版 `com.smartisanos.launcher-3.apk` 重新抽取覆盖，顶底色差问题已修复。
- 桌面设置页和桌面已尽量保持在同一个 `smartisanos.task.launcher` 任务栈内，修复主题设定后“返回桌面 -> 又闪回设置页 -> 再回桌面”的双跳问题。
- 首次切换主题不播放翻页过渡动画已修复：主题设定消息不再因为桌面冷启动、数据异步加载或设置页任务栈切换而丢失动画快照，桌面就绪后会继续消费待执行主题动画。
- 普通不透明主题切换时不再把用户壁纸作为背景传入，避免所有主题都透出系统壁纸。
- 透明主题壁纸链路已接入 `launcher_wallpaper_uri`、私有壁纸副本、缩略图和 `gaussian_wallpaper.png` 兜底；“恢复默认壁纸”会清理自定义副本并回到当前主题内置背景。
- 主设置页缩略图已按 maintained 方向调整：桌面主题 / 桌面壁纸 / 桌面翻页动画使用竖向带框缩略图，应用图标不额外加白色外框。
- 应用图标替换链路已从设置页预览扩展到桌面主图标加载入口，支持 redirect、自定义图片、图标包 appfilter 和系统原图回退。
- 应用图标页顶部“改进版图标”已改为复用首页同款 `SettingItemSwitch` / `SwitchEx`，不再手写开关；“图标包”行改用 maintained 卡片背景，与上方开关行组成一组。
- 应用图标页新增“桌面图标大小”滑块，位置在“改进版图标”和“图标包”之间；支持 50% - 150% 连续调节，并可点击“小 / 中 / 大”快速跳到 50% / 100% / 150%；保存后回到桌面并完整重启 Launcher，让 12 / 20 宫格里的所有普通应用和桌面设置虚拟入口统一应用新尺寸。
- 应用图标页单应用切换已改为行级刷新：选择左侧默认图标、右侧推荐图标或相册自定义图标后，当前页面和滚动位置保持不变；只有找不到当前行时才兜底重建并恢复滚动位置。
- 应用图标页点击范围已收窄：只有左侧默认图标块和右侧推荐/加号图标块响应选择，右侧应用名称/说明文字区域不再弹出选择框。
- 当前搜索页使用 launcher 内 `ThemeChooserActivity` / `MaintainedLauncherSettingsHost.showSearchPage()` 自绘页面，不再依赖、下载或构建锤子独立搜索 APK；桌面下滑只作为进入自绘搜索页的手势入口。
- 强迫症选项已从设置首页零散开关收纳到二级页；主页入口和二级页标题走资源字符串，英文系统显示 `OCD Settings`，中文系统显示“强迫症选项”。
- 双开 / 多用户应用显示和启动已补入 LauncherApps 查询与 `startActivityAsUser` 兼容路径，避免双开应用只显示主用户图标或点击后启动错用户。
- 双开 / 多用户应用继续对照 maintained 调整：搜索页、桌面应用列表和启动链路都尽量使用 LauncherApps 多用户查询；分身应用支持叠加原版风格面具标记。
- 应用图标识别逻辑已继续向 maintained 对齐，同时保留当前工程已有的图标识别能力，减少“闲鱼 / 酷安”等普通应用被误识别成应用商店图标，以及系统“电话 / 拨号 / 电话本”等名称匹配不稳定的问题。
- 毛玻璃主题已改为只保留 `smartisan_theme_aero` 作为透明壁纸主题，移除白雾主题入口和资源引用；毛玻璃桌面与编辑页文字已恢复为原版风格白色文字效果。
- 透明主题切换已从自定义运行时旁路改回原版方向：透明模式写入 `launcher_grid_theme` 的 0/1，普通主题 ID 只写入 `launcher_theme`；透明主题包只用于资源注册，不再把 `smartisan_theme_trans` 当普通主题写入或送入普通主题切换队列，避免关闭透明主题后无法恢复上一主题。
- 透明主题安装包使用 `build\theme-trans-signed.apk`，安装后包名为 `com.smartisanos.launcher.theme.trans`，`minSdkVersion=23`、`targetSdkVersion=28`，用于普通 Android / Android 15 安装；`original_apks\com.smartisanos.launcher.theme.trans.apk` 是原始参考包，`targetSdkVersion=17`，不要作为 Android 15 安装包。
- 透明主题开启后只能使用默认翻页动画：主设置页隐藏“桌面翻页动画”入口，翻页动画读写被钳制为 `0`，避免透明主题资源链路和非默认翻页动画混用。
- 透明主题开关状态读取改为私有 prefs 优先、系统 Settings 兜底，解决普通 Android 上系统 Settings 旧值覆盖设置页开关，导致返回设置页仍显示关闭的问题。
- 修复透明主题开启后仍排队 `MESSAGE_CHANGE_THEME smartisan_theme_black` 的问题；开启透明主题只写透明覆盖状态并重启 / 刷新桌面，关闭透明主题时才恢复上一普通主题。
- 修复原版主题管理器 `X.ca()` 清空主题表后 `smartisan_theme_trans` 丢失的问题：在 `X.da()` 选择当前主题前重新注册透明主题包，避免透明状态回落到黑主题导致黑底、黑宫格或 Dock 混用。
- 透明主题开关和主题列表透明主题入口统一改为写入透明状态后重新触发桌面初始化，让 `O.V()`、`Constants.isTransparentTheme` 和 `X.va()` 重新选择资源，避免设置页开关状态正确但桌面仍停留在上一套主题资源。
- 透明主题开关确认必须完整重启 Launcher 才能稳定生效：普通 `J.a(theme, theme_changing)` 能拿到 `smartisan_theme_trans`，但不会完整重建透明桌面的壁纸 / 网格层；当前改为显示加载动画后重启桌面，避免仅退出设置页导致黑主题资源残留。
- 透明主题重启链路新增跨进程 loading pending 标记：设置页写入标记后杀进程重启，新 Launcher 进程在 `onCreate`、`J.b()` 初始化前显示加载层，等桌面渲染帧稳定后再关闭，避免切换时裸露黑屏 / 壁纸中间态。
- 透明主题壁纸取图改回原版优先系统壁纸 drawable；当 `WallpaperManagerSmt` / `WallpaperManager.getDrawable()` 在普通 Android 返回 null 时，再依次尝试 `peekDrawable()`、`getFastDrawable()`，最后才使用本地壁纸副本按屏幕比例中心裁剪，避免整图拉伸导致壁纸看起来被压缩。
- “桌面壁纸模糊效果”改回原版刷新方式：写入 `original_launcher_wallpaper_blur_on` 的 0/1，更新 `Constants.isTransWallpaperBlur` 后调用 `Eb.lh()` 重建 `t_blur_background`，不再走完整透明主题重载，修复打开模糊开关后背景变黑的问题。
- `ua.i(context)` 已加入普通 Android 兼容读取，优先从 launcher 私有 prefs 读取 `original_launcher_wallpaper_blur_on`，避免无 `WRITE_SECURE_SETTINGS` 时原版只读 `Settings.Global` 导致状态丢失。
- 对照原版确认：毛玻璃 / 透明壁纸主题下应用文字颜色由壁纸明暗决定，原版通过 `Constants.initGaussianDarkLight()` 在普通资源和 `_light` 后缀资源之间切换，不是按时间变化。
- 透明主题 / 毛玻璃主题下，状态栏文字和桌面应用文字已恢复为按壁纸明暗自动切换：
  - 根因一：`Constants.initByTheme()` 调用 `initGaussianDarkLight()` 后已经根据壁纸算出 `sGaussianResSuffix="_light"`，但后续又把 `sGaussianResSuffix` 清空为 `""`，导致浅色壁纸无法继续加载原版 `_light` 应用文字资源，应用名仍显示白字。
  - 根因二：状态栏颜色虽然已经通过原版 `status_bar_icon_color(_light)` 资源传给 `ua.setSystemUiDecoration()`，但普通 Android / Android 6+ 还需要同步 `View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR`，否则系统状态栏文字可能仍按旧颜色显示。
  - 修复方式：保留 `initGaussianDarkLight()` 算出的 `sGaussianResSuffix`，让 `Mc.o(theme)` / `Constants.initGaussianTheme()` 正常进入 `_light` 资源分支；同时在 `launcher/smali/com/smartisanos/launcher/e/g.smali` 中根据最终解析出的 `status_bar_icon_color` 设置或清除 `LIGHT_STATUS_BAR`。
  - 回归注意：只允许透明主题 `smartisan_theme_trans`、毛玻璃主题 `smartisan_theme_aero` 这类高斯 / 壁纸主题跟随壁纸明暗；普通不透明主题应继续使用主题自身文字资源和状态栏资源，不要改成跟随壁纸。
- 壁纸显示 / 模糊链路当前保持原版方向，不要再次改成手动模糊 bitmap 或把 `background.png` / `t_blur_background` 互相替换：
  - 透明主题壁纸显示正常的关键是 `s.n(context, uri)` / `decodeLauncherWallpaperSurfaceBitmap()` 按屏幕中心裁剪取壁纸，`background.png` 作为桌面背景纹理。
  - “桌面壁纸模糊效果”正常的关键是写入 `original_launcher_wallpaper_blur_on`，更新 `Constants.isTransWallpaperBlur` 后调用 `Eb.lh()`，由原版 SMEngine 重建 `t_blur_background`。
  - 不要在 Java 层自行 StackBlur 主壁纸，也不要把 `t_blur_background` 覆盖回 `background.png`；这样会造成主桌面、Dock 或局部区域显示不一致。
- 检查更新改为读取 Gitee 下载仓库 Release 列表，只识别 `launcher-` 前缀的软件发布标签，并按版本号选择最高版本；APK 资产只选择桌面主 APK，跳过 `SmartisanQuickSearch.apk`、主题包和 `theme-trans-signed.apk`；APK 下载流程有前台进度弹窗和状态栏通知，点击“后台下载”后状态栏继续显示进度，下载成功或失败都会留下结果通知，下载成功后自动拉起系统安装确认。
- 后续发布 GitHub / Gitee Release 时，推荐同时上传 `build\launcher-signed.apk` 和 `build\theme-trans-signed.apk`；前者是桌面主 APK，后者是透明主题 Android 15 兼容安装包。不要把 `original_apks\com.smartisanos.launcher.theme.trans.apk` 当用户安装资产发布。
- 主题详情下载按钮状态已按当前主题项隔离，避免切换到其他主题后仍残留“正在下载”状态。
- 桌面图标加载链路加入 drawable 归一化兜底，改善 MuMu 等环境 adaptive drawable 或特殊图标不显示的问题；MuMu 多用户 / 分身查询缺少 `INTERACT_ACROSS_USERS` 时，`getInstalledPackagesAsUser` 和 `queryIntentActivitiesAsUser` 会退回当前用户查询，避免初始化循环清库导致桌面空白。
- 主题详情页预览图已改为外层居中容器，手机壳和主题截图保持原版层级叠加，并会按标题栏和底部主题色栏之间的可用空间自适应缩小，避免小屏手机底部被颜色栏遮住；从主题详情返回主题列表、从关于我们返回设置首页时会保持原滚动位置，并在首帧绘制前恢复，避免上下晃动。
- 对照 maintained 的 APK 结构确认：maintained `minSdkVersion=19`、`targetSdkVersion=28`，且只保留 `assets/Textures/1080p`；当前工程第一轮先降到 `minSdkVersion=23`，保留更多运行安全余量，后续如需覆盖 Android 5.x / 4.x 再继续做 API 兼容回归。

### 已完成但需要继续回归

- 首次主题切换动画：主问题已修复，仍需用更多主题、多次清数据冷启动验证是否还有边缘竞态。
- 透明主题换壁纸：选择、即时刷新、恢复默认主链路已修复，仍需回归毛玻璃主题。
- 主设置页缩略图：当前 ImageView 显示上限为 `53dp x 63dp`，三项带框缩略图源 bitmap 为 `180 x 210 px`、四周 `12 px` 内边距；这些尺寸是为修复边框不等宽、图标过大、双层边框后固定下来的基准。

### 未完成 / 待处理

- 透明主题下 Dock 区域仍需继续对照原版 `com.smartisanos.launcher.theme.trans` 和 `clean_launcher/` 回归，重点看 Dock 半透明层、虚拟导航栏高度和壁纸裁切是否完全一致。
- 原生 Smartisan Settings Activity / Fragment 还没有完整迁移，当前仍由 launcher 包内 `ThemeChooserActivity` 承载 maintained 风格兼容页。
- 对照 `E:\FANG\smartisan\smartisan-launcher-maintained`，当前桌面设置和桌面能力仍需按优先级继续移植；“分享此应用给朋友”和“用户体验改进计划”不再作为移植目标。
  - [x] 桌面隐藏虚拟键：优先级最高，key 为 `launcher_hide_navigation_bar`，已接入首页开关并限制只由 Launcher 主界面应用系统 UI flags。
  - [x] 检查更新：已接入 Gitee 下载仓库 Release 检测；只识别 `launcher-` 软件标签中的最高版本，只下载桌面主 APK，普通应用更新仍需系统安装确认。
  - [x] 关闭电池优化：优先请求当前包名 `com.smartisanos.launcher` 的电池优化弹窗，系统不允许时回退当前应用详情页。
  - [x] 关于我们：已从信息弹窗改为完整 maintained / 原版锤子风格页面。
  - [x] 紧贴屏幕横扫清除角标：key 为 `launcher_badge_swipe_clean`，已接入 maintained 风格设置页开关。
  - [x] 隐藏图标上的角标：key 为 `launcher_hide_badge`，已接入 maintained 风格设置页开关。
  - [x] 下滑 / 上滑搜索：已改为进入 launcher 内 `ThemeChooserActivity` 承载的自绘搜索页；当前不再依赖锤子独立搜索 APK。
  - [ ] 天气：当前保留天气权限、资源和旧 Smartisan 天气库，但旧天气接口可能不可用，后续建议按 maintained 的方向优先拉起系统 / 已安装天气应用。
  - [ ] 日历：当前保留日历权限和动态图标资源线索，但桌面日期刷新、点击入口和系统日历兼容还未单独回归。
- 提醒角标可以作为后续功能实现目标，但不能简单等同于“应用有通知就一定显示”。当前 old Smartisan / 厂商未读数广播或系统 badge 数据能接入时才有机会显示；普通 Android 通知角标需要额外接入通知监听或 badge 兼容桥。
- 在线主题 APK 下载后仍依赖用户手动安装，普通应用没有静默安装能力。
- 12 / 20 宫格、文件夹、编辑模式、拖拽落点、Dock 动画仍需要更多分辨率和真机回归。

## 阅读顺序

建议按下面顺序接手，不要从文件中间的旧计划直接开始：

1. 先读本节“当前状态总览”，确认哪些已经完成、哪些还待验证。
2. 再读“每日修复记录（倒序）”，按日期倒序查最近改动。
3. 需要追溯原因时，按每日记录由近到远阅读；已被后续修复覆盖的旧结论不再保留。

## 每日修复记录（倒序）

### 2026-06-16：检查更新下载、通知进度和安装链路复查

复查结论：

- 点击“检查更新”后会请求 Gitee 下载仓库 Release 列表；发现新版本后点击“下载”，代码会启动 `launcher-update-direct-download` 后台线程下载 APK，界面弹出下载进度窗口。
- 下载弹窗的“后台下载”按钮会关闭弹窗，但下载线程继续运行，状态栏通知继续显示下载进度；这属于应用进程内后台下载，不是系统 `DownloadManager` 的持久下载，若进程被系统杀掉不能保证继续。
- 下载过程中会通过 `NotificationManager` 创建 `launcher_update_download` / “桌面更新下载”通知渠道，并持续刷新状态栏通知进度；Android 13+ 如果用户关闭通知权限，状态栏进度可能不会显示。
- 下载完成后优先走 `PackageInstaller` 提交安装会话，状态为 `STATUS_PENDING_USER_ACTION` 时拉起系统安装确认；失败时回退 `ACTION_INSTALL_PACKAGE` / `ACTION_VIEW`。普通 Android 不能静默安装，覆盖安装要求新 APK 包名相同、签名一致，并且用户允许当前应用安装未知来源应用。

修复内容：

- 修复后台下载失败没有状态栏结果的问题。旧代码下载失败会直接 `cancelUpdateNotification()`，用户点“后台下载”后只能看到 Toast，状态栏没有失败结果；现在失败时调用 `notifyUpdateDownload(..., complete=true)` 留下“下载失败: ...”结果通知，成功时继续保留“下载完成，正在启动安装...”结果通知。
- 修复线上 Release 选择不稳定的问题。Gitee API 当前可能先返回 `themes-v1`、`launcher-1.4.8`，再返回 `launcher-1.4.9`；旧逻辑遇到第一个 `launcher-` 就返回，导致安装 `v1.4.8` 时可能误判“当前已是最新版本”。现在会遍历全部 `launcher-` 发布并按版本号选择最高版本。
- 修复 APK 资产选错的问题。旧逻辑选择 Release 中第一个 `.apk`，当 `launcher-1.4.8` 的资产顺序为 `SmartisanQuickSearch.apk`、`SmartisanLauncher-1.4.8.apk` 时，会把独立搜索包当桌面更新包；后续 Release 同时上传 `theme-trans-signed.apk` 时也有同类风险。现在只优先选择桌面主 APK，跳过 `SmartisanQuickSearch.apk`、主题 APK、透明主题包。
- 文档同步说明：检查更新只负责桌面主 APK 升级；`build\theme-trans-signed.apk` 作为透明主题 Android 15 兼容包随 Release 发布，但需要单独安装，不由桌面内更新自动替换。
- 版本发布：文本 `launcher/AndroidManifest.xml`、最终构建注入的 `launcher/original/AndroidManifest.xml` 二进制 Manifest、设置页当前版本字符串均同步调整为 `v1.5.0 (25)`。

验证结果：

- `.\build.bat` 编译成功，输出 `build\launcher-signed.apk`。
- `aapt2 dump badging build\launcher-signed.apk` 确认包名 `com.smartisanos.launcher`、`versionCode=25`、`versionName=v1.5.0`、`minSdkVersion=23`、`targetSdkVersion=28`，且仍声明 `REQUEST_INSTALL_PACKAGES`。
- `apksigner verify --verbose --print-certs build\launcher-signed.apk` 确认 v1 / v2 / v3 签名均为 true。
- 当前 PowerShell 环境没有可直接调用的 `adb.exe`，本轮未完成真机 / 模拟器安装验证；覆盖安装行为仍需在有 ADB 的环境执行 `adb install -r -d build\launcher-signed.apk` 或通过桌面内检查更新实机确认。

### 2026-06-16：自绘搜索页下滑误触与历史清除按钮修复

修复内容：

- 调整主设置页透明主题位置和翻页动画联动。
  - 需求原因：透明主题下桌面背景、文字和高斯壁纸链路都走特殊资源分支，继续暴露“桌面翻页动画”容易让用户选到与透明主题不匹配的动画效果。
  - 修复方式：在 `setting_main.xml` 中把“透明主题”开关移动到“强迫症选项”下面；透明主题开启时，`MaintainedLauncherSettingsHost.bindPage()` 隐藏 `item_page_flip_anims`，`applyTransparentThemeSetting()` 立即强制写回默认翻页动画。
  - 回归注意：透明主题开启期间，`readPageAnimation()` 和 `writePageAnimation()` 都会把动画值钳制为 `0`，确保其他入口也只能使用“默认动画”；关闭透明主题后主设置页会重新显示“桌面翻页动画”选项。

- 修复桌面自绘搜索页容易误触发的问题。
  - 问题根因：此前搜索手势在 `Launcher.smali`、`RootView.smali`、`SMGLSurfaceView.smali` 三层都接入了 `MaintainedLauncherSettingsHost.handleLauncherSearchGesture()`，同一次下滑会被多处重复处理；同时 Java 侧在 `ACTION_MOVE` 阶段就会打开搜索页，距离和角度阈值偏松，没有多指 / 取消手势失效和冷却限制，所以短滑、拖动或图标附近滑动容易误触。
  - 修复方式：只保留 `Launcher.smali` 顶层搜索触发入口，删除 `RootView.smali` 和 `SMGLSurfaceView.smali` 的重复搜索钩子；`handleLauncherSearchGesture()` 改为松手 `ACTION_UP` 时才确认打开，并限制单指、起始区域、下滑距离、纵向角度、手势时长和 1 秒冷却。

- 修复自绘搜索页“搜索历史”右侧清除按钮偏大、和标题不水平对齐的问题。
  - 修复方式：在 `MaintainedLauncherSettingsHost.showSearchPage()` 中让“搜索历史”标题使用垂直居中布局；右侧清除按钮从 `30dp / 18sp` 调整为 `22dp / 14sp`，圆角同步缩小，并保持 `CENTER_VERTICAL`，让按钮中心线和标题文字对齐。

验证结果：

- `.\build.bat` 编译成功，输出 `build\launcher-signed.apk`。
- `adb install -r -d build\launcher-signed.apk` 安装到 `emulator-5554` 成功。
- 在 Smartisan Launcher 桌面右侧空白区域短距离下滑，前台仍保持 `com.smartisanos.launcher/.Launcher`，未打开搜索页。
- 在同一区域明确长距离下滑，前台进入 `com.smartisanos.launcher/.theme.ThemeChooserActivity` 自绘搜索页。
- 截图 `build\search_page_after_fix.png` 确认“搜索历史”右侧 X 已缩小并与标题水平对齐。

### 2026-06-16：透明 / 毛玻璃主题文字随壁纸明暗修复与壁纸链路说明

修复内容：

- 修复透明主题、毛玻璃主题下浅色壁纸仍显示白色应用文字的问题。
  - 问题根因：`Constants.initByTheme()` 先调用 `initGaussianDarkLight(context)` 根据当前壁纸计算明暗，并会把浅色壁纸结果写为 `sGaussianResSuffix="_light"`；但紧接着旧代码又执行 `sGaussianResSuffix=""`，把 `_light` 后缀清掉，导致 `Constants.initGaussianTheme()` 和 `Mc.o(theme)` 无法进入原版浅色资源分支。
  - 修复方式：删除这次错误清空 `sGaussianResSuffix` 的逻辑，保留 `initGaussianDarkLight()` 的计算结果；浅色壁纸继续加载 `def_apps_text_color_light`、`def_apps_shadow_color_light`、`page_title_text_color_light` 等原版资源，深色壁纸继续走默认资源。

- 修复透明主题、毛玻璃主题下系统状态栏文字不随壁纸明暗稳定切换的问题。
  - 问题根因：原版会解析 `status_bar_icon_color` / `status_bar_icon_color_light` 并传给 `ua.setSystemUiDecoration()`，但普通 Android 上状态栏深浅文字还受 `SYSTEM_UI_FLAG_LIGHT_STATUS_BAR` 控制，只写旧的装饰颜色不够。
  - 修复方式：在 `launcher/smali/com/smartisanos/launcher/e/g.smali` 中，解析出最终 `status_bar_icon_color` 后按颜色亮度设置系统 UI flag：深色图标颜色时设置 `LIGHT_STATUS_BAR`，浅色 / 白色图标颜色时清除该 flag。

- 验证结果：
  - 浅色壁纸下，状态栏文字变深；应用文字应随 `_light` 资源变深，不再白字贴浅色壁纸。
  - 深色壁纸下，状态栏和应用文字保持浅色，仍可读。
  - 本轮只修文字明暗链路，没有改壁纸模糊和背景纹理链路。

后续注意：

- 透明主题和毛玻璃主题属于“壁纸主题 / 高斯主题”，文字明暗跟随壁纸；普通不透明主题不应跟随壁纸，必须继续使用当前主题自己的文字和状态栏资源。
- 壁纸显示正常依赖原版链路：
  - 自定义壁纸保存为 launcher 私有副本，并同步 `launcher_wallpaper_uri` / `desktop_wallpaper_uri` / `lockscreen_background`。
  - 透明 / 毛玻璃主题加载壁纸时由原版路径按屏幕比例中心裁剪，不应拉伸整图。
  - 模糊开关只写 `original_launcher_wallpaper_blur_on` 并刷新 `Constants.isTransWallpaperBlur`，再调用 `Eb.lh()` 让引擎重建 `t_blur_background`。
- 不要再做以下改动：
  - 不要在 `decodeLauncherWallpaperSurfaceBitmap()` 或 Java 辅助代码里主动 StackBlur 主壁纸 bitmap。
  - 不要把 `t_blur_background` 覆盖回 `background.png`。
  - 不要为了修 Dock 或模糊，替换原版 `background.png` 与 `t_blur_background` 的职责；这会导致主桌面、Dock、动画层使用不同来源的壁纸，出现局部清晰 / 局部模糊 / 底部错图。

### 2026-06-07：v1.4.8 独立内置搜索、Gitee 软件更新和主题详情小屏适配

修复内容：

- 版本发布：
  - 文本 `launcher/AndroidManifest.xml` 调整为 `versionCode=24` / `versionName=1.4.8`。
  - 同步修正最终构建注入的 `launcher/original/AndroidManifest.xml` 二进制 Manifest，确保最终 APK 真实版本为 `v1.4.8 (24)`。
  - 设置页“关于 / 当前版本”显示同步为 `1.4.8`。

- 内置搜索独立化：
  - `SmartisanQuickSearch.apk` 改为独立发布资产，不再放入桌面主 APK 的 `assets/bundled_apps`，主包体积从约 70.9MB 降到约 65.7MB。
  - 强迫症选项页中“原版搜索”改为“内置搜索”，增加副标题“锤子手机原版搜索软件”。
  - “启用下滑搜索”和“内置搜索”放入同一组卡片，说明文案改为“安装内置搜索APP后，在桌面上打开搜索APP或下滑呼出搜索，即可快速搜索应用”。
  - 安装按钮调整为约 `96dp x 52dp`、`18sp`，比上一版稍窄但更高，提高小屏可读性和点击面积。
  - 点击安装时从 Gitee Release `launcher-1.4.8/SmartisanQuickSearch.apk` 下载独立搜索 APK，下载过程显示弹窗进度和状态栏进度，下载完成后拉起系统安装器。
  - “启用下滑搜索”开关会先检测 `com.smartisanos.quicksearch` 是否已安装；未安装时页面打开和点击开启都会写回关闭并引导下载，安装成功后才能打开。
  - 独立 `SmartisanQuickSearch.apk` 的 `minSdkVersion` 从 24 降为 23，修复 Android 6.x / API 23 设备安装失败 `INSTALL_FAILED_OLDER_SDK`（安装器错误码 `-2`）的问题。
  - QuickSearch 补入 `smartisanos.t9search.HanziToPinyin` 兼容类，修复普通 Android / MuMu 缺少锤子系统类导致搜索页启动后崩溃的问题；当前先以原字符兜底，后续可继续替换为完整拼音转换。

- 搜索图标：
  - 内置搜索实时结果的 `PackageIconLoader` 改为优先通过桌面导出的 Provider 获取锤子桌面主题图标，和搜索历史图标保持一致，失败时再回退系统图标。

- 检查更新与发布：
  - 软件检查更新改为读取 Gitee 下载仓库 Release 列表，只匹配 `launcher-` 标签，避免 `themes-v1` 主题发布被误识别成软件新版本。
  - Gitee Release `launcher-1.4.8` 已创建并上传两个独立资产：`SmartisanLauncher-1.4.8.apk` 和 `SmartisanQuickSearch.apk`。
  - 主题下载仍使用 Gitee Release `themes-v1`，软件更新与主题下载接口分离。

- 主题详情页：
  - 主题详情页的 PRO3 手机预览改为根据可用宽高动态缩小，尤其适配小屏手机，避免预览底部被底部主题色栏遮挡。
  - 手机外框继续使用白色主题详情框，并保持 PRO3 预览图与外框叠加。

- 桌面恢复稳定性：
  - `Launcher.onResume()` 后增加桌面 GL Surface 可见性、布局刷新和 `requestRender()` 唤醒，缓解部分手机从其他应用返回桌面时只显示黑屏和状态栏的问题。
  - MuMu 上定位到原版分身查询会访问 user 10 并触发跨用户权限异常，已为安装包列表和应用入口查询补 fallback，避免 `dataInitProtected` 多次失败后清库导致桌面空白；ADB 抓屏确认 12 宫格可正常显示。

- 构建验证：
  - `build.bat` 构建通过，输出 `build\launcher-signed.apk`。
  - `aapt dump badging build\launcher-signed.apk` 确认最终 APK 为 `versionCode='24'`、`versionName='v1.4.8'`、`sdkVersion:'23'`、`targetSdkVersion:'28'`。
  - 验证主 APK 中已无 `quicksearch` / `bundled_apps` 资产。
  - 独立 `SmartisanQuickSearch.apk` 确认包名为 `com.smartisanos.quicksearch`，版本为 `3.0.0 (101)`，`sdkVersion:'23'`，并在 MuMu 上安装和启动成功，日志显示 `Displayed com.smartisanos.quicksearch/com.android.quicksearchbox.SearchActivity`。

### 2026-06-06：v1.4.7 更新下载与 Gitee 镜像测试版

修复内容：

- 版本发布：
  - 文本 `launcher/AndroidManifest.xml` 调整为 `versionCode=21` / `versionName=v1.4.7`。
  - 同步修正最终构建注入的 `launcher/original/AndroidManifest.xml` 二进制 Manifest，确保最终 APK 的真实版本也是 `v1.4.7 (21)`。
  - 设置页“检查更新”默认版本字符串同步为 `v1.4.7`。

- 下载镜像：
  - 检查更新仍从 GitHub Release API 获取最新版本信息，但 APK 下载会优先尝试 Gitee Release 镜像，失败后自动回退 GitHub。
  - 主题下载基地址切换到 Gitee Release `themes-v1`，用于测试国内镜像下载链路。
  - 当前 Gitee `themes-v1` 已上传部分主题附件，已验证公开附件 URL 会跳转到 `attach_files` 下载地址；剩余主题因 Gitee 仓库附件配额提示超过 1GB，待网页端释放容量或扩容后补齐。

- 验证：
  - `build.bat` 构建通过，输出 `build\launcher-signed.apk`。
  - `aapt2 dump badging build\launcher-signed.apk` 确认最终 APK 为 `versionCode='21'`、`versionName='v1.4.7'`、`sdkVersion:'23'`、`targetSdkVersion:'28'`。
  - `apksigner verify --verbose --print-certs build\launcher-signed.apk` 确认 v1 / v2 / v3 签名均为 true。

### 2026-06-06：应用分身、图标识别、毛玻璃主题、搜索和更新下载修复

修复内容：

- 版本发布：
  - 文本 `launcher/AndroidManifest.xml` 调整为 `versionCode=20` / `versionName=v1.4.6`。
  - 同步修正最终构建注入的 `launcher/original/AndroidManifest.xml` 二进制 Manifest，确保最终 APK 的真实版本也是 `v1.4.6 (20)`。
  - 设置页“检查更新”默认版本字符串同步为 `v1.4.6`。

- 应用分身：
  - 对照 maintained 的多用户查询思路，把桌面应用列表、搜索页和启动链路继续向 `LauncherApps` / 用户句柄查询靠拢。
  - 修复首次安装后桌面第一次进入只显示一个微信、退出重开才显示两个微信的竞态问题方向：启动和恢复时会触发分身应用 bootstrap，减少多用户列表未及时进入桌面的情况。
  - 修复分身应用图标叠加面具标记的链路，分身图标会走 `PackageManager.getUserBadgedIcon` 和当前工程的面具绘制兜底。
  - 继续调整面具标记大小、位置和颜色，使其更接近原版锤子桌面左下角黑色面具效果。

- 图标识别：
  - 对照 `smartisan-launcher-maintained` 调整当前工程图标识别逻辑，同时保留当前项目已有的图标识别入口和 redirect / appfilter / 自定义图标能力。
  - 修复部分普通应用被误识别成应用商店图标的情况，例如“闲鱼”“酷安”。
  - 修复部分系统应用名称识别不稳定的情况，例如“电话”“拨号”“电话本”“电话管家”。
  - 应用图标页加载速度继续优化，避免每次打开都做不必要的重拉取和整页重建。

- 搜索页和拖动手势：
  - 搜索页改为能搜索到普通应用和分身应用。
  - 对照 maintained 收窄下滑搜索触发条件，只在明确快速下滑时打开搜索，减少长按拖动应用时误识别为打开搜索页。

- 毛玻璃主题：
  - 对比原版毛玻璃主题 `com.smartisanos.launcher.theme.aero.apk` 和 maintained 的显示效果，修复毛玻璃主题桌面文字、编辑页文字仍显示黑色或加载时先黑后白的问题。
  - 毛玻璃主题文字效果恢复为和其他深色/浅蓝主题一致的白色文字效果。
  - 删除白雾主题入口、显示顺序、字符串、公有资源项和相关 smali 判断；当前透明壁纸主题只保留毛玻璃。

- 主题下载和模拟器兼容：
  - 修复在线主题详情页从一个正在下载的主题切换到其他主题时，右上角下载按钮状态没有正确隐藏或刷新。
  - 桌面图标加载链路加入 drawable 归一化处理，改善 MuMu 模拟器等环境中 adaptive drawable 或特殊 drawable 图标不显示的问题。

- 检查更新：
  - 修复“检查更新 -> 下载”没有任何进度显示的问题。
  - 下载更新包后现在会弹出进度窗口；未知大小时显示等待 / 下载中，已知大小时显示百分比，下载完成后自动关闭并启动安装。

- 构建和清理：
  - 多次执行 `build.bat` 构建通过，输出 `build\launcher-signed.apk`。
  - `aapt2 dump badging build\launcher-signed.apk` 确认最终 APK 为 `versionCode='20'`、`versionName='v1.4.6'`、`sdkVersion:'23'`、`targetSdkVersion:'28'`。
  - `apksigner verify --verbose --print-certs build\launcher-signed.apk` 确认 v1 / v2 / v3 签名均为 true。
  - 按当前约定清理 `build` 目录，只保留 `launcher-signed.apk`、`launcher-signed.apk.idsig` 和 `tools`。

### 2026-06-04：v1.4.5 设置体验、主题详情和英文文案修复

修复内容：

- 版本发布：
  - 文本 `launcher/AndroidManifest.xml` 调整为 `versionCode=19` / `versionName=v1.4.5`。
  - 同步修正最终构建注入的 `launcher/original/AndroidManifest.xml` 二进制 Manifest，避免 APK 真实版本和文本 Manifest 不一致。
  - 设置页“检查更新”默认版本字符串同步为 `v1.4.5`。
- 强迫症选项：
  - `launcher/tools/maintained_settings_res/res/values/strings.xml` 补齐 `ocd_setting=OCD Settings`，中文资源继续使用“强迫症选项”。
  - 主设置页标题改用 `launcher_setting_name`，强迫症入口改用 `ocd_setting`，强迫症二级页标题改用 `obsession_header_title`。
  - 修复英文系统下强迫症入口仍显示中文的问题；后续不要在 Java 中硬编码“强迫症选项 / 桌面设置”等标题。
- 设置返回位置：
  - 从“关于我们”、壁纸、翻页动画、应用图标、强迫症选项等子页返回主设置页时记录并恢复进入前的滚动位置。
  - 从桌面主题列表进入主题详情后返回时恢复主题列表位置。
  - 滚动恢复从 `post()` 延后滚动改为 `OnPreDrawListener` 首帧绘制前恢复，修复返回时先跳顶部再滚回当前位置造成的上下晃动。
- 主题详情页：
  - `activity_theme_item.xml` 改为外层 `phone_detail_preview` 填满标题栏和底部主题标签栏之间区域，内层保留原版手机预览图层并居中。
  - 取消依赖运行时 `translationY` 硬调预览位置，避免手机外壳和主题截图错位。
- 已纳入本轮发布记录的前序功能 / BUG：
  - 应用图标页：改进版图标开关复用首页同款控件；图标包行和图标大小行补齐箭头与点击范围；单应用默认图标、推荐图标、相册自定义图标切换后只刷新当前行并保持滚动位置。
  - 桌面图标大小：50% - 150% 连续调节，小 / 中 / 大三档快捷选择，保存后所有 12 / 20 宫格普通应用和桌面设置虚拟入口统一生效。
  - 图标包兼容：支持 appfilter / component 精确匹配，图标包优先级高于锤子自动识别，单应用自定义图标优先级最高。
  - 内置搜索页：设置页提供“启用下滑搜索”开关；搜索页去掉自绘键盘，改为系统输入法；顶部常用应用横向滑动；搜索结果行固定高度并垂直居中。
  - 双开应用：通过 `LauncherApps.getProfiles()` 补齐多用户可启动 Activity，保存 `ItemInfo.userId` 并通过 `startActivityAsUser` 启动对应用户应用。
  - 刘海屏 / 编辑态：Launcher 主窗口持续保留 fullscreen layout 和 cutout short edges，避免长按图标、进入编辑模式时露出系统状态栏并顶下桌面。
  - 解锁动画：修正动画播放状态判断，让锁屏返回桌面时能按设置开关执行解锁动画。
  - 设置体验：关于我们改为 maintained / 原版风格页面；检查更新、关闭电池优化、默认桌面、隐藏虚拟键、角标开关等入口已接入。

验证计划：

- `build.bat` 构建通过。
- `aapt dump badging build\launcher-signed.apk` 应显示 `versionCode='19'`、`versionName='v1.4.5'`、`sdkVersion:'23'`、`targetSdkVersion:'28'`。
- `apksigner verify --verbose --print-certs build\launcher-signed.apk` 应显示 v1 / v2 / v3 签名均为 true。
- 英文系统进入桌面设置时，主标题应显示 `Launcher Settings`，强迫症入口和二级页标题应显示 `OCD Settings`。
- 从主题列表滚动后进入某个主题详情再返回，应保持主题列表位置；从“关于我们”返回设置首页也应保持原位置且不再上下晃动。
- 主题详情页手机预览应在标题栏与底部主题标签之间居中，手机壳和截图不应错位。

### 2026-06-03：刘海屏编辑态状态栏下移修复

背景：

- 用户反馈刘海屏手机上长按图标或进入桌面编辑模式时，会露出原本的系统状态栏，桌面内容整体向下移动，底部图标显示不全。
- 对照 maintained 的 `docs/compatibility-fixes.md`，同类问题的根因是编辑、排序、拖拽等特殊模式切换系统 fullscreen / status bar 状态，导致系统状态栏和桌面自绘状态栏坐标脱节。

修复内容：

- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
  - `applyLauncherNavigationBarSetting()` 不再只处理隐藏虚拟键。
  - 每次 `onResume()` / `onWindowFocusChanged()` 应用设置时，都强制保留 `View.SYSTEM_UI_FLAG_LAYOUT_STABLE | View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN`。
  - 关闭“桌面隐藏虚拟键”时只清理 `HIDE_NAVIGATION` / `IMMERSIVE_STICKY` / `LAYOUT_HIDE_NAVIGATION`，不再清掉顶部 fullscreen layout。
  - Android 9 及以上设置 `LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES`，让 Launcher 主窗口可以延伸到刘海短边区域。
  - 同步保持透明状态栏和 `FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS`，避免系统白色状态栏重新参与布局。
- `launcher/smali/com/smartisanos/launcher/ua.1.smali`
  - 原版窗口初始化 `ua.a(Window)` 不再依赖 `Constants.IS_NAVIGATION_BAR` 才设置 fullscreen layout。
  - 无论是否存在虚拟导航栏，都保留 `0x500`（`LAYOUT_STABLE | LAYOUT_FULLSCREEN`）。
  - Android 9 及以上同步写入 `layoutInDisplayCutoutMode = SHORT_EDGES`。

验证：

- `build.bat` 构建通过。
- `adb -s emulator-5556 install -r -d build\launcher-signed.apk` 安装成功。
- `adb -s emulator-5556 shell am start -n com.smartisanos.launcher/.Launcher` 启动成功。
- 截图 `build\cutout_statusbar_fix_desktop.png` 验证普通态仍使用桌面自绘状态栏，没有出现白色系统状态栏顶下桌面。
- 该问题仍建议在实际刘海屏真机上补充回归：长按桌面图标、进入桌面编辑模式、多页预览、拖动图标到底部 Dock 附近，确认顶部不露系统状态栏、底部图标不被裁切。

### 2026-06-03：v1.4.2 兼容签名发布

修复内容：

- 版本号：
  - 文本 `launcher/AndroidManifest.xml` 从 `versionCode=15` / `versionName=v1.4.1` 调整为 `versionCode=16` / `versionName=v1.4.2`。
  - 同步修正最终构建会注入的 `launcher/original/AndroidManifest.xml` 二进制 Manifest，确保最终 APK 的真实版本也为 `v1.4.2 (16)`。
  - 设置页“检查更新”右侧默认版本字符串同步为 `v1.4.2`。
- 检查更新说明：
  - `v1.4.1` 安装包检查不到新版，是因为 GitHub 最新 release 仍然是 `v1.4.1`，当前安装版本和远端最新版本一致。
  - 后续每次想让旧版检测到更新，都必须同时完成版本号提升、GitHub push、GitHub release 和 APK 资产上传。
- 兼容安装：
  - 延续本日第一轮兼容修复，最终 APK 保持 `minSdkVersion=23`、`targetSdkVersion=28`。
  - 构建脚本继续使用 `zipalign -p` 和 `apksigner` 输出 v1/v2/v3 签名，改善 Android 12 等新系统通过文件管理器安装时失败的问题。
- 包体：
  - 保持 `pb.getResolution()` 统一返回 `1080p`，并继续使用移除冗余 `720p` 纹理后的瘦身构建输入，当前 APK 约 64MB。

验证计划：

- `build.bat` 构建通过。
- `aapt dump badging build\launcher-signed.apk` 应显示 `versionCode='16'`、`versionName='v1.4.2'`、`sdkVersion:'23'`、`targetSdkVersion:'28'`。
- `apksigner verify --verbose --print-certs build\launcher-signed.apk` 应显示 v1 / v2 / v3 签名均为 true。
- 发布到 GitHub Release 后，安装 `v1.4.1` 的设备再次点击“检查更新”应能检测到 `v1.4.2`。

### 2026-06-03：v1.4.1 版本与内置搜索页继续修复

修复内容：

- 版本号：
  - 文本 `launcher/AndroidManifest.xml` 从 `versionCode=14` / `versionName=v1.4` 调整为 `versionCode=15` / `versionName=v1.4.1`。
  - 同步修正最终构建会注入的 `launcher/original/AndroidManifest.xml` 二进制 Manifest，确保最终 APK 的 `aapt dump badging` 能读到 `versionCode=15` / `versionName=v1.4.1`。
  - 设置页“检查更新”右侧默认版本字符串同步为 `v1.4.1`。
- 内置搜索页：
  - 去掉自绘 T9 键盘，改为点击顶部输入框后由系统输入法接管。
  - 设置首页新增“启用下滑搜索”开关，绑定 `launcher_search_page_enabled`，关闭后桌面下滑不再进入内置搜索页。
  - 搜索页顶部常用应用区从固定 5 个等分项改成横向可滑动列表，最多展示前 20 个可启动应用。
  - 修复搜索结果行文字错位：结果行固定 84dp 高度，图标和标题都垂直居中，标题使用单行省略。
  - 启动搜索页时使用 `CLEAR_TOP | SINGLE_TOP`，减少最近任务里重复出现两个“锤子桌面”窗口的概率。

验证：

- `build.bat` 构建通过，输出 `build\launcher-signed.apk`。
- `adb install -r -d build\launcher-signed.apk` 安装到 `emulator-5554` 成功。
- 直接启动搜索页，确认顶部常用应用可以横向滑动，滑动后能看到“文件 / 浏览器 / 游戏中心”等后续应用。
- 输入 `root` 后确认搜索结果行中 Root Explorer 图标和文字同一行垂直居中，不再出现标题贴到上方的问题。

涉及文件：

- `launcher/AndroidManifest.xml`
- `launcher/original/AndroidManifest.xml`
- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
- `launcher/tools/maintained_settings_res/res/layout/setting_main.xml`
- `launcher/tools/maintained_settings_res/res/values/strings.xml`
- `launcher/tools/maintained_settings_res/res/values-zh-rCN/strings.xml`
- `README.md`
- `DEVELOPMENT_LOG.md`

### 2026-06-03：兼容安装与第一轮包体瘦身

背景：

- 用户反馈同一个 APK 发给其他手机安装失败，同时 maintained 能在更多手机上安装、分辨率适配更好，且包体更小。
- 对比 `smartisan-launcher-maintained` 后确认，当前 original-port 主要问题有两类：
  - 安装兼容：当前 APK 原本 `minSdkVersion=29`，Android 10 以下设备会直接安装失败；maintained 为 `minSdkVersion=19`、`targetSdkVersion=28`。
  - 包体过大：当前 APK 约 105.9MB，其中 `assets` 占约 97.5MB；maintained APK 约 44.4MB，其中 `assets` 约 33.9MB。

修复内容：

- 安装兼容：
  - 文本 `launcher/AndroidManifest.xml` 的 `uses-sdk` 从 `minSdkVersion=29` / `targetSdkVersion=29` 调整为 `minSdkVersion=23` / `targetSdkVersion=28`。
  - 同步修正最终构建注入的 `launcher/original/AndroidManifest.xml` 二进制 Manifest，确保最终 APK 真实输出 `sdkVersion:'23'`、`targetSdkVersion:'28'`。
  - `launcher/apktool.yml` 同步记录 `minSdkVersion: 23`、`targetSdkVersion: 28`。
- 包体瘦身：
  - 对照 maintained，确认 maintained 只保留 `assets/Textures/1080p`，没有 `720p` 目录。
  - 将 `com.smartisanos.launcher.pb.getResolution()` 改为统一返回 `1080p`，避免低密度设备继续选择 `Textures/720p`。
  - 删除未跟踪的构建输入目录 `launcher/assets/Textures/720p`，减少约 36.9MB 纹理资源。
- 签名兼容：
  - 原构建脚本使用 `jarsigner`，`apksigner verify` 显示只有 `Verified using v1 scheme: true`，v2/v3 均为 false。
  - Android 12 及部分厂商安装器对重打包 APK 的旧 v1/JAR 签名兼容较差，容易在文件管理器安装时只显示“安装失败”。
  - `build.bat` 改为先 `zipalign -p -f 4`，再使用 `apksigner sign` 输出 v1/v2/v3 签名。

验证：

- `build.bat` 构建通过。
- `aapt dump badging build\launcher-signed.apk` 验证：
  - `versionCode='15'`
  - `versionName='v1.4.1'`
  - `sdkVersion:'23'`
  - `targetSdkVersion:'28'`
- `apksigner verify --verbose --print-certs build\launcher-signed.apk` 验证：
  - `Verified using v1 scheme: true`
  - `Verified using v2 scheme: true`
  - `Verified using v3 scheme: true`
- 新 APK 体积约 `63.92MB`，相比瘦身前约 `105.9MB` 明显降低。
- `adb install -r -d build\launcher-signed.apk` 安装到 `emulator-5554` 成功。
- 启动桌面成功，截图确认 12 宫格主界面显示正常。
- 打开桌面设置成功，截图确认设置页可进入；删除 `720p` 后没有出现启动崩溃。

后续优化方向：

- 继续瘦身的主要大头：
  - `assets/Textures/1080p` 约 27.8MB。
  - `assets/theme_preview` 约 16.2MB。
  - `assets/settings_maintained/maintained-settings-res.apk` 约 6.6MB。
  - `assets/settings_native` 约 3.5MB。
- 下一轮不建议直接删除这些目录，应先确认引用点：
  - 主题预览图可以考虑改成更小尺寸或 WebP/JPG。
  - `settings_maintained` 可以考虑把实际用到的资源合并进主 APK，取消内嵌 APK。
  - `Textures/1080p` 需要继续按实际 12 / 20 宫格、主题和文件夹引用逐项裁剪。
- Manifest 里仍存在大量原版系统级 / Smartisan 私有权限，部分普通 ROM 可能会提示风险；要真正清理需要对二进制 Manifest 做节点级删除或改造构建流程，不宜只改文本 Manifest。

### 2026-06-02：桌面设置缺口第一批补齐

修复内容：

- 桌面隐藏虚拟键：
  - restored maintained 首页 `item_id_hide_navigation_bar` 开关，绑定 key `launcher_hide_navigation_bar`。
  - Launcher 主 Activity 在 `onCreate()`、`onResume()`、`onWindowFocusChanged()` 中读取该 key，只在桌面主界面应用 `HIDE_NAVIGATION`、`IMMERSIVE_STICKY`、`LAYOUT_HIDE_NAVIGATION`、`LAYOUT_STABLE`。
  - 设置页、主题页、图标页不直接应用隐藏虚拟键，避免影响非桌面界面。
- 角标相关强迫症选项：
  - maintained 风格设置首页新增“隐藏图标上的角标”和“紧贴屏幕横扫清除角标”两个开关。
  - 分别绑定 `launcher_hide_badge` 和 `launcher_badge_swipe_clean`，沿用旧桌面读取 / 刷新链路。
- 更多区域：
  - “检查更新”从静态本地版本弹窗改为请求 `https://api.github.com/repos/15255040419/Smartisan-original-launcher/releases/latest`；如果 Release 中存在 `.apk` asset，提示“发现新版本”并通过 DownloadManager 下载，下载完成后仍需要用户走系统安装确认。
  - “关闭电池优化”优先使用 `ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS` + 当前包名 `com.smartisanos.launcher`，目标是直接弹出当前锤子桌面的电池优化确认；系统或权限不允许时回退当前应用详情页，不再默认进入所有应用的电池优化列表。
  - “关于我们”从简短信弹窗改为完整页面：顶部锤子风格标题栏、Smartisan OS 标识卡片、“更多 Smartisan 的应用软件”列表和“关注我们”分组。
  - 隐藏“分享此应用给朋友”“问题反馈”“用户体验改进计划 / Smartisan 服务条款”，并修正更多区域卡片背景。
- 下滑 / 上滑搜索：
  - 原桌面手势代码实际只认上滑，已改为上下滑方向都可进入搜索，满足“下拉搜索”的使用预期。
  - 移除旧逻辑中前三次只弹 `fling_down_tips` 提示、不真正打开搜索的分支，第一次触发就直接进入搜索页。
  - `CallStubUtils.Q()` 不再调用缺失的 `com.smartisanos.quicksearch.provider.extra`，改为直接启动本项目内置搜索页。
  - 将旧 `ua.fc()` 搜索目标从缺失的 `com.smartisanos.quicksearch / com.android.quicksearchbox.SearchActivity` 改为已注册的 `ThemeChooserActivity`，并通过 `launcher_show_search=true` extra 进入搜索模式。
  - `MaintainedLauncherSettingsHost.show(...)` 根据 extra 切换为内置搜索页，支持应用名 / 包名过滤和点击启动。
  - Launcher 主 Activity、RootView 和 SMGLSurfaceView 均加了 Android View 层兜底；真实桌面手势仍以原 SMEngine 链路为主。

验证：

- `build.bat` 构建通过，输出 `build\launcher-signed.apk`。
- `adb install -r -d build\launcher-signed.apk` 安装到 `emulator-5554` 成功。
- 设置首页截图确认“桌面隐藏虚拟键”“隐藏图标上的角标”“紧贴屏幕横扫清除角标”均显示为同款锤子开关。
- 直接启动 `ThemeChooserActivity --ez launcher_show_search true` 可打开内置搜索页；输入 `root` 后列表过滤到 Root Explorer。
- adb 模拟下拉在当前 MuMu / Lawnchair 并存环境中不稳定经过 Smartisan 的 SMEngine 手势分发；代码层已修复方向判断、前三次提示吞掉搜索、QuickSearch provider 缺失三处实际阻断点，仍建议在真实手势操作中补一次截图回归。
- 通过系统设置值和桌面启动路径确认 Launcher 可读取 `launcher_hide_navigation_bar` 并应用隐藏虚拟键 flags；当前模拟器本身底部虚拟键不可见，仍建议在有三键导航的设备上补充截图回归。

涉及文件：

- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
- `launcher/tools/maintained_settings_res/res/layout/setting_main.xml`
- `launcher/smali/com/smartisanos/launcher/Launcher.smali`
- `README.md`
- `DEVELOPMENT_LOG.md`

### 2026-06-02：桌面图标大小滑块接入 12 / 20 宫格

背景：

- 用户希望参考 `rianlu/smartisan-launcher-maintained` 的图标大小调节能力，但必须适配当前 original-port 的 12 / 20 宫格，而不是退回 maintained 的 9 / 16 宫格语义。
- 用户要求设置入口放在应用图标页顶部“改进版图标”和“图标包”之间，并且调节后要立即生效。

修复内容：

- 应用图标设置页：
  - 在顶部卡片组中新增“桌面图标大小”行，位于“改进版图标”和“图标包”之间。
  - 三行共用 maintained 的 top / middle / bottom 卡片背景，保持为一个整体。
  - 右侧显示当前百分比，例如 `100%`、`150%`。
  - 点击“桌面图标大小”整行弹出滑块；“图标包”仍保持只点击右侧状态文字弹窗。
- 图标大小弹窗：
  - 使用 `SeekBar` 支持 50% - 150% 连续调节。
  - 弹窗内实时显示当前百分比，按 `liying2008/SmartisanDialog` 的标准弹窗比例整理为 53dp 标题栏、内容区和 47dp 底部按钮区。
  - 预览区不再使用具体图标，改为“小 / 中 / 大”三个文字，文字字号对应三档大小。
  - 点击“小 / 中 / 大”所在等宽区域会立即把滑块跳到 50% / 100% / 150%，百分比同步刷新。
  - 进度条、滑块和“确定”使用蓝色强调；“取消”保持灰色；底部按钮背景不会遮住弹窗圆角，上下四角保持一致圆角。
  - 点击确定后写入 `launcher_icon_size` 本地 prefs；`Settings.Global` / `Settings.System` 只作为兼容兜底读取来源。
- 桌面生效逻辑：
  - 在 `Constants.initLayoutParams()` 中于 `initLayoutProperty()` 后应用图标大小比例。
  - 通过 `LauncherSettingBridge.readIconSizePercent(Context)` 读取并规范化百分比，读取顺序与设置页保持一致：本地 prefs 优先，系统 Settings 兜底。
  - 缩放 `LayoutProperty` 的 `icon_size_origin`、`icon_size_with_shadow`、`icon_size_origin_resize` 和 `name_off_set_y`。
  - 覆盖 `layoutPropertyMap` 中所有桌面布局 mode，确保当前 12 宫格、20 宫格以及内部映射 mode 都能命中。
  - 保存后发 HOME intent 回到桌面，再重启当前 Launcher 进程；这是参考 maintained 后确认的可靠路径，因为 `Constants` 只在 Launcher 启动时完整初始化，运行时只刷新 `LayoutProperty` 会出现只有“桌面设置”等特殊节点变大/变小、普通应用图标不更新的问题。

验证：

- `build.bat` 构建通过，输出 `build\launcher-signed.apk`。
- `adb install -r -d build\launcher-signed.apk` 安装到 `emulator-5554` 成功。
- 进入“桌面设置 -> 应用图标”确认新增行显示在“改进版图标”和“图标包”之间，弹窗可正常打开。
- 通过 UI 从 100% 调到 50%，确认后自动回桌面并重启，截图确认 12 宫格所有图标统一缩小。
- 再通过 UI 从 50% 调到 150%，确认后自动回桌面并重启，截图确认相机、图库、设置、浏览器、文件、游戏中心、应用分身、Google、Root Explorer 和“桌面设置”全部统一放大。
- 重新安装后打开图标大小弹窗，确认点击“小”直接跳到 50%，点击“大”直接跳到 150%，弹窗底部圆角和顶部圆角一致。

maintained 对照结论：

- `smartisan-launcher-maintained/res/layout/setting_main.xml` 中除当前已接入功能外，还有 `item_id_hide_navigation_bar`、`more_check_upgradation`、`setting_battery_optimization`、`setting_share`、`setting_user_experience`、`setting_about_us` 等入口。
- maintained 文档 `docs/compatibility-fixes.md` 明确记录过“桌面隐藏虚拟键”应写入 `launcher_hide_navigation_bar`，并且只对 Launcher 主界面生效，不应影响设置、主题、搜索等界面。
- 当前 original-port 中 `MaintainedLauncherSettingsHost.show(...)` 仍主动隐藏 `item_id_hide_navigation_bar`，检查更新和电池优化仅是 Toast 占位；“分享此应用给朋友”和“用户体验改进计划”已明确不需要移植。
- 强迫症相关除“隐藏桌面图标名称”外，旧原生 / 临时页面还记录过“隐藏图标上的角标”和“紧贴屏幕横扫清除角标”，当前 maintained 风格主页面未接入这两个开关；后续优先级建议为：桌面隐藏虚拟键 -> 隐藏图标角标 -> 横扫清除角标 -> 检查更新 -> 电池优化 / 关于入口。
- 下滑 / 上滑搜索：当前工程保留 `StartActivityForSearch`、`SearchProvider`、`LauncherCallProvider.method_system_show_search`、`method_start_swipe_anim`、`fling_down_open_search_anim` 和 quicksearch 入口痕迹；maintained 记录过搜索权限、搜索结果和分身应用结果兼容修复。当前设置宿主仍隐藏默认搜索引擎设置项，后续需要先确认桌面手势触发链路，再补权限、搜索入口和结果适配。
- 天气：当前工程保留天气权限、天气资源、旧 Smartisan 天气库和旧天气接口痕迹；maintained 的兼容方向是不要依赖旧天气接口，天气图标优先作为入口拉起系统 / 已安装天气应用。后续建议按这个方向做，避免旧接口失效导致桌面入口不可用。
- 日历：当前工程保留日历权限、日历名称和动态图标资源线索；后续要单独验证桌面日历图标是否能跟随日期刷新、点击是否能拉起系统 / 已安装日历应用，并处理没有日历应用时的兜底。
- 提醒角标：当前工程已有 `launcher_hide_badge`、`launcher_badge_swipe_clean`、badge 读取 / 刷新和滑动清除痕迹；maintained 文档记录过多厂商 unread broadcast 兼容。后续要分两层做：先恢复旧 Smartisan / 厂商未读数广播显示，再评估是否接入现代 Android 通知监听或 badge 兼容桥，让普通应用通知也能稳定转成桌面角标。

涉及文件：

- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
- `launcher/tools/java/com/smartisanos/launcher/theme/LauncherSettingBridge.java`
- `launcher/smali/com/smartisanos/launcher/data/Constants.smali`

### 2026-06-01：应用图标页交互、样式和刷新稳定性修复

背景：

- 用户反馈应用图标页的“改进版图标”开关虽然接近首页开关，但不是同一个 Smartisan/maintained 样式。
- 选择单应用图标后页面会整体刷新并跳回顶部，尤其从相册选择图片返回后会闪一下回到顶部。
- 点击右侧图标行的文字区域也会弹出选择框，实际预期是只有图标块或图标包右侧状态文字可以点击。
- 图标包行宽度和背景没有和上方开关组成同一组卡片。

修复内容：

- `改进版图标` 开关：
  - 从手写 `LinearLayout + SwitchEx` 改为复用首页同款 `SettingItemSwitch`。
  - 使用 maintained 的 `setting_item_switch_layout`、`SettingSubItemSingleStyle` 背景和同一个 `SwitchEx` 绘制链路。
  - 点击整行和点击开关本身都能切换，但视觉样式不再单独手写。
- `图标包` 行：
  - 背景改为 maintained 的 `selector_setting_sub_item_bg_bottom`，和上面的 `改进版图标` 行组合成一个整体。
  - 默认显示 `不使用图标包`。
  - 弹窗入口收窄为右侧状态文字，点击左侧 `图标包` 标题不再弹出选择框。
- 单应用图标选择：
  - 左侧系统原图、右侧推荐/加号图标块保留点击。
  - 取消整行点击，右侧应用名和说明文字不再误触发弹窗。
  - 选择左侧默认图标、右侧推荐图标后只刷新当前行，不再调用 `showIconPage(activity)` 整页重建。
- 相册自定义图标：
  - 保存选择图片前的当前滚动位置。
  - 图片返回后优先在当前页面查找对应应用行并刷新该行。
  - 如果当前行找不到，才兜底重建应用图标页，并恢复原来的 `ScrollView` 位置。
- 全局改进版图标开关：
  - 开启/关闭后更新当前页面所有已渲染图标行的红色对号和说明文字。
  - 不再通过整页重建制造滚动跳动。

涉及文件：

- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
- `README.md`
- `DEVELOPMENT_LOG.md`

验证：

- `build.bat` 构建通过，输出 `build/launcher-signed.apk`。
- `adb install -r -d build\launcher-signed.apk` 安装到 `emulator-5554` 成功。
- 已在 MuMu 虚拟机中确认：
  - 开关样式与桌面设置首页同款开关一致。
  - 选择推荐图标、默认图标时当前页即时更新。
  - 从相册选择图片作为图标后保持当前位置。
  - 右侧应用文字区域不弹窗。
  - 图标包只有右侧状态文字区域弹窗，左侧标题区域不弹窗。

后续注意：

- 应用图标页当前仍由 `ThemeChooserActivity` 承载 maintained 风格兼容页，还不是完整迁移的原生 Smartisan Settings Activity。
- 图标自动识别资源和 Smartisan 网络图标链路仍建议继续做更多应用回归，尤其是系统应用、Google 应用和第三方应用混合安装场景。

