# 开发与修复记录

## 本文档职责

本文档负责记录 BUG 根因、修复方式、验证过程、回归注意和历史决策。每次修 BUG、改行为、推翻旧方案、做 ADB / 真机验证后，都要在这里新增倒序日期记录，并同步维护顶部“当前状态总览”。

本文档和其他文档的边界：

- README 只放当前安装方式、当前能力、版本 / 兼容基线和关键防回归规则；不要把本文档的每日流水复制进 README。
- `APK_INVENTORY.md` 负责原始 APK、反编译目录、主题包身份和 Release 资产筛选规则；本文档只在修复过程需要时引用结论。
- `BUILD_AND_VERSION_NOTES.md` 负责构建工具、PATH、签名、版本号写入点和二进制 Manifest 修改；本文档不重复这些脚本细节。
- 如果本文档历史小节和顶部“当前状态总览”冲突，以顶部“当前状态总览”和最近日期记录为准。

注意：本文档只保留当前可信记录和倒序每日修复记录。旧归档中已经被后续修复覆盖或推翻的内容已删除；如果本文档和 `README.md` 冲突，以本文档顶部“当前状态总览”为准。

构建工具、系统 PATH、签名流程、APK 版本号写入点和二进制 Manifest 修改方式，统一记录在 `BUILD_AND_VERSION_NOTES.md`。改版本或临时降版测试检查更新前先看该文档，最终版本号必须以 `aapt2 dump badging build\launcher-signed.apk` 为准。

## 当前状态总览（2026-06-21）

### 已完成

