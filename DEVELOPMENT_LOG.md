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

## 当前状态总览（2026-06-30）

### 已完成

- APK 可通过 `build.bat` 构建、签名并输出 `build\launcher-signed.apk`，最近多次安装验证通过。
- 当前正式版本为 `v1.5.2 / 27`。最终 APK 仍以 `launcher/original/AndroidManifest.xml` 二进制清单和 `aapt2 dump badging build\launcher-signed.apk` 为准，文本 Manifest、设置页字符串和二进制 Manifest 必须同步维护。
- 当前桌面主 APK 为 `minSdkVersion=23`、`targetSdkVersion=28`，理论安装基线是 Android 6.0+（API 23+）；最终 APK 元数据已更新为 `compileSdkVersion=36`、`platformBuildVersionName=16`，按 Android 16 安装方向保留 target 28。
- 兼容安装与包体瘦身已持续推进：最终 APK 的 `minSdkVersion` 从 29 降到 23，`targetSdkVersion` 调整为 28；纹理资源统一走 `1080p`，删除冗余资源和不再使用的独立搜索产物后，当前 `build\launcher-signed.apk` 约 54.8MB。在线图标保存在远程仓库，不打入 APK。
- 构建签名流程已从 `jarsigner` 旧 v1 签名改为 `zipalign -p` 后用 `apksigner` 输出 v1/v2/v3 签名，修复 Android 12 等新系统上可能因只有 v1/JAR 签名而安装失败的问题。
- 桌面主入口、桌面内“桌面设置”虚拟入口、12 / 20 宫格、主题页、壁纸页、翻页动画页、应用图标页、三个设置开关均已接入。
- 经典黑主题 12 / 20 宫格顶部网格和底部 Dock 资源已从原版 `com.smartisanos.launcher-3.apk` 重新抽取覆盖，顶底色差问题已修复。
- 桌面设置页和桌面已尽量保持在同一个 `smartisanos.task.launcher` 任务栈内，修复主题设定后“返回桌面 -> 又闪回设置页 -> 再回桌面”的双跳问题。
- 首次切换主题不播放翻页过渡动画已修复：主题设定消息不再因为桌面冷启动、数据异步加载或设置页任务栈切换而丢失动画快照，桌面就绪后会继续消费待执行主题动画。
- 普通不透明主题切换时不再把用户壁纸作为背景传入，避免所有主题都透出系统壁纸。
- 透明主题壁纸链路已接入 `launcher_wallpaper_uri`、私有壁纸副本、缩略图和 `gaussian_wallpaper.png` 兜底；“恢复默认壁纸”会清理自定义副本并回到当前主题内置背景。
- 主设置页缩略图已按 maintained 方向调整：桌面主题 / 桌面壁纸 / 桌面翻页动画使用竖向带框缩略图，应用图标不额外加白色外框。
- 文件夹打开与关闭两套布局均已按各自可见边框自适应对齐：预览在 4 项以内使用 2x2、5-9 项使用 3x3；关闭预览以当前 `icon_size_with_shadow` 为容器，按文件夹 PNG 内部列中心和每层可见区域中心计算图标边长、边距与间距；打开状态按书架 PNG 的可见层中心和固定三列摆放。两套逻辑都使用归一化比例，不依赖某个屏幕的固定像素偏移。
- 文件夹打开背景已不再依赖 `res/drawable` 中额外补入的 `wallpaper_preview_*` 资源表项；当前改为优先从主 APK `assets/folder_theme_bg/` 直接读取与主题 ID 对应的背景图，普通主题、浅金主题和透明主题均可稳定命中，不再因 apktool 资源表未收录新增 drawable 而回退成默认黑底。
- 应用图标替换链路已从设置页预览扩展到桌面主图标加载入口，支持 redirect、自定义图片、图标包 appfilter 和系统原图回退。
- 应用图标页顶部“改进版图标”已改为复用首页同款 `SettingItemSwitch` / `SwitchEx`，不再手写开关；“图标包”行改用 maintained 卡片背景，与上方开关行组成一组。
- 应用图标页新增“桌面图标大小”滑块，位置在“改进版图标”和“图标包”之间；支持 50% - 150% 连续调节，并可点击“小 / 中 / 大”快速跳到 50% / 100% / 150%；保存后回到桌面并完整重启 Launcher，让 12 / 20 宫格里的所有普通应用和桌面设置虚拟入口统一应用新尺寸。
- 动态日历已完成普通 Android 厂商兼容：按 `CATEGORY_APP_CALENDAR` 查询系统日历并补充常见厂商包名回退，不再只认 `com.android.calendar`；纹理缓存键加入年月和年内日序，系统日期变化后不会继续复用旧日期纹理。
- 活动日历的双层、错位和尺寸问题已收口到 `activeicon/m.smali`：静态图标路径覆盖 `d([B)` / `o(Bitmap)` 生成同款日历 bitmap，日期区域使用 90% 宽、80% 高和 76% Y 偏移；页面层保持 `3b973b589338b963d5b39a82e1937922577b3f4e` 的静态图层链路。不要再在 `view/a/g.1.smali` 隐藏日历静态前景，否则 Dock 左滑后点击左下设置齿轮进入的编辑设置页，日历会重新显示彩色而不是灰色。
- 50%-150% 图标比例现在会在每个 Launcher 新进程从 XML 基准重新应用一次；修复杀进程、覆盖安装或系统回收后普通图标恢复 100%，导致日历和普通图标再次失配的问题。
- 应用图标页单应用切换已改为行级刷新：选择左侧默认图标、右侧推荐图标或相册自定义图标后，当前页面和滚动位置保持不变；只有找不到当前行时才兜底重建并恢复滚动位置。
- 应用图标页点击范围已收窄：只有左侧默认图标块和右侧推荐/加号图标块响应选择，右侧应用名称/说明文字区域不再弹出选择框。
- 当前搜索页使用 launcher 内 `ThemeChooserActivity` / `MaintainedLauncherSettingsHost.showSearchPage()` 自绘页面，不再依赖、下载或构建锤子独立搜索 APK；桌面下滑只作为进入自绘搜索页的手势入口。
- 强迫症选项已从设置首页零散开关收纳到二级页；主页入口和二级页标题走资源字符串，英文系统显示 `OCD Settings`，中文系统显示“强迫症选项”。
- 通知角标已补齐普通 Android 数据源：通知监听服务按包名和 UID 统计有效活动通知，转换为原版 `com.smartisanos.launcher.new_message` 协议并继续使用原版数字纹理、文件夹汇总和横扫动画。强迫症页在“隐藏图标上的角标”下面提供“紧贴屏幕横扫清除角标”开关和通知使用权入口；横扫后抑制旧通知 key，新通知到达后角标会重新出现。
- 主设置页新增“隐私密码”入口，复用页面锁同一套 Launcher 私有密码摘要；已有密码时先验证旧密码，再设置两遍新密码。
- 双开 / 多用户应用显示和启动已补入 LauncherApps 查询与 `startActivityAsUser` 兼容路径，避免双开应用只显示主用户图标或点击后启动错用户。
- 双开 / 多用户应用继续对照 maintained 调整：搜索页、桌面应用列表和启动链路都尽量使用 LauncherApps 多用户查询；分身应用支持叠加原版风格面具标记。
- 应用图标识别逻辑已继续向 maintained 对齐，同时保留当前工程已有的图标识别能力，减少“闲鱼 / 酷安”等普通应用被误识别成应用商店图标，以及系统“电话 / 拨号 / 电话本”等名称匹配不稳定的问题。
- 在线图标网络任务使用 6 个有限并发工作线程，Gitee 不可用时快速回退 GitHub；缓存按最后一次成功写入合并刷新，并允许后续批次再次刷新，桌面初始化线程始终只读内存或磁盘缓存。
- 电话与联系人最终按“桌面标题 > Activity > 包名”分流。即使厂商用同包或拨号类名暴露“电话本”入口，异步下载和数据库刷新后也应保持联系人图标。
- 原版解锁动画引擎、宫格颜色资源和 `USER_PRESENT` 播放链路均保留在主 Launcher APK。`SCREEN_OFF` 负责原版锁定预初始化；当厂商系统因默认 HOME 进程策略跳过广播时，由 Launcher 生命周期确认真实熄屏后补发原版准备/播放事件，并与原版广播去重。