- APK 可通过 `build.bat` 构建、签名并输出 `build\launcher-signed.apk`，最近多次安装验证通过。
- 正式发布目标为 `v1.5.0 / 25`；当前工作区处于临时测试版本 `v1.4.9 / 24`，用于测试“检查更新”从低版本升级到线上版本。最终 APK 仍以 `launcher/original/AndroidManifest.xml` 二进制清单和 `aapt2 dump badging build\launcher-signed.apk` 为准，文本 Manifest、设置页字符串和二进制 Manifest 必须同步维护。
- 当前桌面主 APK 为 `minSdkVersion=23`、`targetSdkVersion=28`，理论安装基线是 Android 6.0+（API 23+）；最终 APK 元数据已更新为 `compileSdkVersion=36`、`platformBuildVersionName=16`，按 Android 16 安装方向保留 target 28。
- 兼容安装与包体瘦身已持续推进：最终 APK 的 `minSdkVersion` 从 29 降到 23，`targetSdkVersion` 调整为 28；纹理资源统一走 `1080p`，删除冗余资源和不再使用的独立搜索产物后，当前 `build\launcher-signed.apk` 约 50.2MB。
- 构建签名流程已从 `jarsigner` 旧 v1 签名改为 `zipalign -p` 后用 `apksigner` 输出 v1/v2/v3 签名，修复 Android 12 等新系统上可能因只有 v1/JAR 签名而安装失败的问题。
- 桌面主入口、桌面内“桌面设置”虚拟入口、12 / 20 宫格、主题页、壁纸页、翻页动画页、应用图标页、三个设置开关均已接入。
- 经典黑主题 12 / 20 宫格顶部网格和底部 Dock 资源已从原版 `com.smartisanos.launcher-3.apk` 重新抽取覆盖，顶底色差问题已修复。
- 桌面设置页和桌面已尽量保持在同一个 `smartisanos.task.launcher` 任务栈内，修复主题设定后“返回桌面 -> 又闪回设置页 -> 再回桌面”的双跳问题。
- 首次切换主题不播放翻页过渡动画已修复：主题设定消息不再因为桌面冷启动、数据异步加载或设置页任务栈切换而丢失动画快照，桌面就绪后会继续消费待执行主题动画。
- 普通不透明主题切换时不再把用户壁纸作为背景传入，避免所有主题都透出系统壁纸。
- 透明主题壁纸链路已接入 `launcher_wallpaper_uri`、私有壁纸副本、缩略图和 `gaussian_wallpaper.png` 兜底；“恢复默认壁纸”会清理自定义副本并回到当前主题内置背景。
- 主设置页缩略图已按 maintained 方向调整：桌面主题 / 桌面壁纸 / 桌面翻页动画使用竖向带框缩略图，应用图标不额外加白色外框。
- 文件夹打开与关闭两套布局均已按各自可见边框自适应对齐：预览在 4 项以内使用 2x2、5-9 项使用 3x3；关闭预览以当前 `icon_size_with_shadow` 为容器，按文件夹 PNG 内部列中心和每层可见区域中心计算图标边长、边距与间距；打开状态按书架 PNG 的可见层中心和固定三列摆放。两套逻辑都使用归一化比例，不依赖某个屏幕的固定像素偏移。
- 应用图标替换链路已从设置页预览扩展到桌面主图标加载入口，支持 redirect、自定义图片、图标包 appfilter 和系统原图回退。
- 应用图标页顶部“改进版图标”已改为复用首页同款 `SettingItemSwitch` / `SwitchEx`，不再手写开关；“图标包”行改用 maintained 卡片背景，与上方开关行组成一组。
- 应用图标页新增“桌面图标大小”滑块，位置在“改进版图标”和“图标包”之间；支持 50% - 150% 连续调节，并可点击“小 / 中 / 大”快速跳到 50% / 100% / 150%；保存后回到桌面并完整重启 Launcher，让 12 / 20 宫格里的所有普通应用和桌面设置虚拟入口统一应用新尺寸。
- 动态日历已完成普通 Android 厂商兼容：按 `CATEGORY_APP_CALENDAR` 查询系统日历并补充常见厂商包名回退，不再只认 `com.android.calendar`；纹理缓存键加入年月和年内日序，系统日期变化后不会继续复用旧日期纹理。
- 活动日历的双层、错位和尺寸问题已收口：主题 / 改进版静态前景在识别为日历后隐藏，日期只由活动层绘制；日期宽高与 Y 偏移在同一日历坐标系内计算；根节点使用运行时 `icon_size_origin / calendar_back_size`，并应用与普通 / 改进版图标相同的 84% 可见区归一化。图标大小不再读取 `Constants.icon_scale` 或写日历专用固定倍数。
- 50%-150% 图标比例现在会在每个 Launcher 新进程从 XML 基准重新应用一次；修复杀进程、覆盖安装或系统回收后普通图标恢复 100%，导致日历和普通图标再次失配的问题。
- 应用图标页单应用切换已改为行级刷新：选择左侧默认图标、右侧推荐图标或相册自定义图标后，当前页面和滚动位置保持不变；只有找不到当前行时才兜底重建并恢复滚动位置。
- 应用图标页点击范围已收窄：只有左侧默认图标块和右侧推荐/加号图标块响应选择，右侧应用名称/说明文字区域不再弹出选择框。
- 当前搜索页使用 launcher 内 `ThemeChooserActivity` / `MaintainedLauncherSettingsHost.showSearchPage()` 自绘页面，不再依赖、下载或构建锤子独立搜索 APK；桌面下滑只作为进入自绘搜索页的手势入口。
- 强迫症选项已从设置首页零散开关收纳到二级页；主页入口和二级页标题走资源字符串，英文系统显示 `OCD Settings`，中文系统显示“强迫症选项”。
- 双开 / 多用户应用显示和启动已补入 LauncherApps 查询与 `startActivityAsUser` 兼容路径，避免双开应用只显示主用户图标或点击后启动错用户。
- 双开 / 多用户应用继续对照 maintained 调整：搜索页、桌面应用列表和启动链路都尽量使用 LauncherApps 多用户查询；分身应用支持叠加原版风格面具标记。
- 应用图标识别逻辑已继续向 maintained 对齐，同时保留当前工程已有的图标识别能力，减少“闲鱼 / 酷安”等普通应用被误识别成应用商店图标，以及系统“电话 / 拨号 / 电话本”等名称匹配不稳定的问题。
- 毛玻璃主题已改为只保留 `smartisan_theme_aero` 作为透明壁纸主题，移除白雾主题入口和资源引用；毛玻璃桌面与编辑页文字已恢复为原版风格白色文字效果。
- 透明主题切换已从自定义运行时旁路改回原版方向：透明模式写入 `launcher_grid_theme` 的 0/1，普通主题 ID 只写入 `launcher_theme`；透明主题包只用于资源注册，不再把 `smartisan_theme_trans` 当普通主题写入或送入普通主题切换队列，避免关闭透明主题后无法恢复上一主题。
- 透明主题安装包使用 `build\theme-trans-signed.apk`，安装后包名为 `com.smartisanos.launcher.theme.trans`，`minSdkVersion=23`、`targetSdkVersion=28`，最终 APK 元数据已更新为 `compileSdkVersion=36`、`platformBuildVersionName=16`，用于普通 Android / Android 15 / Android 16 安装；`original_apks\com.smartisanos.launcher.theme.trans.apk` 是原始参考包，`targetSdkVersion=17`，不要作为新系统安装包。
- 透明主题开启后只能使用默认翻页动画：主设置页隐藏“桌面翻页动画”入口，翻页动画读写被钳制为 `0`，避免透明主题资源链路和非默认翻页动画混用。
- 普通不透明主题下主设置页不再显示“桌面壁纸”入口；只有毛玻璃主题 `smartisan_theme_aero` 或开启透明主题时才显示。透明主题仍隐藏“桌面主题”和“桌面翻页动画”，只保留“桌面壁纸”和“应用图标”，避免普通主题误进入只对壁纸主题生效的设置。
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
- 透明主题换壁纸要按原版链路做兼容，不能只依赖系统 Settings 或系统广播：
  - 原版 `ApplicationProxy` 的 `M.onReceive()` 监听 `android.intent.action.WALLPAPER_CHANGED`，仅在 `Constants.isTransparentTheme=true` 时继续。
  - 原版先通过 `e.s.ha(context)` 读取当前透明壁纸 URI，再和 `Constants.sWallpaperUri` 比较；不同则更新 `Constants.sWallpaperUri`，最后调用 `Eb.getInstance().lh()`。
  - 原版 `Eb` 重建主背景时会在高斯 / 透明主题下使用 `Constants.sWallpaperUri` 调 `e.s.n(context, uri)` 解码壁纸，并刷新 `background.png` 纹理；`lh()` 主要负责透明壁纸变化后的节点 / blur 背景刷新。
  - 实测普通 Android / 非系统签名设备上，`Settings.Global.putString(...)` 会因 `WRITE_SECURE_SETTINGS` 被拒，应用主动发送 `ACTION_WALLPAPER_CHANGED` 也会被系统拒绝；此时预览图会更新，但桌面可能继续显示系统壁纸。
  - 2026-06-16 真机日志确认：当前普通 Android 设备上桌面实际背景仍优先跟随系统壁纸；只保存 launcher 私有壁纸副本会导致壁纸页预览变化，但桌面主界面继续显示旧系统壁纸。因此选择壁纸成功后必须直接调用 `WallpaperManager.setStream(..., FLAG_SYSTEM)` 同步系统桌面壁纸，私有 URI / `Constants.sWallpaperUri` / `Eb.Vh()` 作为原版透明主题链路和预览兜底继续保留。
  - Android 7.0+（API 24+）支持 `WallpaperManager.setStream(InputStream, Rect, boolean, FLAG_SYSTEM)`，当前主 APK `minSdkVersion=23`，所以 Android 8 可以使用该接口；低版本保留 `WallpaperManager.setStream(InputStream)` 兼容回退。
  - 普通应用不应主动发送系统保护广播 `Intent.ACTION_WALLPAPER_CHANGED`；系统壁纸由 `WallpaperManager` 设置成功后，系统会自行分发真实壁纸变化事件。手动发送只会在普通 Android 上产生 `Permission Denial` 噪音，不能作为刷新依据。
  - 兼容修复必须把系统 Settings 和广播视为辅助：选择壁纸后先写 launcher 私有 prefs，再直接同步 `Constants.sWallpaperUri`，优先调用原版 `Eb.Vh()` 触发 `background.png` 主背景纹理重建，再调用 `Eb.lh()` / SMEngine 刷新透明壁纸节点和模糊背景。不能只调用 `lh()`，否则日志只会出现 `changeWallpaper TEXTURE_ID_BLUR_BACKGROUND`，主桌面仍可能不更新。
- 检查更新读取 Gitee 下载仓库 Release 列表，只识别 `launcher-` 前缀的软件发布标签，并按版本号选择最高版本；APK 资产只选择桌面主 APK，跳过搜索、主题和 `theme-trans-signed.apk` 等附加包。下载走系统 `DownloadManager`，优先使用标准 Gitee Release 下载地址，失败后尝试 Release 资产返回的备用地址；下载完成后使用 `DownloadManager.getUriForDownloadedFile(downloadId)` 得到安装 URI。
- 检查更新会复用已经下载完成的同版本安装包：保存 Release `tag`、APK 文件名和 `downloadId`；再次检查到同一线上版本时，`STATUS_SUCCESSFUL` 显示“安装”，`RUNNING/PENDING` 显示“下载中”，失败或资产变化才重新下载。
- 后续发布 GitHub / Gitee Release 时，推荐同时上传 `build\launcher-signed.apk` 和 `build\theme-trans-signed.apk`；前者是桌面主 APK，后者是透明主题 Android 15 / Android 16 兼容安装包。不要把 `original_apks\com.smartisanos.launcher.theme.trans.apk` 当用户安装资产发布。
- 桌面内“桌面设置”虚拟入口进入设置页后，已给 maintained 设置首页和壁纸页增加短暂点击保护；壁纸选择器入口也会再次检查保护状态并写入日志，避免 Activity 切换或残留输入导致刚进入设置就误打开图片选择器，进而被模拟器关闭整个 Launcher task。
- 主题详情下载按钮状态已按当前主题项隔离，避免切换到其他主题后仍残留“正在下载”状态。
- 桌面图标加载链路加入 drawable 归一化兜底，改善 MuMu 等环境 adaptive drawable 或特殊图标不显示的问题；MuMu 多用户 / 分身查询缺少 `INTERACT_ACROSS_USERS` 时，`getInstalledPackagesAsUser` 和 `queryIntentActivitiesAsUser` 会退回当前用户查询，避免初始化循环清库导致桌面空白。
- 主题详情页预览图已改为外层居中容器，手机壳和主题截图保持原版层级叠加，并会按标题栏和底部主题色栏之间的可用空间自适应缩小，避免小屏手机底部被颜色栏遮住；从主题详情返回主题列表、从关于我们返回设置首页时会保持原滚动位置，并在首帧绘制前恢复，避免上下晃动。
- 对照 maintained 的 APK 结构确认：maintained `minSdkVersion=19`、`targetSdkVersion=28`，且只保留 `assets/Textures/1080p`；当前工程第一轮先降到 `minSdkVersion=23`，保留更多运行安全余量，后续如需覆盖 Android 5.x / 4.x 再继续做 API 兼容回归。

### 已完成但需要继续回归

- 首次主题切换动画：主问题已修复，仍需用更多主题、多次清数据冷启动验证是否还有边缘竞态。
- 透明主题换壁纸：选择、即时刷新、恢复默认主链路已修复，仍需回归毛玻璃主题。
- 主设置页缩略图：当前 ImageView 显示上限为 `53dp x 63dp`，三项带框缩略图源 bitmap 为 `180 x 210 px`、四周 `12 px` 内边距；这些尺寸是为修复边框不等宽、图标过大、双层边框后固定下来的基准。

### 未完成 / 待处理

- 透明主题下 Dock 区域已对照 `original_apks/com.smartisanos.launcher.theme.trans.apk` 回归：兼容安装包 `build/theme-trans-signed.apk` 使用原版 `dock_back.png` 顶部轻暗边和低 alpha 半透明层，不再使用手工渐隐或加重白雾。后续不要再动透明主题 Dock 资源，也不要为了修 Dock 替换 `background.png` / `t_blur_background` 的职责。
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
  - [x] 日历：已支持系统 / 厂商日历识别、随系统日期刷新、静态层去重以及 50%-150% 图标尺寸联动；已在 VIVO Android 16 真机验证。