### 2026-06-30：v1.5.2 桌面显示、搜索手势与在线图标收口

本轮在文件夹主题背景修复之外，完成以下调整并统一发布版本为 `v1.5.2 / 27`：

- **应用分身图标**：清理厂商 `getUserBadgedIcon`、旧微信专用角标和 Launcher 自绘面具可能重复叠加的路径。当前以主用户原始应用图标为底图，只绘制一层锤子风格面具，并调整面具轮廓、尺寸和位置；应用分身设置入口恢复使用原来的设置图标。
- **桌面与文件夹文字**：桌面标签略微增大，文件夹内标签保持更小的层级；两处使用一致的字体绘制基线。文件夹内标签显式清除阴影，修复文字重影和模糊。
- **图标视觉尺寸**：系统图标、主题图标、redirect、自定义图标和在线图标统一经过 alpha 可见区归一化，再应用用户的 50%–150% 尺寸比例。首帧直接读取 `PackageManager` 的路径也执行同样归一化，修复冷启动时图标先大小不一、稍后才跳成一致的问题。
- **搜索手势**：自绘搜索页采用完整 `DOWN / MOVE / UP` 位移、方向、时长和阈值判断，缩短有效下滑的触发距离；同时停用 SMEngine 中遗留的上滑搜索入口。当前只有明确的桌面下滑手势可以打开搜索页，上滑、点击和轻微抖动不应触发。
- **在线图标库**：取消旧锤子图标服务器依赖，按应用包名访问 `icons/drawable/<package>.png`。优先使用 Gitee 下载镜像，失败后回退 GitHub；下载在后台执行并写入应用私有缓存，包含失败缓存、文件大小与图片尺寸校验。仓库现有 2209 个图标及索引，在线资源不会增加 APK 体积。
- **跨品牌系统图标**：新增受系统应用身份约束的类别映射。不同厂商的相机、相册、浏览器、联系人、短信、邮件、计算器、文件管理、指南针、录音、音乐、视频、天气、便签、设置、安装器和 SIM 工具包可映射到统一的锤子在线图标；日历和时钟保留动态实现，第三方同名应用不参与映射。
- **系统图标识别补充**：部分厂商预装应用实际位于 data 分区，不能只依赖 `FLAG_SYSTEM`。现改为精确显示名称优先，并允许 Android、OPPO/realme、一加、小米、vivo、华为/荣耀和三星系统命名空间参与包名/Activity 识别；补齐软件商店、云服务、手机管家、钱包和语音助手。电话本/联系人优先于拨号包名判断，避免共用 `com.android.dialer` 一类包时被套成电话图标。缓存升级到 v3，清除旧的未命中结果。
- **在线图标自动刷新**：缓存写入采用 2 秒静默期合并刷新；刷新完成后不会永久锁死，后续下载批次仍可再次通知桌面，因此不再要求用户切换主题或重开“改进版图标”。刷新始终不阻塞首次桌面初始化。
- **跨 ROM 主题切换**：普通主题不再只把切换消息保存在进程静态字段后提前返回，而是先将主题 ID 写入 Launcher 两套私有配置并调用原版主题栈，再发送动画消息。这样 vivo/OriginOS 即使回收旧进程，新 Launcher 也能从持久化主题恢复。正常切换不再无条件追加第二次进程重建，避免连续播放两轮加载动画；透明主题等确实需要重启的路径仍会先安排精确 HOME PendingIntent，再结束旧进程。
- **电话本图标优先级**：厂商拨号器可能使用同一包提供拨号和电话本两个 Activity。联系人类别识别已提前到 package-wide packed icon 之前，显式自定义图标仍保持最高优先级；“电话本 / 联系人 / 通讯录”会直接使用联系人图标，不再被整包电话图标抢先覆盖。
- **首帧与刷新图标统一**：桌面首帧不再调用 package-wide `PackageManager.getApplicationIcon()`，而是使用 `ItemInfo.packageName + componentName` 精确还原 Launcher Activity，并直接进入与后续刷新相同的改进版图标链路。拨号与电话本即使同包也保持独立，其他已缓存或本地可识别图标首次进入桌面即可生效。在线图标下载完成后会触发数据库与图标刷新，不再要求切换主题或手动重开“改进版图标”。
- **电话/联系人最终渲染分流**：对照 maintained `97ff218`，图标包的三参数匹配禁止拨号 Activity 回退到联系人包级映射；桌面节点刷新同时传入 `ItemInfo.title`，按“桌面标题 > Activity > 包名”识别电话、拨号、电话本、联系人和通讯录，阻止异步刷新再次把电话本覆盖成电话。
- **原版解锁动画跨 ROM 触发**：确认动画控制器、9/12/16/20 宫格颜色资源和 `USER_PRESENT` 播放链路均属于 Launcher 主 APK。动态接收器按 maintained 项目的成熟方案监听标准 `SCREEN_OFF`，映射到原版 `action_keyguard_on` 完成锁定预初始化。实机确认部分 ColorOS 在本应用成为默认 HOME 后会跳过该动态接收器，因此增加 Activity 生命周期兜底：`onPause` 延迟确认屏幕确实不再交互，下一次 `onResume` 才补发准备和播放事件；边缘返回、应用跳转、设置页及主题重载因屏幕仍亮不会触发。原版 `USER_PRESENT` 成功处理时会记录握手时间，生命周期兜底随即取消，从而避免非默认桌面状态下播放两次。
- **解锁动画与临时桌面状态隔离**：修复更换主题后立即锁屏，解锁时再次执行主题切换动画的问题。主题应用原先同时通过原版主题栈和额外静态消息各派发一次 `MESSAGE_CHANGE_THEME`，第二条消息可能滞留到解锁后；现仅在原版主题栈失败时使用额外消息兜底，并在主题过渡保护期内跳过解锁场景重建。修复文件夹打开状态锁屏后解锁导致 GL 线程空上下文崩溃、Launcher 进程重启的问题；解锁前检测当前 FolderController，文件夹打开时保留现有场景，不初始化解锁动画。ADB 实测主题场景无重复 `MESSAGE_CHANGE_THEME`，文件夹场景 PID 不变且无 `FATAL EXCEPTION`，普通桌面锁屏仍正常播放解锁动画。
- **软件更新版本判断与弹窗排版**：更新检测由“版本字符串只要不相等就提示更新”改为语义版本比较，线上版本必须严格高于本地版本才显示下载提示，避免 v1.5.2 错误提示降级到 1.5.1。更新说明不再截断为 120 字；短内容弹窗按内容收紧，中等内容随正文增高，超过安全高度后正文进入可滚动区域。
- **首帧桥接闪退修正**：首次接入组件级加载时误把 `J`（ActivityProxy普通对象）直接作为 `Context` 传给Java桥，Smali可编译但ART会在运行时触发类型校验失败。现先调用 `J.getContext()` 获取真实Context后再调用 `loadIconForComponent()`。
- **改进版开关时序**：先更新所有应用的改进版选择状态并重载配置，再发送数据库与图标刷新，修复旧顺序先刷新、后写状态造成第一次开关仍显示旧图标的问题。
- **初始化阻塞与下载速度修复**：所有图标加载路径只同步读取内存和磁盘缓存，网络请求统一提交到 6 个有限并发任务的独立线程池；连接与读取超时缩短，单个镜像不可达时快速尝试备用地址。Launcher 模型线程不再等待网络超时。
- **版本维护**：新增 `tools/set_launcher_version.py`，用于同步文本 Manifest、设置页版本字符串和保留的二进制 Manifest，避免构建末尾注入旧清单导致最终 APK 版本回退。

文档核对结果：

- 旧记录中的“下滑 / 上滑搜索”是阶段性描述，已纠正为“下滑搜索”；当前上滑入口已明确禁用。
- 应用分身应以 2026-06-29 的“主用户原始图标 + 单层 Launcher 面具”为可信基线；更早关于 `getUserBadgedIcon` 或 QuickLaunchItem 主方案的记录仅代表历史尝试。
- 文件夹普通主题背景不是新增 drawable 资源表项，而是从 `assets/folder_theme_bg/` 直接读取；透明主题继续使用原版模糊背景链路。

验证要求：

- `build.bat` 完整构建后，使用 `aapt2 dump badging` 确认 `versionName='v1.5.2'`、`versionCode='27'`。
- 冷启动检查首帧图标尺寸；分别验证桌面下滑、上滑、点击和短距离抖动；检查普通主题与透明主题文件夹背景、文件夹标签清晰度及应用分身单面具显示。

### 2026-06-30：文件夹背景打包链路改为 assets 直读

问题与根因：

- 之前为普通主题文件夹背景补入了 `wallpaper_preview_*` / `wallpaper_light_gold` 图片文件，但当前主桌面工程是 `apktool + resources.arsc` 的半反编译结构，不是完整的 Android 源码资源工程。
- `build.bat` 构建主桌面时使用的是 `apktool b launcher`。这条链路会保留已有资源表，但不会像完整 `aapt2 link` 那样自动为后补的 drawable 生成稳定资源表项。
- 结果是：代码里主题 ID 到 `wallpaper_preview_*` 的名字映射存在，最终 APK 里也能看到这些字符串，但 `res/*wallpaper_preview_*` 实际图片并没有被打进主 APK 资源表。运行时 `Resources.getIdentifier(drawable)` 对透明主题还能命中老资源 `t_blur_background_folder`，普通主题却始终找不到，只能回退成默认黑色文件夹背景。

修复：

- 不再继续依赖主 APK 的 drawable 资源表补录文件夹背景，而是新增稳定资产目录 `launcher/assets/folder_theme_bg/`。
- 将普通主题所需的 `wallpaper_preview_*`、`wallpaper_light_gold` 文件复制到该 assets 目录中，由 APK 作为普通资产直接打包。
- 修改 `launcher/smali/com/smartisanos/launcher/e/s.smali`：
  - 新增私有方法 `th(String)`，优先从 `assets/folder_theme_bg/<imageName>.jpg/.png` 直接解码 bitmap。
  - `ug()` 保留原来的主题资源 / 本包资源 / 外部包资源查询顺序，但在本包 drawable 查询失败后，先走新的 assets 解码链路，再回落原版默认背景。
- 这样主桌面 APK 即使仍然不把新增 `wallpaper_preview_*` 注册进资源表，也不会影响普通主题文件夹背景跟随主题变化。

验证：

- `build.bat` 完整通过，新的 `build/launcher-signed.apk` 成功生成。
- 解包检查确认：最终 APK 中已包含 `assets/folder_theme_bg/wallpaper_preview_*.jpg/.png` 与 `assets/folder_theme_bg/wallpaper_light_gold.jpg`；同时 `res/*wallpaper_preview*` 仍为空，说明运行时已切换到新的 assets 读取链路，而不是继续误依赖资源表。
- 实机复测确认：文件夹背景现已随主题正常变化，不再只在透明主题正常、其他主题回退默认黑底。

防回归规则：

- 后续如果再补新的普通主题文件夹背景，不要只往 `launcher/res/drawable-*` 里塞图，然后假设 `Resources.getIdentifier()` 一定能取到。
- 这类“新增但原始资源表里没有登记”的背景图，应该优先视作运行时资产，补到 `assets/folder_theme_bg/`，并沿用 `s.ug() -> th()` 的读取链路。
- 若以后把主桌面切换成完整 `aapt2` 资源工程，再评估是否回归标准 drawable 资源表；在那之前，`assets/folder_theme_bg/` 是当前可信基线。

涉及文件：

- `launcher/smali/com/smartisanos/launcher/e/s.smali`
- `launcher/assets/folder_theme_bg/*`
- `build.bat`

### 2026-06-29：应用分身诊断日志与角标隐藏开关修复

文档校对补充（当前可信结论）：

- 本仓库当前关于“应用分身”的可信修复基线，应以 `2026-06-28：通用应用分身管理、首次加载和搜索启动` 与本节为准；更早的 `2026-06-06` 记录只可作为历史背景，不可再直接当成当前实现说明。
- 历史记录里曾出现过“分身开关改为直接安装 / 卸载 profile 快捷方式”的阶段性方案，但该方案随后已被本节上方记录明确撤销；当前正式链路仍是恢复并修正原版 `EVENT_USER_PACKAGE_ADDED / REMOVED` 应用项数据库路径，而不是长期依赖 `QuickLaunchItem` 模拟分身。
- 历史记录里还写过“分身图标会走 `PackageManager.getUserBadgedIcon` 和当前工程的面具绘制兜底”。这在当时是阶段性描述，但对 OPPO / ColorOS 等 ROM 会产生厂商角标 + 锤子面具叠加、甚至与旧微信专用 `wechat_shortcut` 叠加的双面具问题。当前可信规则是：优先读取主用户原始 Activity / Application 图标，只叠加一层锤子风格面具，不再把 `getUserBadgedIcon` 当作当前标准链路说明。
- 防回归时必须同时检查三条链路是否只保留一套面具来源：`LauncherApps/桌面应用项生成`、`ItemInfo.iconData -> doppelgangerIconBytes()`、`快捷方式/搜索图标生成`。如果其中两条以上同时叠加面具，就会再次出现双面具或厂商角标混入。