- 提醒角标可以作为后续功能实现目标，但不能简单等同于“应用有通知就一定显示”。当前 old Smartisan / 厂商未读数广播或系统 badge 数据能接入时才有机会显示；普通 Android 通知角标需要额外接入通知监听或 badge 兼容桥。
- 在线主题 APK 下载后仍依赖用户手动安装，普通应用没有静默安装能力。
- 12 / 20 宫格、文件夹、编辑模式、拖拽落点、Dock 动画仍需要更多分辨率和真机回归。

## 阅读顺序

建议按下面顺序接手，不要从文件中间的旧计划直接开始：

1. 先读本节“当前状态总览”，确认哪些已经完成、哪些还待验证。
2. 再读“每日修复记录（倒序）”，按日期倒序查最近改动。
3. 需要追溯原因时，按每日记录由近到远阅读；已被后续修复覆盖的旧结论不再保留。

## 每日修复记录（倒序）

### 2026-06-21：厂商日历识别、日期刷新、双层错位与统一图标尺寸路径

- 根因不是单一素材错误，而是原版仅把 `com.android.calendar` 当活动日历；VIVO 的 `com.bbk.calendar` 会先按主题 / 改进版静态图标绘制，随后兼容层又叠加日期，形成一大一小、底部错位或日期固定在素材中的现象。
- 新增 `CalendarAppDetector`：优先查询 Android 标准 `ACTION_MAIN + CATEGORY_APP_CALENDAR`，再用 Google、VIVO/BBK、Samsung、MIUI、ColorOS/Oplus、Huawei、OnePlus 等常见包名回退。`ItemInfo.Te()` 和活动图标创建统一使用该检测结果。
- 静态前景节点可能晚于活动层创建，因此只在创建活动层时隐藏静态节点不可靠；当前在每次静态纹理绑定完成后再次检查 `ItemInfo.Te()`，日历则强制隐藏该前景，保证最终只有一个日历底图和一个日期层。
- 日期纹理缓存键加入年份和年内日序，避免跨日后继续命中旧 bitmap；活动日期节点保持可见，并继续响应系统日期 / 时间 / 时区刷新链路。VIVO Android 16 真机已确认系统日期 21 时桌面显示 21，刷新后不回退到主题素材中的 20。
- 日期层错位修复使用统一日历坐标：日期节点宽为原始日数字宽的 90%、高为 80%，Y 偏移按 76% 计算，并同步修正合成 bitmap 路径，避免只改预览或只改实时节点导致再次分叉。
- 尺寸最终统一到普通图标路径：活动日历根节点以当前 `LayoutProperty.icon_size_origin / calendar_back_size` 得到内容框比例，再应用普通 / 改进版图标已有的 84% 可见区归一化；不再使用不会随设置稳定变化的 `Constants.icon_scale`，也不再使用日历专用 1.08 等视觉倍数。
- 图标百分比保存虽然正确，但旧实现只在“待处理变更”存在时缩放 `LayoutProperty`；覆盖安装、杀进程或系统回收后会从 XML 恢复 100%。`maybeApplyLauncherIconSize()` 现在每个新进程从 XML 基准只执行一次 `100 -> 保存值`，避免漏应用和重复乘算。
- 验证设备：VIVO V2435A、Android 16；ADB 覆盖安装、冷启动、日期 21、12 宫格以及图标尺寸变化均用于回归。时钟当前走普通图标尺寸链路，未增加厂商专用缩放特判。

### 2026-06-20：图标大小即时生效、文件夹对齐、冷启动网格与设置首页排版