- 根据 OPPO user 999 诊断日志撤销“用 QuickLaunchItem 模拟分身”的主方案：日志显示快捷方式安装/卸载调用虽然返回成功，但点击从未进入 `PROFILE_LAUNCH`，且旧条目因 package/user/shortcutId 不同无法被新版删除。恢复原版 `EVENT_USER_PACKAGE_ADDED/REMOVED` 应用项链路，只在用户明确启用或已启用项的轻量恢复阶段触发，不恢复首次启动全量扫描。
- 原版新增分身处理器已支持从事件参数读取动态 userId；本轮继续将删除处理器从固定 user 10 改为读取事件中的 userId，因此 OPPO 999、小米/工作资料等其他 profile 均按真实用户删除。
- 启用/关闭分身前会清理历史版本创建的 `com.tencent.mm`/Launcher 包名、user -1/0/真实 profile user 下的无效快捷方式；随后创建的是 `itemType=应用`、真实 userId 的桌面项。图标走普通 user 0 的锤子主题图标链路后叠加面具，点击走 `LauncherApps.startMainActivity(component, profile)` 启动系统现有分身。
- 对照 `rianlu/smartisan-launcher-maintained`：其设置页通过 `LauncherApps.getProfiles/getActivityList` 发现分身，并以 `componentName#profileSerial`/profile serial 区分身份；当前移植保留相同的动态 profile 发现思想，但复用本版本已经存在的原版 user-package 应用项数据库链路，以匹配当前 `QuickLaunchItem`/DatabaseUpdater 数据结构。
- 修复“隐藏图标上的角标”仍显示：原版 `data.O` 仍直接读取 `Settings.System.launcher_hide_badge`，普通 APK 无系统设置写权限，重新加载时会把隐藏状态覆盖为 false。两个原版读取点均改用 `LauncherSettingBridge.readBool`，统一读取应用内持久化设置；切换后同时调用 `Eb.ii()` 更新已有 SceneNode，并在图标刷新结束后再次同步，确保现有角标立即消失而非只影响新建图标。
- OPPO 实机截图进一步确认：旧快捷方式错误地把桌面自身的中转 Activity 标记为 user 999，导致系统尝试在未安装 Launcher 的分身用户中启动中转页，点击无响应。现改为快捷方式归属 user 0，由中转页再通过 `LauncherApps.startMainActivity` 启动真实 user 999 应用，并增加 `startActivityAsUser` 反射兜底及启动结果日志。
- 分身图标不再使用 ColorOS 已经套过圆框和厂商分身角标的 `LauncherActivityInfo` 图标；优先读取 user 0 的原始 Activity/Application 图标，只叠加锤子面具角标。安装正确快捷方式前会先清理旧版无效条目。
- OPPO ADB 日志显示通知监听授权后曾发生 `binding died`，打开系统设置只是间接触发重新绑定。Launcher 每次恢复时现主动检查授权、请求 `NotificationListenerService.requestRebind` 并重放角标，无需再次点击“前往设置”。
- “关于手机/关于桌面”的操作日志新增“发送”按钮：结束记录后，可将结构化操作日志与配套的本应用 logcat 合并为文字，通过系统分享发送。界面明确提示受 Android 权限限制，应用内日志不能替代电脑 ADB 的全系统日志。
- 分身诊断新增 profile 数量、userId、serial、LauncherActivityInfo 数量、组件名、开关状态、快捷方式 URI、直接处理/广播兜底结果及异常记录。
- 分身快捷方式安装/删除优先在桌面进程内反射调用原版 `com.smartisanos.launcher.a.L` 处理器，避免 OPPO 等系统拦截或延迟自发快捷方式广播；直接调用失败时仍保留定向广播兜底。
- “隐藏图标上的角标”不再只保存设置值：切换时直接同步 `Constants.SHOW_MESSAGE_FLAG = !hidden` 并刷新桌面，Launcher 每次恢复前也重新应用持久化值，避免进程重建后失效。
- 验证：`build.bat` 完整通过，输出 `build/launcher-signed.apk`；当前没有连接 ADB 设备，OPPO 分身和角标交互需真机验证。

### 2026-06-29：应用分身落桌面与通知角标生命周期修复

问题与根因：

- 应用分身设置页能发现并开启微信分身，但原版 `EVENT_USER_PACKAGE_ADDED` 处理器读取参数中的真实 userId 后没有保存结果，后续仍把查询、`ItemInfo.userId` 和启动目标硬编码为 user 10。小米等使用 user 999/其他 profile 的分身因此不会写入桌面。
- 横扫清除只保存 suppressed 通知 key，没有把 `COUNTS` 中的持久化数字改为 0。Launcher 进程或桌面场景重建时，`BadgeBridge.replay()` 会重新广播旧数字。
- 企业微信等应用会复用同一个通知 key 更新内容。只按 key 抑制会把后续新通知永久当作旧通知，出现第一次显示、以后不再刷新的现象。
- 打开应用后，如果应用自身没有撤销通知，监听器仍会把活动通知重新统计出来；原版桌面期望从桌面点击应用时先清除该应用当前角标。

修复：

- 分身数据库事件完整保留设置页发现的真实 userId，查询对应用户、写入 `ItemInfo.userId` 并通过 `LauncherApps.startMainActivity(component, realUserHandle, ...)` 启动；反射 `startActivityAsUser` 只保留为旧 ROM 兜底。
- OPPO Android 12 复测表明，仅修正原版 `EVENT_USER_PACKAGE_ADDED` 的 userId 仍不可靠：该事件需要再次按目标用户查询 `ResolveInfo`，部分 OEM 对第三方 Launcher 返回空结果，因此开关已开启但桌面没有新增项。
- 对照 `rianlu/smartisan-launcher-maintained` 的 `ProfileAppsSettingsActivity` 后，分身开关改为直接安装/卸载 profile 快捷方式：快捷方式目标是 Launcher 内 `StartActivityForSearch`，URI 保存 `package / activity / profileSerial`，点击时再由 `LauncherApps` 启动真实 profile。该路径不依赖第二次 Launcher 数据扫描。
- 当前 v26 基线的快捷方式处理器原本只允许微信/支付宝等少量包且只把 user 10 写入 `ItemInfo`；已调整为接受设置页明确创建的 profile 快捷方式，并从 `extra_uid` 还原任意正数 userId。已启用分身在 Launcher 启动同步时也会补发快捷方式安装，升级 APK 后无需先关闭再开启开关。
- 所有 `userId > 0` 的分身图标继续统一经过 `doppelgangerIconBytes()`，叠加同一套原版面具标记，不限定微信或 user 10。
- 通知抑制标识改成 `notification key + postTime`，只屏蔽被清除的那一轮通知；同 key 的后续新发布/更新会重新计数。
- 横扫和应用点击清除时同步保存 `COUNTS=0` 并立即广播 0，Launcher 重建后不会重放旧数字。
- 桌面/搜索启动第三方应用前调用 `BadgeBridge.onPackageLaunched()` 清除该应用当前角标；通知真正移除或后续新通知到达时，监听器继续按实时状态刷新。
- `BadgeBridge.replay()` 在已有通知使用权时主动请求重新绑定监听服务，改善强行停止、覆盖安装或 ROM 后台限制解除后监听器没有及时恢复的问题。

验证与限制：

- `build.bat` 完整通过，BlackBerry 用户 0 真机覆盖安装与 Launcher 冷启动成功，无 `FATAL EXCEPTION` / `VerifyError`。
- 当前连接设备没有第二 profile，微信分身写入、面具显示和正确 profile 启动仍需在原问题手机复测。
- BlackBerry 日志显示该 ROM 在应用处于 restricted/force-stop 状态时会拒绝绑定通知监听；启动 Launcher 后通过主动 rebind 恢复。其他 ROM 仍需确保已授予通知使用权，并避免系统长期冻结 Launcher。

涉及文件：

- `launcher/smali/com/smartisanos/launcher/data/A.smali`
- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
- `launcher/tools/java/com/smartisanos/launcher/badge/BadgeBridge.java`
- `launcher/tools/java/com/smartisanos/launcher/badge/SmartisanBadgeListenerService.java`

### 2026-06-28：跨 ROM 安装、首次启动与下滑搜索性能收口

问题与根因：

- 小米 / HyperOS 安装返回 `-112 (INSTALL_FAILED_DUPLICATE_PERMISSION)`。二进制 Manifest 仍声明 7 个原版锤子私有权限，其中一个错误占用 `android.permission.*` 命名空间；手机上存在同名权限但签名不同时会在安装阶段直接拒绝 APK。
- 新安装没有保存过 `ro.build.date.utc`，原版逻辑把空值与当前系统构建时间不一致误判为 OTA。首次建库生成图标后，OTA 路径立即删除全部图标和阴影缓存并再次生成，造成重复 I/O、解码和数据库写入。
- 原版固定 user 10 的分身事件路径会在未启用任何分身时逐包查询第二用户，普通 ROM 上查询全部失败却仍消耗十几秒。
- 自绘搜索页此前在 `setContentView()` 前同步枚举所有 Launcher Activity 并读取全部名称、图标和 profile，导致页面本身延迟数秒；改为异步后，常用图标仍要等待完整索引完成才一起显示。