- 图标大小不立即生效的根因不是设置值没有保存，而是保存后只把已有 Launcher Activity 拉到前台。旧进程中的 `Constants.layoutPropertyMap`、网格点、普通应用 `SceneNode` 和 SMEngine 纹理仍使用修改前尺寸；因此图标大小保存后必须完整重建 Launcher。
- 已确认不能用半套运行时刷新解决：只修改 `LayoutProperty` 并通知页面时，普通应用节点仍保留旧几何尺寸，而文件夹预览视口已换成新尺寸，会立即形成普通图标、文件夹外框和预览内容三套比例。图标大小保存后现在结束设置任务、终止旧 Launcher 进程，并用显式 Launcher Intent 的精确 `AlarmManager` 任务拉起全新进程；新进程一次性创建 `Constants`、网格、普通图标和文件夹预览，修改确认后自动回到桌面，无需用户手动退出或进入编辑模式。
- 删除 `Constants.applyLauncherIconSize()` 对 `MODE_9` 的跳过。当前桌面 3x3 模式同样必须应用用户比例；跳过它正是“应用图标大小改了但当前桌面不变”的直接回归点之一。
- 关闭文件夹预览不能简单沿用 XML 固定边距，也不能把整个正方形平均切成 2 / 3 行。实测 MODE_12 的 246px 文件夹纹理与 MODE_20 的 178px 纹理具有相同的归一化内部几何；2x2 可见行中心为 0.280 / 0.646，列中心为 0.356 / 0.644；3x3 可见行中心为 0.220 / 0.464 / 0.708，列中心为 0.308 / 0.500 / 0.692。`LayoutPropertyAdapter.centerFolderPreview()` 以当前 `icon_size_with_shadow` 乘这些比例，反算 top / left margin 和横纵间距，所以换屏幕、换 12 / 20 宫格、改变 50%-150% 图标尺寸后仍在每层可见区域垂直居中。
- 关闭预览图标边长固定为容器的 27%（2x2）和 17%（3x3），避免预览内容顶到隔板；预览视口已经按内部行中心摆正后，`folder_icon_center_offset_2_2 / 3_3` 必须归零，否则原版 `Zi()` 会再次整体平移，造成看似“算对后仍偏一边”。不要恢复旧的固定 7px X 修正。
- 打开文件夹使用另一张 1080x1356 书架纹理：`FolderCellPositionAdapter.adjustY()` 只允许作用于 `com.smartisanos.launcher.view.b.a` 文件夹页，围绕中间层按可见书架行高修正 Y；X 继续用原版固定三列。普通桌面页必须原样返回坐标，否则会重现冷启动上下大缝隙。
- 文件夹防回归计算顺序：先取当前关闭外框 / 打开书架的实际绘制尺寸，再从对应 PNG 的可见内部边界求行列中心，最后计算图标边长、margin 和 space；禁止按整张含透明边缘的 PNG 均分，也禁止按某一台设备截图写死像素。资源 XML 只保留原版基准，最终坐标统一在适配器中生成。
- 图标尺寸重启使用 requestCode `1002` 的精确 HOME PendingIntent；它与透明主题曾使用的 requestCode `1001` 属于同类闪回风险。设置首页 `show()` 现在同时取消 1001 和 1002，避免用户修改尺寸后立刻重新进入设置时，残留任务再次把设置页顶回桌面。
- 桌面设置首页三枚缩略图入口同步整理：缩略图左边距改为 12dp，与下方纯文字设置行的左侧视觉基线协调；箭头右侧内边距由 30dp 改为标准 12dp，与下方箭头对齐；副标题限制最多两行并在超长时尾部省略，避免“应用图标”说明挤成三行。
- 文档已按当前代码和实机结果统一清理：删除自建更新安装、独立搜索 APK、GitHub latest、搜索手势三层重复兜底、关闭预览仅整组缩放以及打开文件夹只在大于 1080 宽度修正等被后续实现推翻的方向；README 只保留当前能力和长期规则，具体参数与验证留在本记录，资产和构建细节分别留在另外两份专项文档。
- 桌面上下缝隙是另一项独立回归。对比并安装 `b36f1a9a08a1e9c67c626ebd32489a2e30868559`、干净 `5373636a` 和当前工作区 APK 后确认：两个提交 APK 冷启动都正常，只有最近文件夹坐标修改后的构建异常。`M.smali` 是桌面页与文件夹页共用的单元格实现；把原来的 `adjustX()` 改为 `adjustY()` 时，`FolderCellPositionAdapter` 丢失了 `com.smartisanos.launcher.view.b.a` 文件夹页类型检查，导致普通桌面 12 / 20 宫格也被套用书架行距，整个网格纵向缩短并居中。进入编辑模式走另一条布局刷新分支，所以返回后看似恢复。
- 缝隙修复：`adjustY()` 首先沿继承链确认当前 page 是打开文件夹页；普通桌面页直接返回原始 Y，只有文件夹页才按书架可见层中心修正。禁止在共用的 `M.smali` 坐标入口中使用不带页面类型保护的文件夹算法。
- 验证：`build.bat` 编译、zipalign、签名成功；APK 覆盖安装到 `emulator-5554`。在 1080x1920 / 560dpi 下，当前修复版冷启动的网格顶边直接贴合状态栏、底边直接贴合 Dock，与 `b36f1a9a` 基线一致，无需进入编辑模式；打开文件夹后三列和逐行排列保持正常。图标大小 50% / 100% 下关闭预览均按可见层中心缩放；改完尺寸后立即进入设置并停留 3 秒，`ThemeChooserActivity` 未再闪回。Logcat 未出现 `FATAL EXCEPTION`、`VerifyError` 或 `NoSuchMethodError`。

### 2026-06-19：文件夹预览、展开排列和多分辨率适配

- 对照用户提供的原版 / 当前截图和 `clean_launcher_raw` 原版代码确认，原版文件夹预览由 `launcher/smali/com/smartisanos/launcher/view/a/la.smali` 按数量选择 2x2 或 3x3 参数组；展开布局由 `launcher/smali/com/smartisanos/launcher/view/b/M.smali` 直接使用 `fa.ir()[index]` 的固定网格坐标，项目按顺序逐行填充。原版不会把最后不足一行的项目移动到整行中央。
- 当前错位根因分为打开、关闭两套坐标：打开文件夹曾插入 `adjustX()` 横坐标旁路，并混用了书架、图标、文字和裁剪区的纵向倍率；关闭预览则依赖资源 XML 固定 margin / space，改变外框和桌面图标尺寸后无法继续落在 PNG 的可见搁板中心。
- 修复方式：
  - 删除 `M.smali` 两处 `FolderCellPositionAdapter.adjustX()` 调用，展开文件夹重新直接使用原版网格坐标；四个项目显示为第一行三项、第二行第一项，列中心与第一行一致。
  - 12 / 20 宫格竖屏资源中的 `folder_preview_*` 只作为原始 100% 输入基准；运行时统一由 `LayoutPropertyAdapter.centerFolderPreview()` 根据当前 `icon_size_with_shadow` 和可见行列中心生成最终 2x2 / 3x3 参数。4 项以内保持 2x2，5-9 项保持 3x3。
  - 删除 `LayoutProperty.smali` 文件夹专用的二次 X/Y 缩放，只保留 `LayoutPropertyAdapter` 单一适配入口。
  - `MODE_9` 的 `folder_bookcase_*`、标题和分页点参数恢复原版基准。书架素材自身带透明边缘，节点宽度等于屏宽时，可见外框约占屏幕 84%，不能再额外乘 84%。
  - 保留原版的多套 `MODE_9` 坐标基准：`values-xxhdpi` 使用 1080 基准，`values-sw411dp` 使用 1440 基准；不把两套资源强制覆盖成同一份。
  - 实测原版 `folder_open_3_3.png` 为 1080x1356，透明区域外的书架范围为 y=129..1299，三层可见中心间距为 358。`LayoutPropertyAdapter` 以 `358 / 1356` 得到真实可见行高，再按行高限制图标、字体和 `name_off_set_y`，图标与文字作为同一组合留在层内。
  - `_folder` 的书架、网格、图标偏移、文字偏移和裁剪参数统一使用屏幕宽度倍率，禁止同一文件夹混用 `scaleX` 与超长屏 `scaleY`。
  - X 坐标继续完全使用原版 `fa.ir()` 固定三列。Y 坐标只在确认 page 类型为打开文件夹页后，以中间层坐标为锚点，用 `window_width * 358 / 1080` 计算当前可见书架行距；普通桌面页无条件返回原始坐标。
  - `a.1.smali` 的文件夹页面裁剪高度改为当前 `folder_bookcase_height`，使大屏放大后的第一、三行不会被旧的 1080 网格裁剪区截断。