修复：

- 7 个应用内部 signature 权限统一迁移到 `com.ranhf.smartisanlauncher.permission.*`，同步文本 Manifest、保留的二进制 Manifest、Provider 权限引用、Smali 常量和预装完成广播权限。新增 `tools/patch_manifest_internal_permissions.py`，避免以后重新处理二进制清单时恢复冲突权限。
- 首次建库与 OTA 刷新设为互斥：首次安装只生成一次图标；已有数据库且系统构建时间确实变化时仍执行 OTA 缓存刷新。
- 原版分身包事件增加已启用记录与真实第二 profile 双重门禁；没有用户明确启用的分身时不枚举 profile，也不进入固定 user 10 的逐包处理。
- 搜索页先绘制搜索框并弹出键盘，完整应用索引在 `launcher-search-loader` 后台线程生成。
- 最终取消搜索框下方的常用应用图标区，避免搜索页首帧后再补图标造成明显的二次跳变；完整应用、历史和已启用分身索引仍在后台生成，用户输入搜索时继续覆盖全部应用。
- 强迫症选项里的通知使用权提示把中文“前往设置”/英文“Tap to configure”单独改为蓝色下划线链接样式，并把跳转范围严格限制在链接文字本身。
- 通知使用权提示移动到“隐藏图标上的角标”开关正下方；底部上扫说明继续跟随“紧贴屏幕横扫清除角标”开关，避免权限说明与手势说明归属混淆。
- 设置页交互按控件类型收口：所有 `SettingItemSwitch` 行（含动态创建的透明主题、壁纸模糊、应用分身和改进版图标）取消整行点击，只触摸右侧 `SwitchEx` 滑块才切换；通知权限只点击蓝色下划线“前往设置”文字才跳转；“图标包”“桌面图标大小”等带右箭头的导航标签保持整行任意位置可点击。
- 安装兼容静态审计补齐 5 个旧组件的显式 `android:exported="true"`：Launcher、PinShortcutActivity、LauncherReceiver、DataSyncReceiver、DataDumpReceiver。文本与二进制 Manifest 已同步，避免部分 HyperOS / OriginOS / Android 16 安装器把缺省 exported 判为 `MANIFEST_MALFORMED`。
- “检查更新”结果与新版本确认弹窗改为接近屏幕可用宽度的锤子式圆角卡片：标题居中，版本信息和更新说明统一左对齐，正文增加左右留白与行距，底部继续使用细分割线和分栏按钮；普通确认弹窗保持原尺寸与对齐方式。

验证：

- `build.bat` 完整通过；APK 的 v1/v2/v3 签名和 16KB zipalign 检查通过。
- BlackBerry 真机覆盖安装成功；冷启动 Activity 显示约 `1.284s`，含进程拉起总计约 `2.235s`，无分身全包扫描和 `FATAL EXCEPTION`。
- 自绘搜索 Activity 冷启动显示约 `254ms`；完整索引继续后台加载，不阻塞搜索页首帧。
- 最终 APK 确认 `minSdk=23 / targetSdk=28 / compileSdk=36`，包含 arm64-v8a、armeabi-v7a、armeabi、x86、x86_64；自定义权限已使用独有命名空间，带 intent-filter 的旧组件已显式 exported。目前静态审计未发现新的通用安装阻断项。
- 小米 17 的 `-112` 修复需在对应设备重新安装最终 APK 完成最终确认；若仍失败，应使用 `adb install` 保存 PackageManager 返回的冲突权限或冲突包名。

涉及文件：

- `launcher/AndroidManifest.xml`
- `launcher/original/AndroidManifest.xml`
- `launcher/smali/com/smartisanos/launcher/data/A.smali`
- `launcher/smali/com/smartisanos/launcher/ja.1.smali`
- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
- `tools/patch_manifest_internal_permissions.py`
- `tools/patch_manifest_exported_components.py`

### 2026-06-28：通用应用分身管理、首次加载和搜索启动

问题与根因：

- 工程原先已有零散的 `userId`、分身角标和 `LauncherApps` 兼容代码，但补录任务首次延迟 12 秒，而且没有稳定参与桌面模型第一次扫描。首轮桌面加载完成后才把分身写入数据库，因此微信分身通常要完全退出 Launcher、第二次启动才显示。
- 旧实现混用 `UserManager.getUserProfiles()`、常见用户 ID 猜测和反射构造 `UserHandle(id)`；搜索又把 `LauncherActivityInfo` 转成 `ResolveInfo` 后从 UID 反推用户。不同 ROM 的分身用户 ID 并不固定，容易只对微信或某个厂商的 user 10/999 偶然有效。
- 原版搜索 URI 只保存包名和组件名，主应用与分身组件相同时无法表达目标 profile；直接 `startActivity()` 会打开主应用。

实现：

- 统一通过 `LauncherApps.getProfiles()` 获取系统实际暴露的 profile，再对每个非当前用户调用 `LauncherApps.getActivityList(null, userHandle)`。没有写死微信、淘宝、京东、拼多多、支付宝或 QQ 包名，系统暴露的所有 Launcher Activity 都可进入同一逻辑。
- 分身记录同时保留 `ComponentName`、真实 `UserHandle`、Launcher 数据库使用的 `userId` 和 `UserManager.getSerialNumberForUser()` 返回的 profile serial。设置偏好和搜索历史键使用 `serial + component`，主应用与分身不会因包名/组件名相同而覆盖。
- 分身改为默认全部关闭。没有任何分身被用户启用时，桌面模型直接返回普通应用列表，不调用 `LauncherApps.getProfiles()`，避免为默认隐藏的功能增加冷启动等待。只有进入“应用分身”设置页时才枚举系统 profile。
- 桌面设置新增“应用分身”入口。页面异步列出所有 profile 应用并提供默认关闭的开关；打开时保存 `serial + component` 状态，发送原版用户包新增/变更事件并刷新桌面。启用过分身后，后续桌面启动才会参与 profile 枚举，并保留立即、2 秒、8 秒重试。关闭时发送 `EVENT_USER_PACKAGE_REMOVED` 并刷新数据库、桌面和搜索。没有额外 profile 或接口不可用时显示正常提示。
- 当前自绘搜索直接从 profile 枚举追加分身结果，不依赖桌面数据库是否已完成首轮补录。分身搜索项保存真实 `UserHandle` 和 serial，点击后使用 `LauncherApps.startMainActivity(componentName, userHandle, null, null)`；普通应用仍使用原来的 `Activity.startActivity()`。
- 原版 `SearchProvider` 生成分身结果 URI 时，根据 `ItemInfo.userId` 找到对应 profile 并追加第三段 serial；`StartActivityForSearch` 优先解析第三段，通过 `UserManager.getUserForSerialNumber()` 还原 `UserHandle` 后调用 `LauncherApps.startMainActivity()`。两段 URI 的普通应用保持原启动方式。
- 页面锁搜索判断继续按 `ItemInfo.userId` 区分同包主应用和分身。分身位于锁定板块时，密码验证完成后也使用保存的 profile serial 启动真正的分身，不会落回主应用。

防回归规则：

- 不得按 `packageName + componentName` 单独去重分身，唯一键必须包含 profile serial 或真实用户标识。
- 不得用固定 user 10/999/888 列表代替 `LauncherApps.getProfiles()`；固定 ID 只能作为旧 ROM 兼容兜底，不能作为主发现路径。
- 分身启动必须使用 `LauncherApps.startMainActivity()` 和发现时保存的 `UserHandle`。不要用普通 `startActivity()`，也不要只依赖反射构造 `UserHandle`。
- 不得让默认关闭状态在桌面冷启动时扫描 profile；只有至少一个 `serial + component` 被明确启用后，桌面模型才允许枚举和短延时重试。
- 设置开关、桌面数据库、当前自绘搜索和旧 SearchProvider URI 必须使用同一份启用状态；关闭分身后不能只隐藏设置行或只删除桌面图标。
- 修改页面锁链路时必须分别验证主应用和同包分身，不能因为包名相同而共用错误的页面锁状态。

验证：

- `build.bat` 完整通过，包括 maintained 设置资源、apktool smali、Java/classes2.dex、zipalign 和签名。
- 当前连接的 BlackBerry 设备覆盖安装成功；该设备只有用户 0，可确认无 profile 调用不会导致安装或 Launcher 启动崩溃。
- 初版 SearchProvider serial 补丁曾错误复用仍保存 `ResolveInfo` 的 `v10`，导致 Android Verifier 报 `VerifyError`，Launcher 在安装 ContentProvider 阶段无法启动。已改用后续会被重新赋值的 `v12` 暂存 `userId`，保留 `v10` 的引用类型；此类 smali 修改必须通过真机冷启动验证，不能只以 apktool 构建成功作为验收。
- 修正后通过 ADB 覆盖安装并执行 `am force-stop` 后冷启动 `.Launcher`：Activity 启动成功、Launcher 进程持续存活且保持前台，logcat 中无 `FATAL EXCEPTION`、`VerifyError` 或 Launcher 崩溃记录。
- Android 16 多 profile 真机仍需完成最终动态验收：微信、淘宝、京东、拼多多首次发现，设置开关即时增删，搜索命中并打开正确分身，以及主应用/分身共存。

涉及文件：

- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
- `launcher/smali/com/smartisanos/launcher/data/SearchProvider.smali`
- `launcher/smali/com/smartisanos/launcher/StartActivityForSearch.smali`
- `launcher/tools/maintained_settings_res/res/layout/setting_main.xml`
- `launcher/tools/maintained_settings_res/res/values/strings.xml`
- `launcher/tools/maintained_settings_res/res/values-zh-rCN/strings.xml`

### 2026-06-28：Moto G100 Android 16 启动兼容、页面锁搜索刷新与 v1.5.1

问题与根因：

- Moto G100 升级 Android 16 后 Launcher 无法正常启动。`ja` 构造阶段会实例化继承隐藏接口 `android.app.IActivityObserver$Stub` 的观察器；该 Smartisan 私有系统接口在普通 Android 16 ROM 上不可用，应用会在初始化阶段失败。
- 搜索启动此前在无法从 favorites 数据库确认 App 所属页面时直接按“已锁定”处理。取消页面锁后页面映射可能暂时查不到，因此搜索打开仍错误弹出密码页。
- 文本 Manifest 已写 `v1.5.1 / 26`，但构建末尾注入的二进制 Manifest 和设置页版本仍停留在 `v1.4.9 / 24`，导致最终 APK 版本被覆盖。

修复：

- 在 `launcher`、`clean_launcher`、`clean_launcher_raw` 三份 `ja.1.smali` 中不再创建 `IActivityObserver` 实例，将 `nh` 初始化为 `null`，避开 Android 16 对已移除/不可访问隐藏接口的初始化失败；保留其余广播与桌面初始化流程。
- 搜索启动不再依赖 favorites 查询失败后的“默认锁定”兜底，而是从原版页面容器 `fa.Ua(packageName)` 实时取得 App 单元格，经 `g.Af()` 找到所属页面，再用原版 `M.On()` 判断页面当前是否锁定。原版状态中 `M.Nn()` 是隐藏页（`yI == 1`），`M.On()` 才是锁定页（`yI == 2`）；原版页面点击也只有 `On()` 分支会调用 `Zp()` 验证密码。只有明确处在锁定页面时进入密码页，解除页面锁后下一次搜索启动会直接读取新状态并放行。
- 版本三个写入点统一为 `v1.5.1 / 26`，并在构建后通过 `aapt2 dump badging` 核对最终 APK。
- `.gitignore` 放行根目录 `build` 和本次新增的 maintained 彩色隐私密码锁图标、黑色键盘图片，确保这些产物可以提交到 GitHub，同时避免把其余历史图片资源全部误列为新文件。

验证：

- `build.bat` 完整构建、资源编译和签名通过。
- `aapt2 dump badging build\launcher-signed.apk` 确认 `versionCode='26'`、`versionName='v1.5.1'`、`compileSdkVersion='36'`、`targetSdkVersion='28'`。
- 2026-06-28 用户安装到真机后完成最终回归：锁住板块时，从自绘搜索结果点击该板块内 App 会进入数字密码页；解除板块锁后，再从搜索点击同一 App 会直接启动，不再误弹密码。两条路径均确认正常。

防回归规则：

- 不要把 `M.Nn()` 当作页面锁状态；它表示隐藏页。页面锁必须检查 `M.On()`。
- 不要恢复“找不到 App 页面就默认要求密码”的逻辑，否则解除锁、数据库尚未同步或桌面未完全初始化时会误拦普通搜索启动。
- 不要让搜索结果缓存一个独立的 `locked` 布尔值。每次点击搜索结果时都应重新执行 `fa.Ua(packageName) -> g.Af() -> M.On()`，以当前桌面页面对象为准。
- 不要在 `ConfirmPasswordActivity` 中判断 App 是否属于锁定页面；该 Activity 只负责密码输入和验证，是否需要进入它由搜索启动入口决定。
- 修改这段链路后必须同时回归两种状态：`锁住板块 -> 搜索打开 -> 必须验证密码`，以及 `解除板块锁 -> 搜索打开 -> 必须直接启动`。

涉及文件：

- `launcher/smali/com/smartisanos/launcher/ja.1.smali`
- `clean_launcher/smali/com/smartisanos/launcher/ja.1.smali`
- `clean_launcher_raw/smali/com/smartisanos/launcher/ja.1.smali`
- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
- `launcher/AndroidManifest.xml`
- `launcher/original/AndroidManifest.xml`
- `launcher/tools/maintained_settings_res/res/values/strings.xml`
- `.gitignore`

### 2026-06-25：日历编辑页灰度最终回归记录

- 可工作的灰度基线是 `3b973b589338b963d5b39a82e1937922577b3f4e`。该版本进入桌面编辑页后，点击底部 Dock 左下齿轮进入“已选择 [0/12] 个应用程序”页，日历会和其他图标一样走静态图层灰度。
- 后续尝试在 `view/a/g.1.smali` 新增 `showCalendarActiveIconOnly()`、或在静态纹理绑定后按 `ItemInfo.Te()` 隐藏日历静态前景，会破坏这条灰度链路：灰度静态层被隐藏，彩色活动日历层留在最上面，导致设置页日历始终红白彩色。
- 最终方案：`view/a/g.1.smali`、`ItemInfo.smali` 的日历图层状态回到 `3b973b5` 行为；只在 `view/activeicon/m.smali` 覆盖 `d([B)` / `o(Bitmap)`，把静态图标替换为合成日历 bitmap，并同步日期矩形比例。这样普通桌面没有双层错位，编辑设置页仍能正常变灰。
- 本轮核对：文件夹对齐相关 `LayoutPropertyAdapter.centerFolderPreview()`、`folder_icon_center_offset_*`、打开文件夹只作用文件夹页的规则未被修改；图标大小相关 `normalizeLauncherIcon()`、`normalizeImprovedIcon()`、`maybeApplyLauncherIconSize()`、50%-150% 保存后完整重启 Launcher 的链路仍保留。日历回退时误带出的 `e/s.smali` 图标 override normalize 调用已补回。
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
  - [x] 下滑搜索：已改为进入 launcher 内 `ThemeChooserActivity` 承载的自绘搜索页；当前不再依赖锤子独立搜索 APK，上滑入口已停用。
  - [ ] 天气：当前保留天气权限、资源和旧 Smartisan 天气库，但旧天气接口可能不可用，后续建议按 maintained 的方向优先拉起系统 / 已安装天气应用。
  - [x] 日历：已支持系统 / 厂商日历识别、随系统日期刷新、静态层去重以及 50%-150% 图标尺寸联动；已在 VIVO Android 16 真机验证。