- 验证：
  - `build.bat` 编译、zipalign、签名成功，输出 `build\launcher-signed.apk`。
  - `adb install -r -d` 覆盖安装到 `emulator-5556` 成功并保留原文件夹数据。
  - 同一 APK 在 1080x2424 / 420dpi、720x1600 / 280dpi、1440x2560 / 560dpi 三种配置实测：桌面文件夹预览 2x2 对齐；打开后第一行三列对齐，第四项位于第二行第一列；各行图标和文字均留在对应层内，长名称不越过外框。
- 防回归：
  - 不要按“最后一行视觉居中”重新移动文件夹项目；原版要求固定列中心逐行填充。
  - 关闭预览的 `left/top/side/space` 必须由同一组归一化可见行列中心一次性反算；不能只把旧 XML 参数整组乘比例，也不能分别追加 X/Y 固定修正。
  - 不要把书架节点宽度限制成屏宽的 84%：这会在 PNG 素材已有的透明边缘之外再扣一次边距，可见外框只剩约 70% 屏宽，表现为文件夹又窄又长，第一列长名称还会压过左边框。
  - 不要按 720 / 1080 / 1440 分别写像素偏移，也不要恢复已经验证失败的 `scaleX / scaleY + 固定百分比内边距`。自适应只允许依赖当前书架高度、当前屏幕宽度和原版网格中间行。
  - 放大最终行距时必须同步放大文件夹页面裁剪高度；只移动图标而不扩大裁剪区，会表现为第一行图标上半部分被截掉。

### 2026-06-17：更新下载通知与透明主题重启链路回归

- 修复“检查更新”开始下载后通知栏提前显示“安装”的问题。原因是更新下载通知在未完成状态也绑定了安装 PendingIntent；现在只有 `complete=true` 且存在已下载 APK / 下载 ID 时才显示“安装”动作，开始新下载前会先清理旧更新通知。
- 更新包下载改回 `DownloadManager` 标准链路，并参考 maintained 项目 / 主题下载安装方式安装：下载完成后只用 `DownloadManager.getUriForDownloadedFile(downloadId)` 生成 `content://downloads/...` 安装 URI，再附加 `FLAG_GRANT_READ_URI_PERMISSION` 拉起系统安装器。不要再把更新包优先交给自建 `PackageInstaller.Session` 或 `file://` 私有路径安装；Android 12+ 上这些路径容易出现无法弹安装器、错误码 `-2` 或安装器读不到文件的问题。
- 更新下载先 enqueue 标准 Gitee Release 地址；若 `DownloadManager` 返回失败，再自动切换 Release 资产返回的备用地址重新 enqueue。状态栏进度由系统下载管理器显示，应用内弹窗只做前台进度提示；下载完成通知和应用弹窗都使用同一个 downloadId 安装入口。
- 检查更新弹窗会复用已经下载完成的更新包：下载时保存当前 Release 的 `tag`、APK 文件名和 `downloadId`；再次检查到同一个线上版本时，如果 `DownloadManager` 状态为 `STATUS_SUCCESSFUL`，右下角按钮显示“安装”并直接调用 `installApk(downloadId)`。如果状态仍是 `RUNNING/PENDING`，按钮显示“下载中”，避免重复下载同一个安装包。
- 透明主题开启 / 关闭恢复原版方向的 Launcher 进程重启。上一轮为了避免设置页刚返回桌面时出现 SIGKILL 日志，把 `Process.killProcess()` 改成了裸 `startActivity()`，结果 `O.V()` / `Constants.isTransparentTheme` / `X.va()` 没完整重走，桌面会出现黑色主区域、Dock 和主题资源半加载。现在保留“显示加载层 -> 结束设置页 -> 重启进程”的完整初始化链路；从设置页触发时不再额外安排 `AlarmManager` HOME 重启，因为 Android 已会在 Launcher 进程结束后拉起默认桌面，残留闹钟反而会在用户立刻重新进入设置页后把页面顶回桌面。
- 修复开启 / 关闭透明主题后立即进入设置页仍会闪回桌面的问题。原因是旧的 `scheduleLauncherRestart()` 用 requestCode `1001` 排了延迟 HOME PendingIntent，进程重启后用户重新打开 `ThemeChooserActivity`，该 PendingIntent 仍可能延后触发并抢焦点。现在设置页入口会调用 `cancelScheduledLauncherRestart()` 清理残留闹钟；透明主题从 Activity 触发时直接结束设置页并杀旧进程，不再排 HOME 闹钟，非 Activity 场景才保留兜底调度。
- 闪回防回归定位：如果以后再次出现“开启 / 关闭透明主题后，立刻进入桌面设置页又自动返回桌面”，先查 `MaintainedLauncherSettingsHost.show(...)` 是否仍调用 `cancelScheduledLauncherRestart(activity)`，再查 `restartLauncher(context)` 是否又从 Activity 场景排了 requestCode `1001` 的 HOME `AlarmManager` PendingIntent。不要为了消除 SIGKILL 日志把透明主题切换改回裸 `startActivity()`，那会破坏透明资源完整初始化。
- 回归注意：透明主题、宫格和图标大小这类依赖 Launcher 启动链路完整初始化的设置，不要仅靠运行时刷新或裸启动桌面替代进程重启；否则资源表、SMEngine 纹理、`Constants` 状态和原版主题管理器可能不同步。