- 提醒角标已接入通知监听兼容桥；其语义是有效活动通知数，不承诺等于第三方应用私有数据库中的真实未读消息数。应用未发通知、用户关闭通知、工作资料夹被系统策略隔离等情况无法由 Launcher 绕过。
- 在线主题 APK 下载后仍依赖用户手动安装，普通应用没有静默安装能力。
- 12 / 20 宫格、文件夹、编辑模式、拖拽落点、Dock 动画仍需要更多分辨率和真机回归。

## 阅读顺序

建议按下面顺序接手，不要从文件中间的旧计划直接开始：

1. 先读本节“当前状态总览”，确认哪些已经完成、哪些还待验证。
2. 再读“每日修复记录（倒序）”，按日期倒序查最近改动。
3. 需要追溯原因时，按每日记录由近到远阅读；已被后续修复覆盖的旧结论不再保留。

## 每日修复记录（倒序）

### 2026-06-28：普通 Android 通知角标与横扫清除

- 原版机制确认：Smartisan 系统通过 `com.smartisanos.launcher.new_message` 携带包名、组件、UID 和计数，Launcher 将其写入 `ItemInfo.messagesNumber`，再由 `g.qb(count)` 生成数字纹理；文件夹汇总和横扫动画均属于 Launcher 内部能力，并不依赖 Smartisan ROM。
- 新增 `SmartisanBadgeListenerService`，使用 Android 公共 `NotificationListenerService` API 监听通知新增、更新和移除，并在连接时通过 `getActiveNotifications()` 全量恢复。按 `packageName + uid` 隔离主用户/分身，按通知 key 去重，过滤 Launcher 自身、ongoing 通知、禁用 badge 的通知渠道和有子通知时的 group summary。
- 计数优先使用通知提供的 `Notification.number`，否则每条有效通知计 1，最高限制 999；结果转换为原版 `new_message` 广播，因此原版绘制、数据库、文件夹汇总和隐藏角标开关无需重写。
- 角标快照写入 Launcher 私有偏好，Launcher `onResume()` 会重放，解决通知监听服务已常驻但桌面动态广播接收器稍后才注册造成的计数丢失。
- 强迫症选项在“隐藏图标上的角标”下新增“紧贴屏幕横扫清除角标”开关，并增加“通知使用权”入口；首次开启横扫且尚未授权时也会跳转系统授权页。通知使用权必须由用户手动授予，应用不能静默获取。
- 横扫继续执行原版 `Yh() -> wx()` 动画和本地数据库归零，同时记录当时存在的通知 key。旧通知继续留在通知栏也不会马上把角标顶回来；只有出现新的通知 key 才重新计数。横扫不会擅自删除系统通知。
- 文本 Manifest 和最终注入 APK 的二进制 Manifest 均注册通知监听服务；新增 `tools/patch_badge_service_manifest.py` 用于向保留的 AXML 清单安全追加服务节点，避免只改文本 Manifest 导致最终 APK 丢失服务。

验证：

- `build.bat` 完整通过，Java 监听服务编译进 `classes2.dex`，APK 使用 v1/v2/v3 签名。
- `aapt2 dump xmltree build/launcher-signed.apk --file AndroidManifest.xml` 确认最终二进制清单包含 `SmartisanBadgeListenerService`、`BIND_NOTIFICATION_LISTENER_SERVICE` 和正确的 service action。
- 当前连接设备覆盖安装成功；`dumpsys package` 确认系统识别通知监听 service intent filter；真机进入“强迫症选项”确认“隐藏图标上的角标”下方显示“紧贴屏幕横扫清除角标”。
- 仍需用户在目标机手动授予通知使用权后，用微信、短信等实际通知完成数字变化、通知移除、文件夹汇总和横扫后新通知恢复四项动态验收。

### 2026-06-26：隐私密码页宽度、黑色键盘和搜索解锁链路

- 隐私密码页改为复用主设置项的全宽九宫格背景尺度，“修改密码”不再额外套左右内容边距；底部“关闭密码”保持红色操作按钮，但按主设置卡片可见边缘对齐，并继续和“修改密码”同屏显示。
- 对照 maintained 版搜索页 T9 键盘确认原版按下反馈由 action-down 状态触发并重绘。内置数字键盘现在在 `ACTION_DOWN` 立即 `setPressed(true)`、输入数字、播放点击音和触感反馈，在 `ACTION_UP/CANCEL` 清除 pressed，避免之前触摸事件被消费后 selector 没有按下态。
- 浅色隐私密码验证页继续使用 maintained 设置资源里的 `btn_0_classic_normal` 到 `btn_9_classic_normal`、删除和收起按钮资源；黑色板块锁页因没有对应黑色数字键资源，改为同一套键位逻辑的黑底白字按钮，并提供更明显的按下亮态。
- 搜索结果启动锁定板块内 App 时先进入 Launcher 内置黑色数字密码页，验证成功后再启动目标 App；直接点锁定板块的 requestCode 21 也统一走同一套黑色密码页，取消后会结束本次验证状态，避免再次点击无反应。
- 追加修正：首次设置页面密码的 requestCode 20 也改为启动 `ConfirmPasswordActivity` 的全屏黑色数字键盘，不再弹旧 AlertDialog；黑色键盘资源由白色锤子 `btn_*_classic_normal.9.png` 保留九宫格边框后反色生成 `btn_*_classic_dark.9.png`；由于按下视觉态在当前兼容层里观感仍不够跟手，黑白键盘均取消视觉 pressed 变色，只保留按下即输入、点击音和触感反馈。
- 追加修正：隐私密码页的分组标题和“修改密码”文字左边距统一回 maintained 设置页 `setting_item_text_left` 的 30dp 体系；“关闭密码”按钮高度改为 72dp，左右边缘按设置项可见边缘重新对齐。设置首页“隐私密码”图标由通用齿轮改为基于页面锁动画素材制作的灰银锁图标 `privacy_password_lock_icon.png`，保持锤子设置页的拟物灰度风格。
- 追加修正：主设置页 Java 绑定层此前仍把“隐私密码”入口图标覆盖为 `launcher_settings`，现同步改为 `privacy_password_lock_icon`；“关闭密码”按钮高度从 72dp 收回 64dp，使可见高度更接近上方“修改密码”项。新增 `CLEANUP_CANDIDATES.md`，记录可删除/需谨慎处理的构建产物、反编译目录和被 `.gitignore` 忽略的新 PNG 资源。
- 追加修正：`privacy_password_lock_icon.png` 从灰银系统感图标改为蓝绿色底座、金色锁体、红色提示点的彩色拟物锁图标，更贴近设置首页其他锤子风格彩色图标。角标链路对照：当前 original-port 仍有旧版 `com.smartisanos.launcher.P` 广播接收 `com.smartisanos.launcher.new_message` 并读取 `extra_packagename / extra_componentname / extra_uid / extra_message_count`，再调用 `Aa.a(..., count)` 更新 `ItemInfo.messagesNumber`；maintained 原版 `LauncherModel` 额外兼容 `badge_count_*`、HTC、Sony 等第三方角标字段，`ApplicationProxy` 还注册 `launcher_hide_badge / launcher_badge_swipe_clean` 观察者，通过 `LauncherPreferences` 刷新 `Constants.SHOW_MESSAGE_FLAG / ENABLE_SWEEP_MESSAGE_FLAG`，`Cell.updateFlagMessageNumber()` 根据计数创建或清除 `mFlagMessageRect`。本轮只记录差异，未改角标逻辑。
- 验证：`build.bat` 已通过 maintained 设置资源构建、apktool smali、Java 兼容层编译和签名，输出 `build\launcher-signed.apk`。