### 2026-06-16：桌面设置页偶发自动返回桌面排查

现象：

- 用户反馈启动后停在设置页面时，偶尔会自动返回桌面主页。
- ADB 复现路径为：从桌面底部“桌面设置”虚拟入口进入 maintained 设置页，等待数秒后观察任务栈。

ADB 结论：

- 直接 `am start -n com.smartisanos.launcher/.theme.ThemeChooserActivity --ez from_desktop_settings true` 启动设置页，连续观察未复现自动返回。
- 从桌面虚拟入口进入设置页时，旧包日志显示先进入 `ThemeChooserActivity`，约 7 秒后同一 Launcher 进程发起 `ACTION_GET_CONTENT image/*`，系统打开 `com.android.documentsui/.picker.PickActivity`。
- 随后 MuMu 日志出现 `tabs/tab close task:3861`，系统以 `remove task` 原因 kill `com.smartisanos.launcher`，所以表现为设置页退回桌面。
- 日志中没有 `AndroidRuntime FATAL EXCEPTION`，这次不是 Java 崩溃；真正异常点是刚进入设置页后误触发了“桌面壁纸 -> 选择图片”的壁纸选择器链路。

修复方式：

- `MaintainedLauncherSettingsHost.show()` 打开 maintained 设置首页时调用 `armSettingsClickGuard()`，给 Activity 切换后的早期输入增加 800ms 保护窗口。
- `showWallpaperPage()` 切入桌面壁纸页时同样重置保护窗口。
- 首页 `click(...)` 和二级简单列表 `replaceSimpleListWithScroll(...)` 的点击监听统一包装为 `guardedSettingsClick(...)`，保护窗口内的点击会被忽略并打印 `MaintainedSettings` 日志。
- `pickWallpaper()` 在真正拉起系统图片选择器前再次检查保护状态，并记录 `pickWallpaper requested by user`，后续如果再误开图片选择器，可以直接从 logcat 确认入口。

验证：

- `build.bat` 构建成功，输出 `build\launcher-signed.apk`。
- `adb install -r build\launcher-signed.apk` 安装到 `emulator-5554` 成功，设备显示 `versionCode=25`、`versionName=v1.5.0`。
- 使用同一路径从桌面底部“桌面设置”进入设置页，连续 18 秒任务栈一直停留在 `com.smartisanos.launcher/.theme.ThemeChooserActivity`。
- 修复后完整 logcat 中没有再出现 `ACTION_GET_CONTENT`、`PickActivity`、`remove task` 或 Launcher 被 kill 的记录。

涉及文件：

- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
- `DEVELOPMENT_LOG.md`

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

### 2026-06-07：v1.4.8 自绘搜索、主题详情与桌面恢复稳定性

修复内容：

- 版本发布：
  - 文本 `launcher/AndroidManifest.xml` 调整为 `versionCode=24` / `versionName=1.4.8`。
  - 同步修正最终构建注入的 `launcher/original/AndroidManifest.xml` 二进制 Manifest，确保最终 APK 真实版本为 `v1.4.8 (24)`。
  - 设置页“关于 / 当前版本”显示同步为 `1.4.8`。

- 搜索方案：
  - 搜索页由 launcher 内 `ThemeChooserActivity` / `MaintainedLauncherSettingsHost.showSearchPage()` 自绘，不依赖外部搜索 APK。
  - Release、构建脚本和 README 均不包含独立搜索安装包；桌面更新资产只选择主 APK。

- 检查更新与发布：
  - 软件检查更新只匹配 `launcher-` 标签，避免 `themes-v1` 主题发布被误识别成软件新版本。
  - Release 只把桌面主 APK 当作桌面更新资产；透明主题包可以随 Release 上传，但由桌面更新逻辑跳过。
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
  - 主 APK 中不包含 `quicksearch` / `bundled_apps` 资产。

### 2026-06-06：v1.4.7 更新下载与 Gitee 镜像测试版

修复内容：

- 版本发布：
  - 文本 `launcher/AndroidManifest.xml` 调整为 `versionCode=21` / `versionName=v1.4.7`。
  - 同步修正最终构建注入的 `launcher/original/AndroidManifest.xml` 二进制 Manifest，确保最终 APK 的真实版本也是 `v1.4.7 (21)`。
  - 设置页“检查更新”默认版本字符串同步为 `v1.4.7`。

- 下载镜像：
  - 软件更新版本列表读取 Gitee Release API，只遍历 `launcher-` 标签并选择最高版本；APK 下载优先 Gitee Release 镜像，失败后使用 Release 资产中的备用地址。
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
- 兼容安装：
  - 延续本日第一轮兼容修复，最终 APK 保持 `minSdkVersion=23`、`targetSdkVersion=28`。
  - 构建脚本继续使用 `zipalign -p` 和 `apksigner` 输出 v1/v2/v3 签名，改善 Android 12 等新系统通过文件管理器安装时失败的问题。
- 包体：
  - 保持 `pb.getResolution()` 统一返回 `1080p`，并继续使用移除冗余 `720p` 纹理后的瘦身构建输入，当前 APK 约 64MB。

验证计划：

- `build.bat` 构建通过。
- `aapt dump badging build\launcher-signed.apk` 应显示 `versionCode='16'`、`versionName='v1.4.2'`、`sdkVersion:'23'`、`targetSdkVersion:'28'`。
- `apksigner verify --verbose --print-certs build\launcher-signed.apk` 应显示 v1 / v2 / v3 签名均为 true。

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
  - “检查更新”读取 Gitee Release 列表，筛选 `launcher-` 标签最高版本，下载使用 `DownloadManager`，Gitee 优先并保留 Release 资产备用地址。
  - “关闭电池优化”优先使用 `ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS` + 当前包名 `com.smartisanos.launcher`，目标是直接弹出当前锤子桌面的电池优化确认；系统或权限不允许时回退当前应用详情页，不再默认进入所有应用的电池优化列表。
  - “关于我们”从简短信弹窗改为完整页面：顶部锤子风格标题栏、Smartisan OS 标识卡片、“更多 Smartisan 的应用软件”列表和“关注我们”分组。
  - 隐藏“分享此应用给朋友”“问题反馈”“用户体验改进计划 / Smartisan 服务条款”，并修正更多区域卡片背景。
- 下滑 / 上滑搜索：
  - 原桌面手势代码实际只认上滑，已改为上下滑方向都可进入搜索，满足“下拉搜索”的使用预期。
  - 移除旧逻辑中前三次只弹 `fling_down_tips` 提示、不真正打开搜索的分支，第一次触发就直接进入搜索页。
  - `CallStubUtils.Q()` 不再调用缺失的 `com.smartisanos.quicksearch.provider.extra`，改为直接启动本项目内置搜索页。
  - 将旧 `ua.fc()` 搜索目标从缺失的 `com.smartisanos.quicksearch / com.android.quicksearchbox.SearchActivity` 改为已注册的 `ThemeChooserActivity`，并通过 `launcher_show_search=true` extra 进入搜索模式。
  - `MaintainedLauncherSettingsHost.show(...)` 根据 extra 切换为内置搜索页，支持应用名 / 包名过滤和点击启动。
  - 搜索手势只保留 Launcher 顶层入口；RootView 和 SMGLSurfaceView 不再重复处理同一次触摸，避免下滑被多层触发。

验证：

- `build.bat` 构建通过，输出 `build\launcher-signed.apk`。
- `adb install -r -d build\launcher-signed.apk` 安装到 `emulator-5554` 成功。
- 设置首页截图确认“桌面隐藏虚拟键”“隐藏图标上的角标”“紧贴屏幕横扫清除角标”均显示为同款锤子开关。
- 直接启动 `ThemeChooserActivity --ez launcher_show_search true` 可打开内置搜索页；输入 `root` 后列表过滤到 Root Explorer。
- ADB 与桌面操作验证：短距离下滑保持桌面，明确长距离单指下滑进入 launcher 内自绘搜索页；搜索入口不依赖外部 provider。
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
  - 保存后安排 requestCode `1002` 的精确 Launcher 启动任务，结束设置任务并终止旧进程；新进程完整重建 `Constants`、网格点、普通应用节点和文件夹预览。设置页入口会取消残留 1002，避免修改后立刻进入设置又被顶回桌面。

验证：

- `build.bat` 构建通过，输出 `build\launcher-signed.apk`。
- `adb install -r -d build\launcher-signed.apk` 安装到 `emulator-5554` 成功。
- 进入“桌面设置 -> 应用图标”确认新增行显示在“改进版图标”和“图标包”之间，弹窗可正常打开。
- 通过 UI 从 100% 调到 50%，确认后自动回桌面并重启，截图确认 12 宫格所有图标统一缩小。
- 再通过 UI 从 50% 调到 150%，确认后自动回桌面并重启，截图确认相机、图库、设置、浏览器、文件、游戏中心、应用分身、Google、Root Explorer 和“桌面设置”全部统一放大。
- 重新安装后打开图标大小弹窗，确认点击“小”直接跳到 50%，点击“大”直接跳到 150%，弹窗底部圆角和顶部圆角一致。

当前对照结论：

- `smartisan-launcher-maintained/res/layout/setting_main.xml` 中除当前已接入功能外，还有 `item_id_hide_navigation_bar`、`more_check_upgradation`、`setting_battery_optimization`、`setting_share`、`setting_user_experience`、`setting_about_us` 等入口。
- maintained 文档 `docs/compatibility-fixes.md` 明确记录过“桌面隐藏虚拟键”应写入 `launcher_hide_navigation_bar`，并且只对 Launcher 主界面生效，不应影响设置、主题、搜索等界面。
- 桌面隐藏虚拟键、检查更新、关闭电池优化和关于我们入口均已接入，不是 Toast 占位。
- maintained 风格设置页已接入 `launcher_hide_badge` 和 `launcher_badge_swipe_clean`。
- 下滑 / 上滑搜索：当前工程不再接入独立 QuickSearch APK，搜索入口统一进入 launcher 内 `ThemeChooserActivity` 自绘搜索页；保留的旧 provider / call stub 只作为原版入口痕迹和兼容跳转参考，不再作为独立应用安装目标。
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