### 2026-06-24：设置页隐私密码入口与页面锁内置密码

- 对照文档中页面锁现状，原版设置隐私密码入口没有迁到当前桌面设置页，导致用户只能在编辑模式点锁时被动设置。主设置页新增“隐私密码”行，点击后无密码则输入两遍 4-16 位数字密码；已有密码则先验证旧密码，再设置新密码。保存仍只写 Launcher 私有 `launcher_page_lock/password_hash`，摘要算法继续使用带命名域的 SHA-256，页面锁 requestCode 20/21 和原版页面状态机不变。
- 页面锁弹窗的校验同步收紧为 4-16 位数字，避免设置页和锁入口对密码格式判断不一致。
- 验证：`build.bat` 已完成 maintained 设置资源构建、apktool smali、Java 兼容层编译和签名，输出 `build\launcher-signed.apk`。APK 结构检查确认包含 `assets/settings_maintained/maintained-settings-res.apk`；当前 shell 中 `adb` 不在 PATH，`apksigner verify` / `aapt dump badging` 单独调用超时，未做装机交互验证。

### 2026-06-22：Android 16 触摸、图标尺寸与文件夹动画修复

- Android 16 / VIVO 上压平手指后桌面不翻页：ADB 原始输入与应用事件确认触摸坐标没有中断，根因是旧 `TVelocityAndGestureTracker` 把较大的 `MotionEvent.getSize()` 当作专用 sweep 手势。Android 15+ 将旧 `sweep_threshold` 提升到 1.0，避免抢占普通翻页；下滑搜索改为先把完整 MotionEvent 交给 RootView / SMEngine，再旁路判断，避免搜索入口截断桌面触摸序列。
- 普通、改进版和自定义图标此前存在两套尺寸规则：只有改进版按84%且只能缩小。现在统一按 alpha 可见边界居中到画布短边90%，允许有限度放大和缩小，所有来源共用 `normalizeLauncherIcon()`；设置页100%运行时基准由原先112%调整为120%，即用户确认观感合适的原120%大小，滑块显示值保持不变。
- 展开文件夹内容按书架实际可见行高自适应：图标为 48%，应用名为 9.2%，文字中心偏移为 29%；用户调整 50%~150% 图标大小时，展开图标、文字和间距同比缩放。此前误把“缩略图松手后上移”当成展开页落点问题而临时修改的 `M.smali` / `FolderCellPositionAdapter` 入口已全部撤销，不保留错误方案。
- 关闭文件夹缩略图松手后再上移：拖入动画以外框几何中心计算，而最终 2×2 / 3×3 viewport 使用 PNG 内真实搁板中心，两者相差约外框高度 3.6%~3.7%。`folder_icon_center_offset_2_2 / 3_3` 现在按当前外框尺寸动态补偿，使动画落点与最终缩略图一致，并随屏幕和图标比例自适应。
- 活动日历最终保留原版底板、日期宽度和布局矩形，只校正旧SMEngine在不同 density 下的实时纹理采样：320dpi及以下使用100%日期高度、80% Y偏移；高于320dpi使用87.5%高度、72% Y偏移。根节点继续按运行时 `icon_size_origin / calendar_back_size` 缩放，因此设置50%-150%图标尺寸时，底板、挂环和日期作为一个整体同比变化；不再使用原版脱离当前设置的 `Constants.icon_scale × active_icon_scale`。
- 日期刷新链路保持不变：系统 `DATE_CHANGED`、`TIME_SET`、`TIMEZONE_CHANGED` 广播仍由原版接收器处理，日期纹理缓存键继续包含年份和年内日序；其他手机只要能被标准日历类别或厂商包名检测到，就会显示当日日期并在跨日后更新。
- 验证：最新 APK 通过 `build.bat` 构建签名并覆盖安装到华为 DRA-AL00（Android8.1、720×1440、320dpi），Launcher 进程正常存活，无 `VerifyError`、`NoSuchMethodError` 或崩溃；用户实机截图确认日历比例、日期高度和位置恢复正常。此前尝试把密度分支直接写入复杂 smali 方法曾触发寄存器类型 `VerifyError`，该实现已彻底删除，密度判断现位于 Java 兼容层。
- 页面锁链路对照原版确认仍保留页状态 `0/2`、锁动画、待验证页面以及 requestCode 20（设置密码）/21（验证解锁）的结果处理；断点是原版依赖系统私有 `com.android.settings.ChooseLockPasswordFake`，已有 fallback 又启动依赖锤子安全中心控件的 `ConfirmPasswordActivity`。现改为 Launcher 内 AlertDialog：首次设置输入两遍4-16位数字密码，解锁输入一次；只在私有 `launcher_page_lock` 中保存带固定命名域的 SHA-256 摘要，验证成功后回调原版 `J.onActivityResult()`，页面锁定/隐藏/解锁仍由原版状态机执行。
- 本轮验证：`build.bat` 构建、Java编译、apktool smali、签名均通过；APK覆盖安装到 API31 `emulator-5554` 和华为 DRA-AL00 成功，模拟器执行 `cmd package compile -m verify -f` 成功，两台设备均无 `VerifyError`、`NoSuchMethodError` 或 Launcher 崩溃。SMEngine编辑画面不暴露Android View层级，密码弹窗和页面锁交互仍需用户在当前页面点击确认。

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
  - 下面几条是当时阶段性判断，后续已被 `2026-06-28` 与 `2026-06-29` 的记录进一步修正；如果与顶部当前状态或 6 月 28/29 日记录冲突，以后者为准。
  - 对照 maintained 的多用户查询思路，把桌面应用列表、搜索页和启动链路继续向 `LauncherApps` / 用户句柄查询靠拢。
  - 修复首次安装后桌面第一次进入只显示一个微信、退出重开才显示两个微信的竞态问题方向：启动和恢复时会触发分身应用 bootstrap，减少多用户列表未及时进入桌面的情况。
  - 历史阶段曾让分身图标走 `PackageManager.getUserBadgedIcon` 和当前工程的面具绘制兜底；该描述后来被证实会在部分 ROM 上叠加厂商角标，不再代表当前可信实现。
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
- 下滑搜索：
  - 这一阶段发现原桌面手势代码实际只认上滑，曾临时改为上下滑方向都可进入搜索；该过渡方案已在 2026-06-30 收口，上滑入口现已停用，仅保留下滑搜索。
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
- 下滑搜索：当前工程不再接入独立 QuickSearch APK，搜索入口统一进入 launcher 内 `ThemeChooserActivity` 自绘搜索页；原版上滑入口已停用，保留的旧 provider / call stub 只作为入口痕迹和兼容跳转参考，不再作为独立应用安装目标。
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
