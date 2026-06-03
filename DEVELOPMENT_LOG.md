# 开发与修复记录

本文件从旧 README 中拆出，用来记录每天修复了哪些 BUG、实现了哪些功能、当时采用了什么修复方式，以及历史迁移路线。

注意：本文档顶部的“当前状态总览”和“每日修复记录（倒序）”是当前可信记录。后面的“历史归档”保留旧记录原文，其中有些日期和标题不是严格排序，且早期条目里的“暂未实现 / 后续接入 / 当前不可用”只代表当时状态；如果和顶部记录或 `README.md` 冲突，以顶部记录和 `README.md` 为准。

## 当前状态总览（2026-06-03）

### 已完成

- APK 可通过 `build.bat` 构建、签名并输出 `build\launcher-signed.apk`，最近多次安装到 `emulator-5554` 验证通过。
- 当前发布版本调整为 `v1.4.2`，Manifest `versionCode=16`，`versionName=v1.4.2`；最终 APK 仍以 `launcher/original/AndroidManifest.xml` 二进制清单为准。
- 第一轮兼容安装与包体瘦身完成：最终 APK 的 `minSdkVersion` 从 29 降到 23，`targetSdkVersion` 调整为 28；纹理资源统一走 `1080p`，删除冗余 `assets/Textures/720p` 后，`build\launcher-signed.apk` 从约 105.9MB 降到约 63.9MB。
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
- 内置搜索页已继续按 Smartisan PRO3 搜索体验方向调整：设置页提供“启用下滑搜索”开关；搜索页不再显示自绘 T9 键盘，点击搜索框调用系统输入法；顶部常用应用列表支持横向滑动；输入关键词后的结果行修正为固定高度，图标和文字垂直居中。
- 对照 maintained 的 APK 结构确认：maintained `minSdkVersion=19`、`targetSdkVersion=28`，且只保留 `assets/Textures/1080p`；当前工程第一轮先降到 `minSdkVersion=23`，保留更多运行安全余量，后续如需覆盖 Android 5.x / 4.x 再继续做 API 兼容回归。

### 已完成但需要继续回归

- 首次主题切换动画：主问题已修复，仍需用更多主题、多次清数据冷启动验证是否还有边缘竞态。
- 透明主题换壁纸：选择、即时刷新、恢复默认主链路已修复，仍需分别回归毛玻璃 / 白雾主题。
- 主设置页缩略图：当前 ImageView 显示上限为 `53dp x 63dp`，三项带框缩略图源 bitmap 为 `180 x 210 px`、四周 `12 px` 内边距；这些尺寸是为修复边框不等宽、图标过大、双层边框后固定下来的基准。

### 未完成 / 待处理

- 白雾主题显示异常仍未最终确认修复。
- 透明主题下 Dock 区域是否还有旧层残留、偏移或未清理干净，需要继续截图对比 maintained。
- 原生 Smartisan Settings Activity / Fragment 还没有完整迁移，当前仍由 launcher 包内 `ThemeChooserActivity` 承载 maintained 风格兼容页。
- 对照 `E:\FANG\smartisan\smartisan-launcher-maintained`，当前桌面设置和桌面能力仍需按优先级继续移植；“分享此应用给朋友”和“用户体验改进计划”不再作为移植目标。
  - [x] 桌面隐藏虚拟键：优先级最高，key 为 `launcher_hide_navigation_bar`，已接入首页开关并限制只由 Launcher 主界面应用系统 UI flags。
  - [x] 检查更新：已接入当前项目 GitHub Release 检测；存在 APK 资产时提示下载，普通应用更新仍需系统安装确认。
  - [x] 关闭电池优化：优先请求当前包名 `com.smartisanos.launcher` 的电池优化弹窗，系统不允许时回退当前应用详情页。
  - [x] 关于我们：已从信息弹窗改为完整 maintained / 原版锤子风格页面。
  - [x] 紧贴屏幕横扫清除角标：key 为 `launcher_badge_swipe_clean`，已接入 maintained 风格设置页开关。
  - [x] 隐藏图标上的角标：key 为 `launcher_hide_badge`，已接入 maintained 风格设置页开关。
  - [x] 下滑 / 上滑搜索：已修正旧逻辑只认上滑、前三次只提示、依赖缺失 QuickSearch provider 的问题，统一打开本项目内置应用搜索页。
  - [ ] 天气：当前保留天气权限、资源和旧 Smartisan 天气库，但旧天气接口可能不可用，后续建议按 maintained 的方向优先拉起系统 / 已安装天气应用。
  - [ ] 日历：当前保留日历权限和动态图标资源线索，但桌面日期刷新、点击入口和系统日历兼容还未单独回归。
- 提醒角标可以作为后续功能实现目标，但不能简单等同于“应用有通知就一定显示”。当前 old Smartisan / 厂商未读数广播或系统 badge 数据能接入时才有机会显示；普通 Android 通知角标需要额外接入通知监听或 badge 兼容桥。
- 在线主题 APK 下载后仍依赖用户手动安装，普通应用没有静默安装能力。
- 12 / 20 宫格、文件夹、编辑模式、拖拽落点、Dock 动画仍需要更多分辨率和真机回归。

## 阅读顺序

建议按下面顺序接手，不要从文件中间的旧计划直接开始：

1. 先读本节“当前状态总览”，确认哪些已经完成、哪些还待验证。
2. 再读“每日修复记录（倒序）”，按日期倒序查最近改动。
3. 需要追溯原因时，再读后面的“历史归档”。历史归档保留早期判断，其中部分结论已被后续实现覆盖。

## 每日修复记录（倒序）

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

### 历史日期索引

- 2026-06-01：应用图标页最终交互修正，复用首页同款开关，图标包行并入同一卡片组，单应用图标选择和相册返回改为保持当前位置的行级刷新。
- 2026-05-31：首次主题切换翻页动画、主题设定后设置页闪回、透明主题壁纸选择 / 恢复默认、应用图标三态继续修复；主设置页缩略图继续对齐 maintained。
- 2026-05-29：经典黑 12 / 20 宫格顶底资源色差修复，恢复原版 APK 资源。
- 2026-05-27：主入口缩略图、宫格预览、壁纸选择、开关动画、即时生效继续修正。
- 2026-05-26：应用图标页迁移 maintained 交互，桌面主图标加载入口接入 redirect / icon pack 链路。
- 2026-05-23：主题下载、主题入口预览、翻页动画写入与刷新修正。
- 2026-05-19：12 / 20 宫格切换加载过渡、长屏自适应和切换过渡二次修正。
- 2026-05-18：original-port 回退修复、启动崩溃、文件夹与宫格切换修复。
- 2026-05-16：maintained 设置页真实迁移、二级页面入口、开关控件和布局自适应探索。
- 2026-05-15 及更早：入口清理、原生 Settings 依赖调查、错误路线冻结。

---

## 历史归档

下面内容是按当时开发过程保留下来的原文，保留旧顺序和旧标题，里面的“当前”“下一步”“不要继续”等说法只对对应日期有效。若和文件顶部“当前状态总览 / 每日修复记录”冲突，以顶部记录和 `README.md` 为准；不要从历史归档中直接判断今天的完成状态。

## 早期设置页迁移记录

### 2026-05-23 设置页迁移记录

- 当前主工程仍是 `smartisan-launcher-original-port`，不是 `smartisan-launcher-maintained`。
- 本次只把 maintained/main 的“桌面主题”和“桌面翻页动画”页面作为可运行兼容层迁入当前设置宿主，避免继续从零手绘。
- 主题页使用 maintained 的 `theme_preview_gridview` / `theme_preview_block` 布局资源，分为“本地主题”和“在线主题”两组。
- 在线主题下载源使用 maintained 记录的 GitHub Release：`https://gh.llkk.cc/https://github.com/15255040419/smartisan-launcher/releases/download/themes-v1/<package>.apk`。
- 主题点击逻辑：本地或已安装主题直接写入 `launcher_grid_theme` / `launcher_theme_preview_res` 并重启桌面；未安装主题调用系统 DownloadManager 下载 APK，完成后需要安装主题包。
- 翻页动画页使用 maintained 的 `launcher_anim_chooser_layout` / `gridview_chooser_item_layout`，写入 `launcher_page_animation`。
- 本次已通过 `build.bat` 编译签名，输出：`build\launcher-signed.apk`。

当时的重要结论：

- 当时实际显示的 `NativeLauncherSettingsHost` 不是原生 Smartisan Settings 页面。
- 当时桌面图标“桌面设置”进入的是 `ThemeChooserActivity -> NativeLauncherSettingsHost.show()`；只要这条调用还在，屏幕上看到的就一定是自绘兼容页，不是原生页面。
- 当时的判断是不继续美化、扩展、修补这个 Java 程序化页面。
- 正确方向是迁移 `com.android.settings-100.apk` 里的原生 `LauncherSettingsActivity` / `LauncherSettingsFragment` / `ObsessionModeFragment` 及其最小依赖。
- 普通 Android / Google 虚拟机里的系统 `com.android.settings` 不包含锤子原生 `LauncherSettingsActivity`，所以“桌面设置图标直接外跳系统 Settings”不可用。
- 当时 `NativeLauncherSettingsHost` 只能作为临时入口验证和 key 验证用，后续应被原生迁移页面替换。
- 之后的设置页改动必须先证明使用了 `com.android.settings-100.apk` 的原生 layout / widget / drawable / key；不能只按截图重新画。

接手者请先读完本节，再动代码。不要凭截图临时仿 UI。

---

## 历史设置页改造路线

### 设置页改造路线

方向锁定：设置页不再以自写程序化 UI 作为目标。优先复用 / 迁移 `com.android.settings-100.apk` 中原生 Smartisan 桌面设置页面；只有原生类依赖普通 Android 不存在的私有 API 时，才做最小兼容替换。`smartisan-launcher-maintained` 只作为普通 Android 兼容和补缺功能的参考，不作为首选界面来源。

已确认的原生设置类：

```text
scratch/settings_orig/smali/com/android/settings/LauncherSettingsActivity.smali
scratch/settings_orig/smali/com/android/settings/LauncherSettingsFragment.smali
scratch/settings_orig/smali/com/android/settings/ObsessionModeFragment.smali
```

已确认的原生设置资源 / key 线索：

```text
launcher_settings_fragment
launcher_settings_theme
launcher_settings_switcher_layout
obsession_settings_layout
launcher_hide_lable
launcher_hide_badge
```

已确认的关键依赖：

```text
scratch/settings_orig/smali/com/android/settings/LauncherSettingsFragment.smali
  -> 继承 com.android.settings.SupportFragment
  -> 使用 smartisanos.widget.SettingItemText
  -> 使用 smartisanos.widget.SettingItemSwitch
  -> 使用 com.android.settings.SettingItemTextVertical
  -> 使用 com.android.settings.PreviewSettingItemView
  -> 使用 com.android.settings.widget.LauncherPreview
  -> 使用 com.android.settings.widget.VerticalOptionsCheckView
  -> 使用 com.android.settings.widget.SettingsBottomExtraView

scratch/settings_orig/smali/com/android/settings/ObsessionModeFragment.smali
  -> 使用 smartisanos.widget.SettingItemSwitch
  -> 写入 launcher_hide_lable / launcher_hide_badge / launcher_badge_swipe_clean

scratch/settings_orig/smali/com/android/settings/LauncherSettingsActivity.smali
  -> 继承 com.android.settings.MainSettings
  -> getBindFragment() 返回 LauncherSettingsFragment
```

注意：`com.android.settings-100.apk` 初次反编译只展开了 smali，资源解包提示缺少 Smartisan framework package ID 2。不能直接大规模复制 XML / drawable 到 launcher 里编译，因为资源 ID、style、framework attr 可能丢失。正式迁移前要用 `aapt2 dump xmltree`、`aapt2 dump resources`、APK 直接抽取资源三种方式建立依赖表。

执行顺序：

1. [x] 记录并冻结错误方向。
   - 不再继续扩展 `NativeLauncherSettingsHost`。
   - 不再新增仿原生的 Java 程序化 UI。
   - 当前临时页只能保留为入口可用性和 key 写入验证。
   - 保留已经验证正确的桌面入口名称、图标、隐藏 launcher 自身入口、坐标与文件夹修复。
2. [x] 验证“直接外跳原生 Settings 页面”不可行。
   - 普通 Google 虚拟机的 `com.android.settings` 没有 `LauncherSettingsActivity`。
   - 不能依赖用户安装 `com.android.settings-100.apk` 替换系统 Settings。
   - 因此桌面设置必须在 launcher 包内承载。
3. [x] 验证“直接调用原生 Settings 页面”是否可行。
   - 在虚拟机中尝试安装/启动 `com.android.settings-100.apk`。
   - 如果不能替换系统 Settings，就检查当前系统是否已有对应 `com.android.settings/.LauncherSettingsActivity`。
   - 从桌面“桌面设置”入口尝试显式 Intent 跳转：`com.android.settings/com.android.settings.LauncherSettingsActivity`。
   - 记录失败原因：签名冲突、sharedUserId、私有 framework、未导出 Activity、缺权限或资源崩溃。
4. [ ] 建立原生页面依赖清单，不改业务代码。
   - 用 `aapt2 dump xmltree com.android.settings-100.apk --file res/layout/launcher_settings_activity.xml` 查看根布局。
   - 用 `aapt2 dump xmltree com.android.settings-100.apk --file res/layout/launcher_settings_fragment.xml` 查看主页面。
   - 用 `aapt2 dump xmltree com.android.settings-100.apk --file res/layout/launcher_settings_theme.xml` 查看主题/壁纸/图标页面。
   - 用 `aapt2 dump xmltree com.android.settings-100.apk --file res/layout/obsession_settings_layout.xml` 查看强迫症页面。
   - 用 `aapt2 dump resources com.android.settings-100.apk` 查出上述 layout 用到的 drawable / string / dimen / id。
   - 把结果写入 README 的“原生设置页依赖表”后，再开始迁移。
5. [ ] 先迁一个真正原生 Activity 宿主。
   - 不要继续用 `NativeLauncherSettingsHost` 作为最终页。
   - 新建包名建议：`com.smartisanos.launcher.settings.nativeui`。
   - 新宿主 Activity 负责显示原生迁移 Fragment，并处理返回键 / 标题栏。
   - `ThemeChooserActivity` 只作为临时入口或直接替换成新宿主。
6. [ ] 迁移原生主页面最小闭环。
   - 先迁 `LauncherSettingsFragment` 的页面结构。
   - 按“桌面设置功能规格”的主页面顺序排列，不得自行调整顺序。
   - 只保留本桌面相关项：默认桌面、单板块视图、桌面主题、桌面翻页动画、桌面图标感知光影、隐藏桌面图标名称、解锁时桌面的动画效果、单板块视图切换至多板块视图、强迫症选项。
   - 暂时屏蔽依赖系统级 Settings 服务的项，不要用假 UI 代替。
   - 必须使用原生抽取资源和原生 widget 结构，不能重新手写一个不同布局。
7. [ ] 再迁 `ObsessionModeFragment`。
   - 优先接入桌面相关项：隐藏桌面图标名称、隐藏图标上的角标、紧贴屏幕横扫清除角标。
   - 其他系统级项如电池、状态栏、拨号键盘模式，只有当前 launcher 需要时再处理。
8. [ ] 逐个替换 Smartisan 私有依赖。
   - `smartisanos.widget.SettingItemText` / `SettingItemSwitch` / `SwitchEx`：优先从提取 APK 或 framework 里找原类；找不到时在 launcher 内做同名兼容类，保证 XML 和 smali 能按原接口调用。
   - `smartisanos.api.PackageManagerSmt`：不能直接用时，替换为 Android 标准 `PackageManager` 能力或跳过默认桌面切换逻辑。
   - `SettingsTracker` / EventBus / TNT / PC 模式相关逻辑：先 stub 成 no-op，避免影响桌面设置核心功能。
9. [ ] 功能逐项验收。
   - 按“桌面设置功能规格”的 1-17 项逐项验收。
   - 每项都要记录：页面位置、原生交互、写入 key、当前 launcher 读取位置、是否需要重启 launcher、adb 验证结果。
   - 第一阶段只要求第一优先级功能全部可用；第二、第三优先级可先显示禁用或隐藏，但必须写清楚原因。
10. [ ] 只有原生页面确实缺失或依赖过重时，才回看 maintained。
   - maintained 用于补普通 Android 兼容、图标资源、缺失设置项和可运行逻辑。
   - 不再用 maintained 或手写 UI 覆盖已有原生 Smartisan 设置风格。

每一步完成前先更新本节计划状态；每一步完成后记录：改动文件、真实写入 key、构建安装结果、截图或 adb 验证结果。

已完成：

- 已确认普通 Google 虚拟机不能直接启动 `com.android.settings/com.android.settings.LauncherSettingsActivity`，外跳方案不可作为普通手机适配方案。
- `ThemeChooserActivity` 当前作为“桌面设置”包内宿主，直接加载 `NativeLauncherSettingsHost`，点击桌面图标不会再提示“未找到原生锤子桌面设置页”。
- 入口清理已验证：全新 `pm clear` 后数据库 dump 中出现 `桌面设置`，组件为 `com.smartisanos.launcher.theme.ThemeChooserActivity`；launcher 自身普通启动入口没有进入桌面列表。
- 原生 Settings 相关图片已抽入 `launcher/assets/settings_native/`，当前页面已使用原生 12 / 20 宫格预览图、主题/动画入口图。
- 当前可运行设置 key：12 / 20 宫格切换写 `Settings.Global["launcher_mode"]`，翻页动画写 `Settings.Global["launcher_page_animation"]`，强迫症选项写 `Settings.System["launcher_hide_lable"]`、`Settings.System["launcher_hide_badge"]`、`Settings.System["launcher_badge_swipe_clean"]`。

待完成：

- 当前“桌面设置”虚拟图标已替换为 maintained 的 launcher settings 图标。
- 当前包内承载页仍是迁移骨架，而且用户已明确不接受它作为界面方向；后续不要继续改它的视觉。
- 下一步继续做“原生页面最小依赖集移植”：把 `com.android.settings-100.apk` 中的 `LauncherSettingsFragment`、`ObsessionModeFragment`、`LauncherPreview`、`VerticalOptionsCheckView`、`SettingsBottomExtraView` 及其实际依赖迁入 launcher 包内。
- 需要继续解决 `com.android.settings-100.apk` 缺 Smartisan framework package ID 2 导致资源 XML 不能完整反编译的问题；在此之前，优先用 `aapt2 dump xmltree` 和 APK 直接抽取资源推进。

---

## 原生设置页依赖与接手顺序

### 原生设置页依赖表

接手者先补全这张表，再迁移代码。不要跳过依赖表直接复制 smali。

| 页面/类 | 来源 | 当前结论 | 下一步 |
| --- | --- | --- | --- |
| `LauncherSettingsActivity` | `scratch/settings_orig/smali/com/android/settings/LauncherSettingsActivity.smali` | 很薄，只继承 `MainSettings` 并返回 `LauncherSettingsFragment` | 不建议原样迁 `MainSettings`；应在 launcher 内建轻量宿主 Activity，然后挂迁移后的 Fragment |
| `LauncherSettingsFragment` | `scratch/settings_orig/smali/com/android/settings/LauncherSettingsFragment.smali` | 真正的桌面设置主逻辑 | 先拆 `onCreateView`、`onClick`、`onLauncherTypeChanged`、`onLauncherThemeChanged`、`onOptionSelected` |
| `ObsessionModeFragment` | `scratch/settings_orig/smali/com/android/settings/ObsessionModeFragment.smali` | 强迫症选项逻辑，含桌面相关 key | 优先迁桌面相关 3 个开关，系统状态栏/电池相关项先 no-op 或隐藏 |
| `LauncherPreview` | `scratch/settings_orig/smali_classes2/com/android/settings/widget/LauncherPreview.smali` | 单板块视图预览控件 | 迁移前先列出其 layout、图片、callback、Settings key |
| `VerticalOptionsCheckView` | `scratch/settings_orig/smali_classes2/com/android/settings/widget/VerticalOptionsCheckView.smali` | 原生两项/多项选择控件 | 需要保留原交互和选中红勾，不要用普通 RadioButton 仿 |
| `SettingsBottomExtraView` | `scratch/settings_orig/smali_classes2/com/android/settings/widget/SettingsBottomExtraView.smali` | 页面底部说明/扩展视图 | 迁主页面时确认是否必须；非必须先跳过但记录 |
| `SettingItemTextVertical` | `scratch/settings_orig/smali/com/android/settings/SettingItemTextVertical.smali` | 主题/翻页动画列表项 | 优先迁，页面风格差异主要来自这些原生列表项 |
| `PreviewSettingItemView` | `scratch/settings_orig/smali/com/android/settings/PreviewSettingItemView.smali` | 强迫症页面预览选项 | 迁 `ObsessionModeFragment` 时需要 |
| `smartisanos.widget.SettingItemText` | 原生 framework / Settings 依赖 | 当前 launcher 包内缺失 | 先搜索提取 APK 和 framework；找不到则在 launcher 内实现同名兼容类 |
| `smartisanos.widget.SettingItemSwitch` | 原生 framework / Settings 依赖 | 当前 launcher 包内缺失 | 先搜索提取 APK 和 framework；找不到则在 launcher 内实现同名兼容类 |
| `smartisanos.widget.SwitchEx` | 原生 framework / Settings 依赖 | 当前 launcher 包内缺失 | `SettingItemSwitch.getSwitch()` 依赖它，必须一起解决 |
| `smartisanos.widget.TitleBar` | 原生 framework / Settings 依赖 | 当前 launcher 包内缺失 | 宿主 Activity 标题栏需要，找不到则做同名兼容类 |

### 接手顺序

从这里继续，不要重新发散：

1. 只改 README 或新增分析文件，先补全 `launcher_settings_fragment.xml`、`launcher_settings_theme.xml`、`obsession_settings_layout.xml` 的 xmltree 记录。
2. 搜索 `smartisanos.widget.SettingItemText`、`SettingItemSwitch`、`SwitchEx`、`TitleBar` 是否存在于其他提取 APK、framework 或 maintained 中。
3. 决定迁移策略：
   - 能找到原类：复制原类和最小依赖。
   - 找不到原类：在 launcher 内写同名兼容类，但接口必须匹配原 smali 调用。
4. 建立新包：`com.smartisanos.launcher.settings.nativeui`。
5. 新建原生迁移宿主，不继续改 `NativeLauncherSettingsHost`。
6. 第一版只迁主页面静态结构，严格按“桌面设置功能规格”排列；所有不可用功能先禁用或隐藏，并在 README 写清楚。
7. 第二版接第一优先级 key 写入：`launcher_mode`、`launcher_grid_theme`、`launcher_hide_lable`、`launcher_hide_badge`、`launcher_badge_swipe_clean`。
8. 第三版再处理 `launcher_page_animation`、主题选择、壁纸、应用图标、图标感知光影、解锁动画等依赖更重的功能。

### 当前不应继续投入的文件

这些文件现在只是临时状态，不要继续扩展：

```text
launcher/tools/java/com/smartisanos/launcher/theme/NativeLauncherSettingsHost.java
launcher/assets/settings_native/*
```

可以保留它们，直到原生迁移页能打开；到时再删除或改为 fallback。

### 必须保护的已验证修复

迁设置页时不要顺手改这些：

```text
launcher/smali/com/smartisanos/launcher/view/x.1.smali
launcher/smali/com/smartisanos/launcher/data/Constants.smali
launcher/assets/layout/portrait/**/MODE_9/layout.xml
launcher/smali/smartisanos/app/SmartisanProgressDialog.smali
launcher/smali/com/smartisanos/launcher/Aa.smali
launcher/resources.arsc
```

这些文件分别涉及 dock / 编辑模式坐标、屏幕宽度适配、文件夹大小、启动加载动画、桌面设置虚拟入口、应用名和资源表。除非任务明确要求，不要动。

---

## 设置页执行日志

### 设置页执行日志

- 2026-05-15：完成入口清理。
  - 改动文件：`launcher/resources.arsc`、`launcher/smali/com/smartisanos/launcher/Aa.smali`、`launcher/smali/com/smartisanos/launcher/data/Constants.smali`。
  - 结果：APK 应用名为“锤子桌面”；桌面内虚拟入口为“桌面设置”；launcher 自身 MAIN/LAUNCHER 入口通过 `BLACK_COMPONENT_LIST` 隐藏。
  - 验证：logcat 数据库 dump 中 `桌面设置` 存在，普通 launcher 入口不存在；adb 截图确认首页无自身入口。
- 2026-05-15：完成设置主页视觉第一版。
  - 改动文件：`launcher/smali/com/smartisanos/launcher/theme/ThemeChooserActivity.smali`、`launcher/smali/com/smartisanos/launcher/theme/ThemeChooserActivity$SettingsAdapter.smali`。
  - 结果：设置主页改为浅灰背景、居中标题栏、白色双行列表；设置项保留“桌面宫格、页面翻页动画、主题设置、图标设置、强迫症选项、关于锤子桌面”。
  - 验证：`build.bat`、`adb install -r`、直接启动 `ThemeChooserActivity` 均成功；adb 截图确认主页和宫格弹窗均可打开。
- 2026-05-15：按原生锤子设置截图重排桌面设置第一版。
  - 改动文件：`launcher/smali/com/smartisanos/launcher/theme/ThemeChooserActivity.smali`、`launcher/smali/com/smartisanos/launcher/theme/ThemeChooserActivity$SettingsClickListener.smali`、`launcher/smali/com/smartisanos/launcher/theme/ThemeChooserActivity$ObsessionClickListener.smali`。
  - 结果：主页面改为“桌面设置项”，入口顺序参考原生“桌面设置项 / 主题、壁纸、图标 / 强迫症选项”；“单板块视图”继续打开 12 / 20 宫格真实切换；“强迫症选项”使用多选弹窗承载隐藏图标名称、隐藏角标、横扫清除角标。
  - 已接真实 key：隐藏图标名称写 `launcher_hide_lable`；隐藏角标写 `launcher_hide_badge`；横扫清除角标写 `launcher_badge_swipe_clean`。当前桌面读取位置在 `launcher/smali/com/smartisanos/launcher/data/O.smali` 的 `J(Context)`、`K(Context)`、`E(Context)`。
  - 验证：`build.bat` 成功；本机 `adb` 位于 `C:\Users\ck\adb.exe`，但当前虚拟机状态为 `offline`，暂未完成安装截图验证。
- 2026-05-15：设置页路线修正。
  - 用户确认上一版自写 UI 不应作为最终方向；应优先直接复用原生提取的 `com.android.settings-100.apk` 设置页面。
  - 已初步确认原生 Settings 中存在 `LauncherSettingsActivity`、`LauncherSettingsFragment`、`ObsessionModeFragment`，并包含桌面设置项、主题/壁纸/图标、强迫症选项等逻辑。
  - 已将新的执行计划写入“设置页改造路线”：先完整反编译原生 Settings，验证能否直接跳转；不可跳转时再移植原生最小依赖集；maintained 仅作为兼容补缺参考。
  - 本条只记录计划修正，尚未开始执行清理或移植。
- 2026-05-15：撤掉自写设置页，改为原生 Settings 桥接入口。
  - 改动文件：`launcher/smali/com/smartisanos/launcher/theme/ThemeChooserActivity.smali`、`build.bat`、`launcher/scratch/java/com/smartisanos/launcher/theme/LauncherSettingsUi.java`。
  - 结果：`ThemeChooserActivity` 不再加载自写 UI；启动后显式跳转 `com.android.settings/com.android.settings.LauncherSettingsActivity`；找不到时只提示缺少原生锤子设置页。
  - 已清理：`LauncherSettingsUi.java`、`classes2.dex` 辅助构建、临时 `ThemeChooserActivity$ModeClickListener` 和 `ThemeChooserActivity$ObsessionClickListener`。
  - 验证：当前 Google 虚拟机 `cmd package resolve-activity -n com.android.settings/com.android.settings.LauncherSettingsActivity` 返回 `No activity found`，说明普通系统不能直接复用外部原生 Settings，下一步要做原生最小依赖移植。
- 2026-05-15：继续追原生 Settings 页面依赖。
  - `aapt2 dump xmltree` 可读取原生 `launcher_settings_fragment.xml`、`launcher_settings_theme.xml`、`launcher_settings_switcher_layout.xml`、`obsession_settings_layout.xml`，即使 apktool 因缺 framework 不能完整解包。
  - 原生桌面设置主页面依赖：`smartisanos.widget.SettingItemText`、`smartisanos.widget.SettingItemSwitch`、`com.android.settings.SettingItemTextVertical`、`com.android.settings.widget.LauncherPreview`、`VerticalOptionsCheckView`、`SettingsBottomExtraView`。
  - 当前 launcher 包内没有 `smartisanos.widget.SettingItemText / SettingItemSwitch / TitleBar`，也没有 `com.android.settings.widget.LauncherPreview` 等控件；所以不能只复制 `LauncherSettingsFragment.smali`，必须同时迁控件和对应资源。
  - 原生 Settings 资源中已确认有 12 / 20 宫格预览图：`launcher_preview_grid_12*`、`launcher_preview_grid_20*`、`launcher_large_preview_grid_12`、`launcher_large_preview_grid_20`。
- 2026-05-15：撤掉外跳失败提示，改为包内迁移承载页。
  - 改动文件：`launcher/smali/com/smartisanos/launcher/theme/ThemeChooserActivity.smali`、`launcher/tools/java/com/smartisanos/launcher/theme/NativeLauncherSettingsHost.java`、`build.bat`。
  - 结果：点击桌面“桌面设置”不再外跳系统 `com.android.settings`，而是在 launcher 包内打开可运行设置页。
  - 已接入 key：`launcher_mode`、`launcher_page_animation`、`launcher_hide_lable`、`launcher_hide_badge`、`launcher_badge_swipe_clean`。
  - 构建验证：`build.bat` 成功，输出 `build/launcher-signed.apk`。
  - 安装验证：`C:\Users\ck\adb.exe install -r build\launcher-signed.apk` 成功；`am start -n com.smartisanos.launcher/.theme.ThemeChooserActivity` 成功。
- 2026-05-15：抽取原生 Settings 素材并接入当前承载页。
  - 新增目录：`launcher/assets/settings_native/`。
  - Java 源码位置：`launcher/tools/java/`，构建中间产物仍放在忽略的 `launcher/scratch/`。
  - 抽取来源：`com.android.settings-100.apk` 的 `res/drawable-xxhdpi-v4/`。
  - 已用素材：`launcher_large_preview_grid_12.png`、`launcher_large_preview_grid_20.png`、`launcher_preview_grid_12.png`、`launcher_preview_grid_20.png`、`launcher_anim_video_preview.png`、`setting_item_icon_launcher.png`。
  - 结果：单板块视图预览、12 / 20 宫格图、主题入口图、翻页动画入口图改为原生 Settings 素材；选中态不再写死 12 宫格，会读取 `launcher_mode`。
  - 验证截图：`build/settings-host-native-assets-2.png`。
- 2026-05-15：冻结设置页方向，只更新文档。
  - 用户确认当前 `NativeLauncherSettingsHost` 仍不像原生 Smartisan Settings，不能继续沿这个方向乱改。
  - 本次只改 README，不改代码。
  - 已明确下一步必须迁移 `com.android.settings-100.apk` 的原生页面最小依赖集。
  - 已新增“原生设置页依赖表”“接手顺序”“当前不应继续投入的文件”“必须保护的已验证修复”。
  - 接手者应先补全依赖表，再迁移代码；不要继续美化或扩展 `NativeLauncherSettingsHost`。
- 2026-05-15：确定桌面设置功能规格，只更新文档。
  - 本次只改 README，不改代码。
  - 已新增“桌面设置功能规格”，明确主页面、主题页、强迫症页的功能、排列和原生交互。
  - 主页面顺序锁定为：默认桌面、单板块视图、桌面主题、桌面翻页动画、桌面图标感知光影、隐藏桌面图标名称、解锁时桌面的动画效果、单板块视图切换至多板块视图、强迫症选项。
  - 强迫症页第一阶段只做桌面相关三项：隐藏桌面图标名称、隐藏图标上的角标、紧贴屏幕横扫清除角标。
  - 已明确逐项实现顺序：先静态原生骨架，再原生控件兼容层，再 12/20 和主题开关，再强迫症三项，最后处理主题/动画/壁纸/图标等重依赖功能。
- 2026-05-15：实现页面布局第一版。
  - 改动文件：`launcher/tools/java/com/smartisanos/launcher/theme/NativeLauncherSettingsHost.java`。
  - 本次只做布局和层级，不继续扩展复杂业务逻辑。
  - 主页面标题改为“桌面设置项”。
  - 主页面按用户确认顺序排列：默认桌面、单板块视图、桌面主题、锁屏壁纸、桌面翻页动画、应用图标、桌面图标感知光影、隐藏桌面图标名称、解锁时桌面的动画效果、单板块视图切换至多板块视图、强迫症选项。
  - 新增强迫症二级页面，标题为“强迫症选项”，第一阶段显示：隐藏桌面图标名称、隐藏图标上的角标、紧贴屏幕横扫清除角标；拨号面板模式、隐藏唱机中轴作为禁用占位项。
  - 暂未接入的功能使用禁用开关或 toast 占位，不假装已经可用。
  - 构建验证：`build.bat` 成功，输出 `build/launcher-signed.apk`。
  - 安装/截图验证：安装命令传输 APK 成功但 adb 后续多次重启后设备变为 `offline`；已截到主页面顶部 `build/settings-layout-main.png`，底部和强迫症二级页待 adb 恢复后复测。
- 2026-05-15：实现“默认桌面”入口。
  - 改动文件：`launcher/tools/java/com/smartisanos/launcher/theme/NativeLauncherSettingsHost.java`。
  - 参考 maintained 的默认桌面逻辑：Android 10+ 优先通过 `RoleManager` 请求 `ROLE_HOME`；失败或低版本时依次尝试 `android.settings.HOME_SETTINGS`、`android.settings.MANAGE_DEFAULT_APPS_SETTINGS`、MIUI 默认应用设置和普通系统设置。
  - 副标题会读取当前默认 Home；如果当前默认 Home 是本包或 `com.smartisanos.launcher`，显示 `Smartisan 桌面`，否则显示当前默认桌面名称。
  - 说明：Android 不允许普通应用静默把自己设为默认桌面，这里只能拉起系统确认/选择界面。
  - 构建验证：`build.bat` 成功，输出 `build/launcher-signed.apk`。
  - 安装验证：`adb install -r build\launcher-signed.apk` 成功。
  - 功能验证：启动 `com.smartisanos.launcher/.theme.ThemeChooserActivity` 后，默认桌面副标题显示当前默认 Home 为 `Pixel 启动器`；点击“默认桌面”进入系统 `com.google.android.permissioncontroller.role.ui.RequestRoleActivity`，参数包含 `android.app.role.HOME` 和 `com.smartisanos.launcher`。
- 2026-05-15：开始原生 Settings 迁移，先补同名控件兼容层。
  - 本次不继续美化 `NativeLauncherSettingsHost`，只为后续迁 `LauncherSettingsFragment` / `ObsessionModeFragment` 铺依赖。
  - 新增 `smartisanos.widget.SwitchEx`、`smartisanos.widget.SettingItemText`、`smartisanos.widget.SettingItemSwitch`。
  - 新增 `com.android.settings.SettingItemTextVertical`、`com.android.settings.PreviewSettingItemView`。
  - 新增 `com.android.settings.widget.PreviewOptionItemView`、`LauncherPreview`、`VerticalOptionsCheckView`、`SettingsBottomExtraView`。
  - 这些类是最小兼容骨架，类名和常用方法先对齐原生 Settings；视觉和完整行为后续继续按原生控件补齐。
  - 构建验证：`build.bat` 成功，说明兼容类可以编进 `classes2.dex`。
- 2026-05-16：纠正当前可见设置页的锤子风格和关键交互。
  - 改动文件：`launcher/tools/java/com/smartisanos/launcher/theme/NativeLauncherSettingsHost.java`。
  - 行尾箭头改用原生 Settings 抽取素材 `launcher/assets/settings_native/setting_item_arrow.png`，不再使用文本 `>`。
  - “默认桌面”即使当前已经是锤子桌面，也不再只 toast，而是继续进入系统默认桌面/默认应用设置，方便切换。
  - 12 / 20 宫格切换改为确认弹窗流程，确认后写 `Settings.Global["launcher_mode"]`，同步调用 `com.smartisanos.launcher.data.N.d(Context, int)` 写入桌面偏好，然后重启桌面。
  - 构建验证：`build.bat` 成功，输出 `build/launcher-signed.apk`。
  - 安装验证：`adb install -r build\launcher-signed.apk` 成功。
  - 功能验证：点击 20 宫格弹出“切换桌面宫格”确认框，包含“取消 / 切换”按钮。
- 2026-05-16：修复 20 宫格实际不生效，并继续修正锤子风格细节。
  - 改动文件：`launcher/tools/java/com/smartisanos/launcher/theme/NativeLauncherSettingsHost.java`。
  - 原因：`com.smartisanos.launcher.data.N.d(Context, int)` 参数不是 cell count，而是 page mode；12 宫格 page mode 为 `0x0c`，20 宫格 page mode 为 `0x09`，再由 `Constants.getModeFromPageMode(0x09)` 映射保存为 `prefs_key_launcher_mode = 20`。
  - 修复：20 宫格确认后传入 `pageMode=9`，12 宫格传入 `pageMode=12`；设置页读取状态优先读 `com.smartisanos.launcher_prefs/prefs_key_launcher_mode`，其次兼容 `Settings.Global["launcher_mode"]` 的 `9 / 20`。
  - 顶部返回箭头从文本 `<` 改为自绘左折线 View，避免显示成普通字符箭头。
  - 选中态红圈和白勾重新调整颜色、线宽、圆角端点，向原生 Smartisan 勾选态靠近。
  - 构建验证：`build.bat` 成功。
  - 安装验证：`adb install -r build\launcher-signed.apk` 成功；后续点选复测时 ADB 变为 `offline`，需要设备恢复后补截图和最终 20 宫格桌面验证。
- 2026-05-16：再次纠偏设置页方向，只更新文档和依赖确认。
  - 用户指出当前屏幕上的设置页仍然不是原生 Smartisan Settings；确认属实。
  - 当前入口仍是 `launcher/smali/com/smartisanos/launcher/theme/ThemeChooserActivity.smali -> NativeLauncherSettingsHost.show(Activity)`，所以显示的一定是自绘兼容页。
  - 本次不继续修改 `NativeLauncherSettingsHost` 外观。
  - 已用 `aapt2 dump xmltree` 直接从 `com.android.settings-100.apk` 确认原生页面结构：
    - `res/layout/launcher_settings_activity.xml`：根布局是 `RelativeLayout`，包含 `smartisanos.widget.TitleBar`，再 include `launcher_settings_fragment`。
    - `res/layout/launcher_settings_fragment.xml`：主页面包含 `SettingItemText`、`LauncherPreview`、`launcher_settings_theme`、`launcher_settings_switcher_layout`、多个 `SettingItemSwitch`、`VerticalOptionsCheckView`、`SettingsBottomExtraView`。
    - `res/layout/launcher_settings_theme.xml`：主题/壁纸/图标页使用 `SettingItemTextVertical`。
    - `res/layout/obsession_settings_layout.xml`：强迫症页使用 `TitleBar`、`SettingItemSwitch`、预览图和 `SettingsBottomExtraView`。
  - 已确认关键原生资源 ID / 文件：
    - `layout/launcher_settings_activity = 0x7f0d015e`
    - `layout/launcher_settings_fragment = 0x7f0d015f`
    - `layout/launcher_settings_switcher_layout = 0x7f0d0160`
    - `layout/launcher_settings_theme = 0x7f0d0161`
    - `layout/obsession_settings_layout = 0x7f0d01c1`
    - `drawable/selector_check_icon_smartisan`
    - `drawable/vertical_option_check_bg`
    - `drawable/setting_item_arrow`
- 2026-05-24：修正 maintained 兼容设置页的下载、宫格切换、标题和功能边界。
  - 改动文件：`launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`。
  - 12 / 20 宫格切换：保留加载遮罩后杀当前 launcher 进程，并延后重启闹钟，避免先 `finish()` 设置页导致返回桌面或白屏闪一下。
  - 主题下载：在线主题通过系统 `DownloadManager` 下载到公共 Download 目录，记录下载 id 和本地路径；主题页和主题详情页显示下载进度；下载完成后拉起安装，安装器返回后轮询主题包状态并刷新按钮。
  - 主题安装复测补丁：构建脚本仍保留 `launcher/original/AndroidManifest.xml` 原始二进制清单注入，已在该二进制清单中补入 `android.permission.REQUEST_INSTALL_PACKAGES`，否则 Android 12 安装器会拒绝 launcher 拉起 APK 安装确认页。
  - 标题：当前临时兼容主页标题改为“桌面设置”。
  - 翻页动画：继续写 `Settings.Global["launcher_page_animation"]`、`Settings.System["launcher_page_animation"]` 和 `com.smartisanos.launcher_prefs/launcher_page_animation`，并直接刷新运行时 `Constants.SCROLL_ANIMATION_TYPE`。不要在保存动画后调用 `com.smartisanos.launcher.data.O.W(Context)`；同时已去掉 `O.W(Context)` / `ja.1` 里透明主题强制把 `SCROLL_ANIMATION_TYPE` 重置为默认动画的逻辑，避免切换后仍显示默认动画。
  - 应用图标：按功能规格确认该功能依赖原生主题/图标包服务，第一阶段不应伪造“锤子桌面图标”映射。当前临时兼容页隐藏错误的图标替换列表，只显示“应用图标功能后续接入”说明，避免把普通应用图标或默认图标误标为已实现。
  - 构建验证：使用仓库内 `build/tools/jdk17/jdk-17.0.19+10` 执行 `build.bat` 成功，输出 `build/launcher-signed.apk`；`apksigner verify` 通过 v1/JAR 签名。
    - `drawable/ic_launcher_settings`
    - `drawable/smartisan_home`
  - 下一步代码改动必须从这些原生 layout/widget/resource 迁移开始；不要再按截图补 UI。
- 2026-05-16：开始把入口切到“原生 Settings 资源 inflate”方案。
  - 改动文件：
    - `launcher/smali/com/smartisanos/launcher/theme/ThemeChooserActivity.smali`
    - `launcher/tools/java/com/smartisanos/launcher/theme/SmartisanNativeSettingsHost.java`
    - `launcher/tools/java/smartisanos/widget/TitleBar.java`
    - `launcher/tools/java/smartisanos/widget/SettingItemText.java`
    - `launcher/assets/settings_native/com.android.settings-100.apk`
  - 方案：不再把原生设置页按截图重画；把 `com.android.settings-100.apk` 作为资源包打入 launcher assets，运行时复制到 cache，通过 `AssetManager.addAssetPath()` 加载它自己的 `Resources`，再 inflate 原生 `layout/launcher_settings_activity`。
  - 入口：`ThemeChooserActivity.onCreate()` 已从 `NativeLauncherSettingsHost.show(Activity)` 改为 `SmartisanNativeSettingsHost.show(Activity)`。
  - 回退：如果运行时加载原生资源失败，才回退到 `NativeLauncherSettingsHost` 临时页，并 toast “原生 Smartisan 设置页加载失败，使用临时页”。
  - 已补兼容控件：`smartisanos.widget.TitleBar`；`SettingItemText` 开始读取原生 XML 中 `smartisanos:title`、`setting:title`、`setting:subTitle`、`setting:icon` 等属性。
  - 构建验证：`build.bat` 成功。
  - APK 验证：`build/launcher-signed.apk` 已包含 `classes2.dex`、`assets/settings_native/com.android.settings-100.apk`、`assets/settings_native/setting_item_arrow.png`。
  - ADB 验证：当前 `C:\Users\ck\adb.exe devices -l` 无在线设备，暂未完成安装和截图；下一步有设备后必须确认是否真正显示原生资源页，还是触发了 fallback。
- 2026-05-16：修复原生资源页 fallback 的第一处可疑点。
  - 用户截图显示 toast “原生 Smartisan 设置页加载失败，使用临时页”，说明入口已走到 `SmartisanNativeSettingsHost`，但 inflate 原生资源失败后回退到了 `NativeLauncherSettingsHost`。
  - 改动文件：`launcher/tools/java/com/smartisanos/launcher/theme/SmartisanNativeSettingsHost.java`。
  - 修复：`SettingsResourceContext.getTheme()` 不再把 launcher Theme `setTo()` 到 Settings 资源 Theme，避免跨 AssetManager 拷贝 Theme 导致运行时异常；改为 Settings 资源包自己创建 `Theme_Material_Light_NoActionBar`。
  - 增加诊断：fallback 前写 `Log.e("SmartisanNativeSettings", ...)`，并把异常链写到应用 cache 的 `smartisan-native-settings-error.txt`；toast 追加异常类型，方便没有 logcat 时判断。
  - 构建验证：`build.bat` 成功。
  - 下一步：重新安装后打开桌面设置。如果仍 fallback，先抓 `adb logcat -d | findstr SmartisanNativeSettings` 或取 cache 错误文件，再按具体异常补缺失控件/资源。
- 2026-05-16：去掉旧临时设置页 fallback，避免误以为仍在使用原生页。
  - 用户复测后仍显示旧绘制页，toast 只有 `InflateException`，说明原生 XML 仍失败且代码回退到了 `NativeLauncherSettingsHost`。
  - 改动文件：`launcher/tools/java/com/smartisanos/launcher/theme/SmartisanNativeSettingsHost.java`。
  - 调整：不再 inflate 原生 `launcher_settings_activity` 外壳，改为 launcher 内轻量宿主标题栏 + 直接 inflate 原生 `launcher_settings_fragment`，先绕开原生 `TitleBar` 外层 style/include 风险。
  - 调整：原生 inflate 失败后不再回退到 `NativeLauncherSettingsHost`，而是显示诊断页；toast 会展示异常链前 3 层，例如 `InflateException <- ClassNotFoundException ...`。
  - 目的：彻底停止“失败后显示假设置页”的假象，后续按具体异常补齐原生依赖。
  - 构建验证：`build.bat` 成功。
- 2026-05-16：处理设置宿主显示成第二个最近任务的问题。
  - 用户反馈打开“桌面设置”后最近任务里出现两个“锤子桌面”。
  - 原因确认：最终 APK 的二进制 Manifest 里 `ThemeChooserActivity` 仍有 `taskAffinity="com.android.settings"`；文本 `launcher/AndroidManifest.xml` 修改未生效，因为 `build.bat` 会把 `launcher/original/AndroidManifest.xml` 重新注入 APK。
  - 尝试过直接停用二进制 Manifest 注入，但 apktool 当前构建产物会缺失 `AndroidManifest.xml`，因此已恢复原构建流程，不能用这个办法。
  - 正式修复：已二进制修改 `launcher/original/AndroidManifest.xml`，把 Manifest 字符串池里的 `com.android.settings` 改为等长字符串 `smartisanos.launcher`。
  - 备份文件：`launcher/original/AndroidManifest.xml.before-affinity-patch.bak`。
  - 验证：用 `aapt2 dump xmltree --file AndroidManifest.xml build\launcher-signed.apk` 确认最终 APK 中 `ThemeChooserActivity` 的 `taskAffinity` 已变为 `smartisanos.launcher`，不再单独进入 `com.android.settings` 任务。
  - 注意：因为这是二进制 Manifest 字符串池替换，同一个字符串引用的 `ThemeItemActivity` taskAffinity 和 `smartisanos.PACKAGELOCK_PACKAGENAME` meta-data 也一起变成了 `smartisanos.launcher`。当前目的是解决最近任务拆成两个“锤子桌面”；如果后续恢复主题选择页时出现 package lock 相关异常，需要改成按属性粒度修 AXML，而不是全局替换字符串池。
  - 同时增强诊断页：显示最多 8 层异常链和 deepest cause，方便继续定位 `launcher_settings_fragment.xml line #15` 的真实失败原因。
  - 构建验证：`build.bat` 成功。
- 2026-05-16：确认原生 XML 直接 inflate 失败的根因，并加入安全 inflater。
  - 用户复测显示 deepest cause：`UnsupportedOperationException: Can't convert value at index 16 to dimension: type=0x1`。
  - 用 `aapt2 dump resources com.android.settings-100.apk` 确认 `dimen/settings_item_top_bottom_margin (0x7f0702cc)` 实际值是 `@0x02070032`，即 Smartisan framework package id 2 的资源。
  - 结论：只带 `com.android.settings-100.apk` 不足以直接 inflate 原生 XML；原生 Settings 的 style / dimen 大量依赖 Smartisan framework package id 2。
  - 改动文件：`launcher/tools/java/com/smartisanos/launcher/theme/SmartisanNativeSettingsHost.java`。
  - 处理：加入 `SafeSettingsFactory`，继续读取原生 `launcher_settings_fragment.xml`，但拦截基础 `LinearLayout / ScrollView / TextView / ImageView / FrameLayout`，用无 XML attrs 构造方式避开缺失 framework dimen/style；自定义同名控件继续读取原生 XML 中的 title / subTitle / icon。
  - 这不是最终完整原生 inflate，只是“原生 XML 结构 + 原生资源 + 兼容控件”的迁移路径。真正完整原生需要补齐 package id 2 的 Smartisan framework。
  - 构建验证：`build.bat` 成功。
- 2026-05-16：停止把完整 `com.android.settings-100.apk` 打进 launcher，并回退必崩设置入口。
  - 用户复测仍然进入诊断页，最新异常为 `launcher_settings_fragment.xml line #30 -> Resource ID #0x7f0d0150`；`aapt2 dump resources` 确认该 ID 是原生 Settings 的 `layout/item_bottom_shadow_layout`。
  - 结论：运行时直接把整包 `com.android.settings-100.apk` 作为资源包加载仍不稳定；它会继续暴露原生 Settings 对 Smartisan framework / 资源 ID / include layout 的链式依赖。
  - 体积问题确认：`launcher/assets/settings_native/com.android.settings-100.apk` 单独约 61.72MB，导致最终 APK 从正常体积膨胀到约 148MB。
  - 已删除：`launcher/assets/settings_native/com.android.settings-100.apk`。
  - 已调整：`ThemeChooserActivity` 设置入口从 `SmartisanNativeSettingsHost.show()` 暂时切回 `NativeLauncherSettingsHost.show()`，避免用户继续看到原生加载失败页。
  - 当前 APK 体积：重新构建后 `build/launcher-signed.apk` 约 102.44MB；完整 Settings APK 已确认不再包含在最终 APK 内。
  - 剩余体积来源：最终 APK 内 `assets/Textures` 约 72.57MB，`assets/theme_preview` 约 14.8MB，`assets/settings_native` 约 3.53MB。后续若继续瘦身，应先建立资源使用清单，不能直接删除原版桌面贴图。
  - 后续方向：原生 Settings 继续作为结构/资源/交互参考；可运行逻辑优先参考 maintained，最终仍要保持 Smartisan 风格。
- 2026-05-16：开始迁移 maintained 桌面设置结构。
  - 背景：用户确认当前主线继续使用 original-port；maintained 只迁设置页和普通 Android 兼容逻辑，不迁桌面主体。
  - 参考来源：`smartisan-launcher-maintained` 的 `res/layout/setting_main.xml`、`res/layout/launcher_single_block_options.xml`、`SettingMainActivity.smali`。
  - 改动文件：`launcher/tools/java/com/smartisanos/launcher/theme/NativeLauncherSettingsHost.java`。
  - 调整：主页面标题改为“桌面设置”，页面顺序改向 maintained 靠拢，顶部直接显示“单板块视图”预览选项；“默认桌面”移动到“更多”区域，不再使用原生 Settings 截图那种大卡片布局。
  - 调整：单板块视图卡片改为 maintained 式两个预览选项，当前项目对应为“十二宫格 / 二十宫格”。
  - 修复：20 宫格保存值从错误的 `9` 改为 `20`；读取逻辑也改为按 `12 / 20` 判断，避免点击 20 后落入旧 9 宫格逻辑。
  - 说明：这一步仍是 Java 宿主承载的 maintained 结构迁移第一版，还不是完整复制 maintained 的 XML Activity；下一步应继续把 maintained 的 `SettingItemSwitch`、`PreviewSettingItemView` 视觉细节和弹窗样式补齐。
  - 构建验证：`build.bat` 成功，输出 `build/launcher-signed.apk`，体积约 102.44MB。
- 2026-05-16：补 maintained 风格的开关、勾选态、弹窗和字体细节。
  - 改动文件：`launcher/tools/java/com/smartisanos/launcher/theme/NativeLauncherSettingsHost.java`。
  - 开关：移除 Android 默认 `Switch`，新增自绘 `ToggleView`，使用浅灰轨道、白色圆形滑块、蓝色开启指示点，禁用态使用更淡的灰色。
  - 勾选态：调整 12 / 20 和主题选项的红色圆形勾选尺寸、颜色、勾线圆角和间距，继续向 maintained / Smartisan 预览项靠近。
  - 字体：标题改用 `sans-serif-medium`，普通文字用 `sans-serif`，降低全粗体导致的 Android 默认感。
  - 弹窗：调整圆角、宽度、按钮高度、按钮字体权重、确认按钮红色和分割线，减少系统默认 AlertDialog 味道。
  - 构建验证：`build.bat` 成功。
- 2026-05-16：确认当前设置页仍不是 maintained 原版页面。
  - 用户反馈“还是像自己画的，不像 maintained”，判断属实。
  - 当前 `NativeLauncherSettingsHost.java` 是 Java 程序化 UI，只参考了 maintained 的顺序和部分样式，并没有真正加载 maintained 的 `setting_main.xml` / `SettingMainActivity`。
  - 技术原因：当前 original-port 工程没有正常 `launcher/res` 目录，只有 raw `resources.arsc` 和 `unknown/res`；`build.bat` 还会注入二进制 Manifest。这种结构下不能像普通 Android 工程一样直接把 maintained 的 XML layout / drawable / style 复制进来编译。
  - 结论：不要再把当前 Java 宿主页描述为“迁移 maintained 设置页”。它只是临时兼容页。
  - 真正使用 maintained 设置页只有两条路：
    1. 重建 original-port 的资源工程，把 `resources.arsc` 解回可维护 `res/`，再迁 maintained 的 `setting_main.xml`、控件、drawable、style 和 Activity。
    2. 以 maintained 为资源/设置页基底，但只迁当前 original-port 已验证的 12 / 20 桌面核心逻辑；这条路此前用户已试过，桌面和编辑动画错位，风险更大。
  - 当前主线建议：继续保留 original-port 桌面主体，但设置页不要再堆 Java 仿 UI；下一步若要像 maintained，必须先解决资源工程化问题。

---

## 历史风险、坐标适配和完整移植路线

## 当前风险

- `ThemeChooserActivity` 原本是主题选择页，现在临时作为设置页宿主。后续如果恢复原主题选择功能，要把主题入口移到设置页子页面中，不要直接覆盖这个宿主。
- 当前构建仍依赖 `launcher/original/AndroidManifest.xml` 的二进制 Manifest 注入，文本 Manifest 修改不会自动生效。
- 底部桌面 / 编辑模式交互已按原始 `com.smartisanos.launcher-3.apk` 恢复。关键修复是把 `launcher/smali/com/smartisanos/launcher/view/x.1.smali` 的 dock / 编辑坐标算法恢复为原版逻辑，避免此前用 `window_width / n` 等分屏宽导致齿轮遮挡 dock 图标、拖拽落点错位。
- 底部按钮组的重点计算点已经确认在 `launcher/smali/com/smartisanos/launcher/view/x.1.smali` 的 `sx()`、`b(V)`、`l(II)` 等方法里，尤其是 `dock_delete_btn_width`、`dock_create_folder_width`、`dock_*_margin_left` 这一组。
- 当前设置页仍是程序化 View，不是最终方向；不要再继续对它做视觉纠偏。除非只是为了验证 launcher key，否则下一步必须迁原生 Settings 页面。
- 启动加载动画不属于 SMEngine 桌面坐标系统。它走 `LoadingUI` / `SmartisanProgressDialog` 的 Android Dialog 布局，不能用 dock 坐标修复方式处理。

## 不要做的事

- 不要继续扩展临时 `LauncherSettingsDialog`。
- 不要把 `NativeLauncherSettingsHost` 当最终页面。它只是临时承载页；不要继续投入视觉细节。最终目标是迁原生 Settings 页面。
- 不要再按截图手写一个“像锤子”的设置页。目标是迁移 `com.android.settings-100.apk` 的原生页面和依赖。
- 不要跳过 README 的“原生设置页依赖表”直接复制 smali。先列依赖，再迁代码。
- 不要把编辑/总览底部齿轮改成设置页入口。这个齿轮属于原版桌面的编辑/选择功能，必须保持原用途。
- 不要只修某一个底部按钮。底部齿轮、排序/切换、主题/颜色、确认等按钮是一组，应按同一套 720P / 1080P / 其他宽度自适应规则处理。
- 不要把底部错位修成某个固定分辨率，例如 720 / 1080 / 1440。
- 不要直接用 `smartisan-launcher-maintained` 替换当前工程。
- 不要随意重新解包覆盖 `launcher/` 目录。当前 `launcher/` 里有大量已修补 smali，如果要重新解包，必须先备份并逐项迁移现有补丁。
- 不要改变原版 12 / 20 宫格图标大小。用户明确要求保留原本比例。

## 坐标适配记录

此前截图中的问题不是单纯图标大小问题，而是桌面主题资源和运行时坐标基准没有完全统一。底部错位只是其中一个表现。表现为：

- 底部齿轮偏左，不在屏幕中心。
- 右侧底部图标露出一部分，被屏幕边缘裁切。
- 进入桌面加载动画也可能偏左，但它后续确认是 Dialog 布局问题，不是 dock / 编辑坐标问题。
- 写死 `dock_width=1080` 后仍不能完整解决，而且无法适配其他分辨率。
- 12/20 桌面页、dock、编辑 / 总览按钮依赖同一套 `window_width/window_height` 和 `LayoutProperty`，所以不能只改某一个 View 的 X/Y。

当前桌面页和编辑模式坐标已经验证正常。关键记录：

- `Constants.setPhysicalScreenSize(Context)`：大屏分支改为标准 `Display.getRealMetrics()`，替代 Smartisan 私有 `DisplaySmtEx.getSmRealMetrics()`。
- `Constants.initDockSize(I)`：运行时用 `Constants.window_width` 覆盖 `dock_width`，并同步把 `dock_margin_left/right` 归零，避免旧固定宽度和新屏幕宽度混算。
- `launcher/smali/com/smartisanos/launcher/view/x.1.smali`：恢复原版 dock / 编辑交互坐标算法，撤掉此前按 `window_width / n` 重算底部图标位置的改法，避免齿轮遮挡 dock 图标和拖拽落点错误。
- 文件夹打开态：缩小 `MODE_9/layout.xml` 中 `folder_bookcase_*`、`icon_size_with_shadow_folder`、folder 文本字号和标题范围；当前虚拟机命中 `layout/portrait/values-sw411dp/MODE_9/layout.xml`，同类 1080 资源目录已同步。

启动加载动画单独修复：

- 参考 maintained 的 `com.smartisanos.launcher.widget.SmartisanProgressDialog` 和 `ProgressDialogStyle`。
- 当前工程的 `smartisanos/app/SmartisanProgressDialog` 原本只是继承系统 `ProgressDialog` 的薄兼容壳，导致 Android 默认布局把 indeterminate 图标放在内容左侧。
- 已将 `launcher/smali/smartisanos/app/SmartisanProgressDialog.smali` 改为自绘 `Dialog`：全屏黑底，中间暗色圆角容器，`ProgressBar` 居中显示 `loading_progress`。
- 验证：`build.bat` 成功，`adb install -r build\launcher-signed.apk` 成功，冷启动未崩溃；loading 截图由于启动过快未稳定抓到动画帧。

### 为什么 1080P 也会错位

这个桌面来自 Smartisan 坚果 Pro 3，assets 中确实有大量 `1080` 宽基准资源，例如：

```text
launcher/assets/layout/portrait/*x1080/MODE_12/layout.xml
launcher/assets/layout/portrait/*x1080/MODE_20/layout.xml
```

但“设备也是 1080 宽”不等于坐标一定正确，原因是原系统环境还隐含了以下条件：

- 原机型的真实屏幕高度、状态栏高度、导航栏高度和桌面可绘制区域高度。
- Smartisan 私有显示 API，例如 `DisplaySmtEx.getSmRealMetrics()`。
- smengine 世界坐标和 Android 屏幕像素之间的转换基准。
- dock / loading / overview 使用的 `LayoutProperty` 可能来自不同 page mode，但最终叠加到同一场景。
- 数据库中的 dock `cellIndex` 可能保留了原机预置应用的位置；普通 Android 上部分原机应用不存在后，会出现“可见图标占着旧空槽”的情况。

所以 1080 宽设备仍可能错位，尤其是现在常见的 `1080x2400`、`1080x2412`、`1080x2520` 和 Pro 3 原始基准不完全一致。

### maintained 为什么更容易自适应

`E:\FANG\smartisan\smartisan-launcher-maintained` 更像普通 Android 应用，它主要依赖：

```text
res/layout
res/values
res/values-h720dp-v13
res/values-sw411dp-v13
res/values-w820dp-v13
match_parent / wrap_content / dp
```

也就是说，maintained 很多设置页和普通 UI 由 Android View 系统按密度、dp、屏幕宽高自动布局；而当前原版桌面核心是 smengine 场景，很多坐标来自 assets XML 和 smali 计算，Android 不会自动帮它重排。

因此本工程的正确做法不是“把 1080 改成 720”或“固定某个按钮坐标”，而是：

```text
运行时读取真实 DisplayMetrics
选出最接近的 assets 基准资源
计算 scaleX / scaleY / offsetY
统一应用到 page / dock / overview / loading animation
清理或重映射旧 dock cellIndex 空槽
```

当前已做的 dock cell 改动只属于第一步：让部分 dock X 坐标开始基于运行时 `Constants.window_width` 计算。它是宽度自适应方向的改动，不是完整自适应完成。完整修复还必须继续处理 `LayoutProperty` 高度基准、dock 容器偏移、加载动画坐标和旧数据库 cellIndex。

已验证的关键点：

- 12/20 资源在 `launcher/assets/layout/portrait/*/MODE_12/layout.xml` 和 `MODE_20/layout.xml`，不是普通 `res/layout`。
- `P.smali` 会从 assets 中选择 layout 目录并解析 `global.xml` / `MODE_x/layout.xml`。
- 资源里有 1080 宽的多套高度基准，例如 `2160x1080`、`2242x1080`、`2340x1080`。
- 当前普通 Android 设备可能是 `1080x2400`，高于原资源基准；如果直接用真实高度覆盖 `window_height`，cell/dock/动画会被拉到新的世界坐标里。
- 大屏分支原本会调用 Smartisan 私有 `DisplaySmtEx.getSmRealMetrics()`，移植版应使用标准 `Display.getRealMetrics()`。

正确方向：

1. 找到编辑/多页总览底部按钮的坐标来源。

   重点搜索：

   ```text
   SettingButton.java
   Ec.smali
   V.Ao()
   x.b(V)
   x.l(...)
   DockViewAnimation
   PageAnimation
   dock_width
   window_width
   PHYSICAL_SCREEN_SIZE
   ```

2. 统一使用运行时屏幕宽度计算底部区域。

   当前应以 `Constants.window_width` / `PHYSICAL_SCREEN_SIZE.x` / 实际 DisplayMetrics 宽度为准，而不是资产 XML 中的固定 `720` 或 `1080`。

   如果把 `dock_width` 覆盖为运行时宽度，同时必须同步修正 `dock_margin_left/right`，否则旧 margin 会参与计算并产生负值。

3. 让底部按钮组整体按比例缩放或重新按屏幕宽度分布。

   例如原始坐标如果基于 720 宽：

   ```java
   scaleX = runtimeWidth / baseWidth;
   fixedX = originalX * scaleX;
   ```

   对成组底部按钮，不要单独把齿轮放到屏幕中心。应保留原有相对布局，例如：

   ```java
   leftButtonX  = originalLeftButtonX  * scaleX
   midButtonX   = originalMidButtonX   * scaleX
   rightButtonX = originalRightButtonX * scaleX
   x = runtimeWidth - originalRightMargin
   ```

4. 加载动画也要查同一类基准宽度和高度。

   如果启动动画和底部总览都偏，优先怀疑共享的 `window_width/window_height`、Camera、SceneNode、DockView 或 overview transform 使用了旧资源基准。

5. 适配目标是所有分辨率。

   至少要在以下宽度上逻辑成立：

   ```text
   720
   1080
   1440
   其他 16:9 / 18:9 / 20:9 手机
   ```

6. 下一步要做的是 12/20 `LayoutProperty` 级别的统一适配。

   不要改原版图标比例；应让主题坐标根据运行时宽度/高度选择或计算基准：

   ```text
   读取真实 DisplayMetrics
   选择最接近的 assets/layout/portrait/<height>x<width> 基准
   对 dock/page/loading 共用的 LayoutProperty 做同一套 scale/offset
   重新生成 pageCellCenterPoints、pageWorldCenterPointsInWindow、dock cell points
   ```

## 完整设置页移植方向

用户需要的是 `smartisan-launcher-maintained` 那种完整设置页，不是临时弹窗。

设置页应包含 maintained 中已有的能力，例如：

- 12 / 20 宫格切换
- 页面翻页动画
- 解锁动画
- 主题相关入口
- 图标显示设置
- 隐藏导航栏等桌面行为设置
- 关于页面等基础设置项

移植原则：

1. 先阅读 maintained 设置页结构。

   重点目录：

   ```text
   E:\FANG\smartisan\smartisan-launcher-maintained\smali\com\smartisanos\home\settings
   E:\FANG\smartisan\smartisan-launcher-maintained\res\layout
   E:\FANG\smartisan\smartisan-launcher-maintained\res\values
   ```

2. 不要照搬 9 / 16 宫格数值。

   本项目应使用：

   ```text
   12宫格: page mode = 0x0c
   20宫格: page mode = 0x09，对应本项目映射后的 20 宫格 cell count 0x14
   ```

   maintained 中常见的：

   ```text
   9宫格:  0x09
   16宫格: 0x10
   ```

   必须替换为 12 / 20 逻辑。

3. 优先做独立完整 Activity，而不是 Dialog。

   目标是完整设置页 Activity，类似 maintained 的 `SettingMainActivity`。临时 Dialog 会和后续设置项、生命周期、主题、跳转逻辑冲突。

   入口方式必须像 maintained：桌面里有一个“设置”图标，点击图标进入设置页。不要借用编辑/总览底部齿轮。

4. Manifest 是关键限制。

   当前构建脚本会把 `launcher/original/AndroidManifest.xml` 的二进制 Manifest 注入到最终 APK。也就是说，仅修改 `launcher/AndroidManifest.xml` 文本文件可能不会生效。

   如果新增设置 Activity，必须解决二进制 Manifest 注册问题。可选路线：

   - 修改构建脚本，不再覆盖为旧二进制 Manifest，并验证重编译 Manifest 后 APK 可安装。
   - 使用已有 Manifest 中已经声明的 Activity 作为设置页承载入口。
   - 直接修改二进制 Manifest，风险较高，不推荐作为第一选择。

5. 资源体系是第二个限制。

   当前 `launcher/` 是 raw resource 形态：

   ```text
   launcher/resources.arsc
   launcher/unknown/res/*
   launcher/res 不存在
   ```

   不能简单复制 maintained 的 `res/layout` 就期待生效。完整设置页需要解决资源解包/合并/ID 对齐问题。

   在动资源前，应先确认：

   ```bat
   java -jar tools\apktool.jar b launcher
   ```

   是否能在非 raw 资源模式下重建，并且最终 APK 安装启动不回退。

## 推荐实施路线

### 阶段 1：先回收临时方案

- [x] 移除 `LauncherSettingsDialog*.smali`。
- [x] 移除 `wc.smali` 中调用临时 Dialog 的逻辑。
- [x] 保留当前能构建/启动的其他兼容性补丁。
- [x] 回退 `wc.smali` 中把底部齿轮改为设置页入口的错误尝试。
- [x] 增加桌面“设置”图标入口，点击进入 `ThemeChooserActivity` 设置页宿主。

验收：

```text
APK 可构建、可安装、可启动。
不再出现临时弹窗设置入口。
日志中可看到 `title = [设置] packageName = [com.smartisanos.launcher] componentName = [com.smartisanos.launcher.theme.ThemeChooserActivity]`。
```

### 阶段 2：修底部自适应

- [x] 不再依赖写死 `dock_width=1080` 作为主要方案。
- [x] `Constants.initDockSize(I)` 已把 `dock_width` 运行时覆盖为 `Constants.window_width`。
- [x] `Constants.initDockSize(I)` 已把 `dock_margin_left/right` 同步归零，避免负 margin。
- [x] `Constants.setPhysicalScreenSize(Context)` 大屏分支已改为标准 `Display.getRealMetrics()`。
- [x] 回退单独居中底部齿轮的错误尝试。
- [x] `view/x.1.smali` 已按原始 APK 恢复 `ra()` / `rx()` / `sx()` 的 dock 与编辑模式坐标算法，桌面和编辑模式底部交互已验证正常。
- [ ] 统一 12/20 的 `LayoutProperty` 适配：宽度缩放、高度基准、dock/page/loading 动画共用坐标。
- [ ] 验证 720P、1080P、1440P，以及 18:9 / 20:9 高屏比例。
- [ ] 同步检查启动动画偏移是否共用同一套宽度/Camera/SceneNode 逻辑。

验收：

```text
1080 宽设备：桌面和编辑模式底部图标不遮挡，dock 图标拖入拖出后位置正确。
720 / 1440 或其他宽度：位置按比例正确。
启动动画居中。
```

### 阶段 3：验证完整设置页移植可行性

先不要大规模复制 maintained 文件。先做最小闭环：

1. [x] 选定设置页承载 Activity：复用已注册的 `ThemeChooserActivity`。
2. [x] 规避新增 Manifest 注册：沿用二进制 Manifest 中已有声明。
3. [x] 先用程序化布局完成最简单设置页。
4. [ ] 能通过桌面里的“设置”图标进入设置 Activity。
5. [ ] 继续移植 maintained 风格标题栏、列表样式和子页面。

验收：

```text
点击设置入口进入完整 Activity。
Activity 有 maintained 风格标题栏和列表容器。
返回桌面不崩溃。
```

### 阶段 4：移植 maintained 设置项

按模块迁移，不要一次性全搬：

1. 宫格切换：9/16 改为 12/20。
2. 动画设置。
3. 主题入口。
4. 图标设置。
5. 导航栏/状态栏相关设置。
6. 关于页。

每移植一组都要构建安装测试。

### 阶段 5：清理和文档更新

- 删除临时类和废弃入口。
- 更新 README 的“当前状态”。
- 记录每个设置项对应的 key、写入位置、读取位置。

## 已知关键文件

当前工程关键文件：

```text
launcher/smali/com/smartisanos/launcher/data/Constants.smali
launcher/smali/com/smartisanos/launcher/data/N.smali
launcher/smali/com/smartisanos/launcher/data/O.smali
launcher/smali/com/smartisanos/launcher/view/Ec.smali
launcher/smali/com/smartisanos/launcher/view/wc.smali
launcher/smali/com/smartisanos/launcher/ua.1.smali
launcher/smali/com/smartisanos/launcher/e/s.smali
build.bat
```

临时设置入口文件，后续应移除：

```text
launcher/smali/com/smartisanos/launcher/settings/LauncherSettingsDialog.smali
launcher/smali/com/smartisanos/launcher/settings/LauncherSettingsDialog$1.smali
```

以上两个文件目前已经删除。如果后续又出现，说明有人重新引入了临时方案，应优先回滚这部分。

布局资产中与底部相关的文件：

```text
launcher/assets/layout/portrait/values-xhdpi/MODE_12/layout.xml
launcher/assets/layout/portrait/values-xhdpi/MODE_20/layout.xml
launcher/assets/layout/portrait/values-xhdpi/MODE_48/layout.xml
launcher/assets/layout/portrait/values-xhdpi/MODE_80/layout.xml
```

## 构建验证

标准流程：

```bat
build.bat
adb install -r build\launcher-signed.apk
adb logcat -c
adb shell am start -n com.smartisanos.launcher/.Launcher
adb logcat -d -t 400
```

重点检查：

```text
FATAL EXCEPTION
AndroidRuntime
VerifyError
ClassNotFoundException
Resources$NotFoundException
SecurityException
```

`SecurityException` 不一定都是致命问题，之前普通 Android 系统上会出现部分 Provider/私有权限警告。是否致命以桌面是否闪退、进程是否存活为准。

## 当前结论

当前可运行成果要保留。临时设置弹窗已移除，设置页宿主已能启动，但入口方式必须改为桌面“设置”图标，不能复用编辑/总览底部齿轮。桌面和编辑模式底部交互已通过恢复原版 `x.1.smali` 坐标算法修正，后续适配必须在这套原版逻辑上扩展，不能再单独移动齿轮或把 dock 图标改成简单等分屏宽。

后续正确方向：

1. 回退底部齿轮打开设置页和单独居中齿轮的错误尝试。
2. 增加桌面“设置”图标入口，点击进入设置页宿主。
3. 按底部按钮组整体修复 720P / 1080P / 其他分辨率自适应。
4. 以 maintained 为参考，把设置页从当前宿主扩展为完整设置页。
5. 把 maintained 的 9 / 16 宫格设置逻辑替换为原版桌面的 12 / 20 宫格逻辑。
6. 逐项接入动画、主题、图标、导航栏等设置。

---

## 历史每日修复与功能记录（原文保留，非严格倒序）

### 2026-05-27 追加：主入口缩略图清晰度、宫格预览资源还原、开关动画继续对齐

用户反馈：

- 桌面设置主入口前三个图标不清楚，maintained 原版更清晰；
- 12 / 20 宫格预览希望恢复成可手工 PS 的图片资源；
- 开关左右滑动仍不像 maintained，移动不够自然。

本轮修正：

- 主设置页“桌面主题”不再把 `thumbnail_settings.png / thumbnail_settings_16.png` 二次合成到 72dp 位图里，改为直接使用 maintained 原始资源，避免重复缩放导致发糊。
- 主设置页“桌面翻页动画”不再走二次合成，直接使用 `page_flip_animation_default_upper.png`。
- 主设置页“桌面壁纸”改为生成 256x233 的高分辨率纹理缩略图，再交给 ImageView 缩放，避免之前 96x96 纹理被放大或重采样后不清楚。
- 12 / 20 宫格预览撤掉运行时动态绘制，恢复为 maintained 设置资源中的 PNG：
  - `launcher/tools/maintained_settings_res/res/drawable-xxhdpi-v4/grids_9_preview_normal.png`
  - `launcher/tools/maintained_settings_res/res/drawable-xxhdpi-v4/grids_16_preview_normal.png`
- `PreviewSettingItemView` 新增 `setPreviewResource(...)`，让宫格预览可以直接绑定图片资源。
- `SwitchEx` 的点击逻辑避免再走 `CompoundButton.performClick()` 的二次 toggle 风险，开关只由自身切换一次状态。
- `SwitchEx` 的滑动动画改为 260ms + `PathInterpolator(0.2, 0, 0.2, 1)`，比之前更接近 maintained 的缓入缓出手感。

验证结果：

- `build.bat` 成功，输出 `build/launcher-signed.apk`。
- `adb install -r build/launcher-signed.apk` 成功。
- `adb shell am start -n com.smartisanos.launcher/.theme.ThemeChooserActivity` 成功。
- 截图确认主入口“桌面主题 / 桌面壁纸 / 桌面翻页动画”缩略图已明显更清晰，12 / 20 宫格预览已恢复为资源图片。
- 最近 logcat 未出现 `FATAL EXCEPTION` / `AndroidRuntime` / `VerifyError` / `NoSuchMethodError`。

## 2026-05-16：maintained 设置页真实迁移记录

本次开始停用 `NativeLauncherSettingsHost` 作为桌面设置入口。它是 Java 程序化临时页，不是 maintained 页面，后续不要继续美化或扩展它。

新的入口链路：

```text
桌面“桌面设置”图标
-> com.smartisanos.launcher.theme.ThemeChooserActivity
-> com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost.show(Activity)
-> 加载 assets/settings_maintained/maintained-settings-res.apk
-> inflate maintained 的 res/layout/setting_main.xml
```

本次改动文件：

```text
build.bat
launcher/smali/com/smartisanos/launcher/theme/ThemeChooserActivity.smali
launcher/tools/maintained_settings_res/AndroidManifest.xml
launcher/tools/maintained_settings_res/res/**
launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java
launcher/tools/java/com/smartisanos/home/settings/PreviewSettingItemView.java
launcher/tools/java/com/smartisanos/home/settings/SettingItemSwitch.java
launcher/tools/java/com/smartisanos/home/settings/SettingItemTextVertical.java
launcher/tools/java/com/smartisanos/home/widget/sys/Title.java
launcher/tools/java/com/smartisanos/home/widget/sys/TipsView.java
```

实现方式：

- `launcher/tools/maintained_settings_res/res` 直接来自 `smartisan-launcher-maintained` 的资源目录。
- `build.bat` 会先用 `aapt2` 把 maintained 资源编译为 `launcher/assets/settings_maintained/maintained-settings-res.apk`，再构建当前桌面。
- `MaintainedLauncherSettingsHost` 运行时把这个资源 APK 复制到 cache，通过 `AssetManager.addAssetPath()` 加载，然后用外部 `Resources` inflate `setting_main.xml`。
- maintained XML 中的自定义 View 需要在当前包里提供同名兼容类，否则 inflate 会失败；目前已补 `Title`、`TipsView`、`PreviewSettingItemView`、`SettingItemSwitch`、`SettingItemTextVertical`。
- 宫格项仍使用 maintained 的 `smartisan_launcher_9_grids` / `smartisan_launcher_16_grids` id，但显示文字和逻辑改为“十二宫格 / 二十宫格”。
- 12 / 20 宫格确认后写入 `Settings.Global["launcher_mode"]`，并调用 `com.smartisanos.launcher.data.N.d(Context, int)` 同步当前桌面的 `prefs_key_launcher_mode`，最后重启桌面生效。
- 如果 maintained XML 加载失败，不再回退到旧的 `NativeLauncherSettingsHost`，而是显示错误页；这样可以避免误以为已经加载 maintained 页面。

已验证：

```text
cmd /c build.bat                         成功
adb install -r build\launcher-signed.apk 成功
adb shell am start -n com.smartisanos.launcher/.theme.ThemeChooserActivity 成功
```

运行截图：

```text
build/maintained-settings-screen.png
build/maintained-grid-dialog.png
```

当前 APK 大小约 107.3 MiB。比只用 maintained 独立桌面大，主要原因是当前项目仍保留原提取桌面的完整资源、so 和历史素材；本次只额外加入 maintained 设置资源包，约 6.6 MiB，没有再把 `com.android.settings-100.apk` 整包塞进 assets。

补充修正：

- `PreviewSettingItemView` 已改为 maintained 结构：宫格预览图使用 maintained 的灰色 `grids_9_preview_normal` / `grids_16_preview_normal` 资源，选中态使用 maintained 的 `preview_picture_selected` 叠在预览图右上角；只把文字和逻辑映射为 12 / 20。
- 设置页标题恢复为 maintained 的“锤子桌面”，不再强制显示自绘返回箭头。
- 设置页窗口状态栏改成浅色，接近 maintained 页面截图。
- 二进制 Manifest 字符串池已把 `ThemeChooserActivity` 的 taskAffinity 改为 `smartisanos.task.launcher`，与主桌面 `Launcher` 保持一致，避免设置页使用单独的 `smartisanos.launcher` 任务。备份：`launcher/original/AndroidManifest.xml.before-maintained-taskaffinity.bak`。
- 注意：当前二进制 Manifest 仍未真正新增 `excludeFromRecents` 属性；如果实机从桌面图标进入设置后最近任务里仍出现两个“锤子桌面”，下一步要做 AXML 属性级补丁，而不是只改文本 `launcher/AndroidManifest.xml`。

下一步：

1. 如果还要更像 maintained，需要继续迁真实 maintained 自定义 View 的 smali/Java 行为，而不是再用程序化绘制。
2. 接入 maintained 的二级页面：主题、壁纸、图标、翻页动画。
3. 把 unsupported 的 maintained 项逐项决定：隐藏、Toast 提示，或接入当前桌面的真实 key。
4. 清理旧的 `SmartisanNativeSettingsHost` / `NativeLauncherSettingsHost` 文档痕迹，避免后续误走旧路线。

### 2026-05-16 补充：maintained 二级页面入口

本次继续沿用 maintained 资源，不再新增“自己画”的设置页。主设置页里的以下入口已经改为真实二级页面：

```text
桌面主题      -> inflate maintained 的 theme_preview_gridview.xml
桌面壁纸      -> inflate maintained 的 app_icon_settings_layout.xml 作为壁纸操作页外壳
桌面翻页动画  -> inflate maintained 的 page_flip_anim_chooser_layout.xml + page_scroll_anim_list_item.xml
应用图标      -> inflate maintained 的 app_icon_settings_layout.xml + app_icon_settings_item_layout.xml
```

本次主要改动文件：

```text
launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java
README.md
```

验证结果：

```text
cmd /c build.bat                         成功
adb install -r build\launcher-signed.apk 成功
adb shell am start -n com.smartisanos.launcher/.theme.ThemeChooserActivity 成功
```

已保存验证截图：

```text
build/settings-main-secondary-entry.png
build/settings-theme-page.png
build/settings-pageflip-page.png
build/settings-icon-page.png
```

当前边界：

- 主题页已经使用 maintained 的主题预览页面结构和 `theme_preview_block.xml`，但完整的主题包下载、应用、颜色点、详情页逻辑还没有迁移；目前只接本地“材质主题 / 透明主题”的预览壳。
- 应用图标页已经使用 maintained 的图标设置列表 item，列表数据先用当前系统可启动应用填充；完整的“官方图标 / 改进图标包 / 作者信息 / 替换写入”逻辑还需要继续迁 maintained 的 adapter 与图标映射表。
- 翻页动画页已经接入选择列表，并写入 `Settings.Global["launcher_page_animation"]`；当前值映射为 maintained 常见的 4 项：默认动画、立体翻转、百叶窗、切牌。
- 壁纸页现在只提供 maintained 风格外壳和“选择图片 / 恢复默认壁纸”入口；真正把图片写入当前桌面背景资源的逻辑还未接入。

后续继续迁移时不要回到 `NativeLauncherSettingsHost`，也不要再用新的程序化页面替代 maintained XML。正确路线是：优先找 maintained 的 layout / drawable / adapter / smali 行为，缺少 Android 系统私有类时才补最薄的兼容类。

### 2026-05-16 补充：开关控件改为 maintained 资源

用户指出主设置页里的滑块不像 maintained。已修正：

```text
launcher/tools/java/smartisanos/widget/SwitchEx.java
launcher/tools/java/com/smartisanos/home/settings/SettingItemSwitch.java
```

实现方式：

- `SwitchEx` 不再继承 Android 默认 `Switch`，也不再手绘圆角轨道。
- `SwitchEx` 直接使用 maintained 的原始资源绘制：

```text
switch_ex_bottom.png
switch_ex_frame.png
switch_ex_mask.png
switch_ex_unpressed.png
```

- `SettingItemSwitch` 优先 inflate maintained 的 `res/layout/setting_item_switch_layout.xml`，拿到其中的 `smartisanos.widget.SwitchEx`、`item_title`、`item_summary`。
- 只有 maintained layout 加载失败时，才走极简 fallback。
- 开关本身不抢点击，仍由整行设置项处理点击和保存，避免点滑块时只改变 UI 不写入设置 key。

验证：

```text
cmd /c build.bat                         成功
adb install -r build\launcher-signed.apk 成功
```

截图：

```text
build/settings-switch-maintained-layout.png
```

### 2026-05-16 补充：全分辨率自适应路线

用户反馈：当前 APK 装到 720p 分辨率手机后，图标偏大、编辑页错位；maintained 桌面不会错位，而且 APK 更小。

结论：

- 当前 `original-port` 的桌面主体仍是原生锤子提取版的布局系统。
- 它不是 Android View/dp 自适应布局，而是从 `launcher/assets/layout/portrait/<机型或资源目录>/MODE_x/layout.xml` 解析大量固定坐标，写入 `LayoutProperty` 后直接交给 smengine 渲染。
- 现在主要覆盖的是 1080 宽设备：`2160x1080_400dpi`、`2160x1080_480dpi`、`2242x1080`、`2340x1080`、`values-sw411dp`、`values-xhdpi`、`values-xxhdpi`。
- 720p / 小宽度设备如果命中不合适的 layout 目录，就会出现图标太大、dock / 编辑页 / loading / folder 坐标比例不一致。
- maintained 之所以小且不偏，是因为它更多使用 Android 资源分桶和运行时尺寸计算；它没有这个原生提取版的大量机型贴图、固定坐标和 smengine 场景资源。

不要继续做的方案：

- 不要只复制一个 `720x1280` 目录来救某台机器。这样只能修一个分辨率，720x1600、1080x2400、不同 dpi 还会继续偏。
- 不要只改桌面图标大小。编辑页、dock、文件夹、loading 动画、拖拽命中区域都依赖同一套 `LayoutProperty`，单点改动会继续制造新的错位。
- 不要把 maintained 整个桌面反向移植 12/20 和文件夹作为第一选择；之前已经验证过移植后桌面、编辑页、交互动画会错位，成本比修当前布局核心更高。

正确路线：

1. 保留当前 `original-port` 作为主体，因为它已经有可用的 12/20 宫格、文件夹、dock 编辑交互。
2. 设置页继续迁 maintained 的页面、资源和控件，不影响桌面主体布局。
3. 桌面主体新增一层“运行时布局适配器”：

```text
读取当前屏幕 width / height / density
选择最接近的 1080 基准 layout 目录
解析 MODE_12 / MODE_20 / MODE_9 的 LayoutProperty
按实际屏幕做统一 scale：
  scaleX = 当前宽度 / 基准宽度
  scaleY = 当前可用高度 / 基准高度
  icon / cell / text / shadow 使用 min(scaleX, scaleY) 或按字段分类缩放
  page / dock / folder 的位置字段使用同一套 yOffset / heightScale
最后再 initAfterLoadRes
```

优先修改入口：

```text
launcher/smali/com/smartisanos/launcher/data/P.smali
  LayoutPropertyParser，负责从 assets/layout/**/layout.xml 解析 LayoutProperty

launcher/smali/com/smartisanos/launcher/data/Constants.smali
  保存 mode -> LayoutProperty，所有桌面/编辑/文件夹/动画都会通过 Constants.mode(mode) 取值

launcher/smali/com/smartisanos/launcher/view/x*.smali
launcher/smali/com/smartisanos/launcher/view/Fb.smali
launcher/smali/com/smartisanos/launcher/view/b/N.smali
  dock、编辑页、folder 场景会二次使用 LayoutProperty，需要验证是否还有硬编码 window_width/window_height 的偏移
```

第一阶段目标：

- 不新增 720p 专用目录，先让 720p 能通过同一套 1080 基准缩放正常显示。
- 只处理 `MODE_12` 和 `MODE_20` 的桌面、dock、编辑页、loading、folder 打开态。
- 每次只验证一组分辨率：

```text
1080x1920 / 480dpi 当前基准设备
720x1280 / 320dpi  720p 目标设备
720x1600 / 320dpi  常见 20:9 目标设备
```

验收标准：

- 桌面图标大小合理，不超出宫格。
- dock 正常居中，编辑模式切换时图标和齿轮不遮挡。
- loading 动画居中。
- 文件夹打开后书架居中，文件夹内每一行图标居中。
- 12/20 宫格切换后重启桌面生效。

当前已做但还未完整收口：

- `MaintainedLauncherSettingsHost` 已递归关闭宿主页系统默认滚动条，避免露出 Android 默认粗滚动条。
- 桌面设置图标点击问题已定位：桌面图标发出的 Intent 带 `MAIN + LAUNCHER + 0x10200000`，系统会把当前 launcher 任务拉回前台，导致 `ThemeChooserActivity` 没真正显示。后续应在 launcher 点击路径里对 `ThemeChooserActivity` 特判，移除 task reset flag 或改为普通显式启动。

### 2026-05-16 补充：运行时 LayoutProperty 适配器

已开始实现“全分辨率自适应”的第一阶段，不再继续为 720p 单独改 XML 坐标。

新增文件：

```text
launcher/tools/java/com/smartisanos/launcher/data/LayoutPropertyAdapter.java
```

接入点：

```text
launcher/smali/com/smartisanos/launcher/data/P.smali
```

实现方式：

- `P.smali` 在 `LayoutProperty` 从 `layout.xml` 读完之后、调用 `initAfterLoadRes()` 之前，调用 `LayoutPropertyAdapter.adapt(property, suffix)`。
- `LayoutPropertyAdapter` 使用运行时反射读取：

```text
Constants.window_width
Constants.window_height
LayoutProperty public fields
```

- 当前以已经验证正常的 `1080x1920` 为基准：

```text
scaleX = window_width / 1080
scaleY = window_height / 1920
scale  = min(scaleX, scaleY)
```

- 字段按名字分类缩放：

```text
横向位置/宽度：margin_left、margin_right、offset_x、width、_w 等使用 scaleX
纵向位置/高度：margin_top、margin_bottom、offset_y、height、_h 等使用 scaleY
图标/文字/圆角：icon_size、font、radius 等使用 scale
计数/比例：page_cell_row_num、page_cell_col_num、dock_app_count、scale、factor、modulus 不缩放
```

- `_folder` 文件夹模式单独处理：文件夹书架和图标网格不是同一套坐标来源，720p 下不能简单把全部 folder page margin 等比例压缩，所以当前对文件夹纵向位置加了一个轻量补偿，后续还需要继续做“每一行图标按当前行数量居中”的逻辑。

已验证：

```text
cmd /c build.bat                         成功
adb install -r build\launcher-signed.apk 成功
adb shell wm size 720x1280
adb shell wm density 320
```

720p 当前效果：

```text
build/launcher-720-adapted.png  桌面首屏：图标/dock/宫格已按 720 宽度收缩
build/launcher-720-edit.png     编辑页：四宫格和底部 dock/齿轮不再按 1080 宽度遮挡
build/launcher-720-folder-3.png 文件夹：书架尺寸已收缩，但行内图标居中还未完成
```

### 2026-05-16 补充：对齐 maintained 的图标比例，关闭旧二次缩放

用户指出 720p 下桌面图标大小和进入编辑页后 dock / 齿轮图标大小不协调。

原因：

- 之前已有一段其他 AI 注入的旧缩放逻辑：

```text
launcher/smali/com/smartisanos/launcher/data/LayoutProperty.smali
  # --- Injected Global Scaling Logic (Dock Buttons & Layout Fix) ---
```

- 这段逻辑在 `LayoutProperty.initAfterLoadRes()` 里再次乘 `Constants.SCALE_X / SCALE_Y`。
- 新增的 `LayoutPropertyAdapter` 已经在 `initAfterLoadRes()` 之前统一缩放过桌面、dock、folder 字段，所以旧逻辑会导致 dock、setting_button、folder 等字段二次缩放，出现桌面态和编辑态图标比例不一致。

本次处理：

```text
launcher/smali/com/smartisanos/launcher/data/Constants.smali
  SCALE_X / SCALE_Y 固定为 1.0
  旧 Global Scaling Logic 不再产生二次缩放

launcher/tools/java/com/smartisanos/launcher/data/LayoutPropertyAdapter.java
  对齐 maintained 的 xhdpi 图标节奏
```

maintained 参考值：

```text
E:\FANG\smartisan\smartisan-launcher-maintained\res\values-xhdpi-v4\integers.xml

9 宫格：
  icon_size_origin_9 = 128
  icon_size_with_shadow_9 = 164
  setting_button_9 = 90

16 宫格：
  icon_size_origin_16 = 92
  icon_size_with_shadow_16 = 118
  setting_button_16 = 70
```

当前映射：

```text
12 宫格 / 3 列：按 maintained 9 宫格大图标节奏
20 宫格 / 4 列：按 maintained 16 宫格密集图标节奏
```

验证截图：

```text
build/launcher-720-no-double-home.png
build/launcher-720-no-double-edit.png
```

后续继续顺序：

1. 文件夹打开态：在 `FolderPageView` / `CellOnFolderPage` 的坐标计算处做“按当前行图标数量居中”，不要只靠全局 margin。
2. 720x1600 / 320dpi 再验证一次，避免只修 16:9。
3. 恢复并验证 1080x1920 / 480dpi，确保当前基准设备没有回退。
4. 再看 loading 动画是否仍需要单独按 `window_width/window_height` 居中。

### 2026-05-16 补充：720p 图标文字节奏与文件夹行内居中

用户反馈：

```text
1. 720p 下主桌面图标和文字不在同一个宫格里，文字压在横向格线附近。
2. 文件夹打开态里图标没有按所在行居中，尤其 2 个图标时明显偏左，并且图标/文字基准会压到书架分隔线。
```

本次改动：

```text
launcher/tools/java/com/smartisanos/launcher/data/LayoutPropertyAdapter.java
launcher/tools/java/com/smartisanos/launcher/data/FolderCellPositionAdapter.java
launcher/smali/com/smartisanos/launcher/view/b/M.smali
```

处理方式：

- `LayoutPropertyAdapter` 继续作为全分辨率运行时适配层，不新增 720p 固定 XML。
- 普通桌面模式不再只缩放图标大小，也会按 maintained 的 720p 节奏同步修正：

```text
12 宫格 / 3 列：
  text_font_size = 27 * (screenWidth / 720)
  name_off_set_y = -55 * (screenWidth / 720)
  max_app_name_length = 206 * (screenWidth / 720)

20 宫格 / 4 列：
  text_font_size = 24 * (screenWidth / 720)
  name_off_set_y = -44 * (screenWidth / 720)
  max_app_name_length = 146 * (screenWidth / 720)
```

- `_folder` 模式不再使用之前的粗暴 `page_view_margin_top += screenHeight * 0.045`。
- `_folder` 的 `page_view_margin_top/page_view_margin_bottom` 恢复按屏幕高度缩放，让文件夹书架内部可用高度跟分辨率一致。
- `_folder` 图标和文字使用更小的文件夹内节奏，避免压到书架分隔线：

```text
icon_size_origin = 96 * (screenWidth / 720)
icon_size_with_shadow = 122 * (screenWidth / 720)
text_font_size = 18 * (screenWidth / 720)
name_off_set_y = -38 * (screenWidth / 720)
```

- 新增 `FolderCellPositionAdapter.adjustX(page, row, column, x)`。
- 在 `M.smali` 两处 cell `setTranslate()` 前调用该 helper：

```text
M.a(int row, int column, RenderTarget, String)
M.fn()
```

- helper 只在 `com.smartisanos.launcher.view.b.a`（FolderPage）生效。它读取当前 page 的 `AI` 列表和 `Nn.page_cell_col_num/cell_width`，计算当前行真实图标数量：

```text
rowStart = row * columns
rowItemCount = min(columns, items.size - rowStart)
if rowItemCount < columns:
    x += (columns - rowItemCount) * cell_width / 2
```

这样最后一行只有 1 个或 2 个图标时，会自动向中间偏移；普通桌面、编辑页、dock 不受影响。

验证：

```text
cmd /c build.bat 成功
输出 build/launcher-signed.apk
```

当前限制：

- 本次构建已通过，但当前 `adb devices -l` 没有在线设备，尚未完成 720p / 1080p 实机截图复测。
- 下一次有设备后必须先执行：

```text
adb shell wm size 720x1280
adb shell wm density 320
adb install -r build\launcher-signed.apk
adb shell am force-stop com.smartisanos.launcher
adb shell am start -n com.smartisanos.launcher/.Launcher
```

- 复测重点：

```text
1. 720p 主桌面：图标和文字是否都回到同一个格子内部。
2. 720p 文件夹：2 个图标是否在第一行居中，且不压书架分隔线。
3. 1080p 基准设备：原本正常的桌面和编辑模式不能回退。
```

### 2026-05-16 结论：停止在 original-port 上用偏移量修自适应

最新 720p 截图已经证明，当前 `smartisan-launcher-original-port` 的问题不是单个图标大小、文字偏移或文件夹 X 坐标能彻底解决的，而是结构性问题：

```text
1. original-port 来自原生锤子桌面提取版，核心布局仍依赖固定设备坐标、固定资源和 smengine 场景数据。
2. `LayoutPropertyAdapter` 可以临时缩小图标，但不能把桌面、编辑页、dock、文件夹、加载动画、拖拽动画全部统一成真正的响应式坐标系统。
3. 不同分辨率下继续补 offset 会造成 1080p 正常、720p 错位，或者主桌面正常、编辑页/文件夹错位的循环。
```

因此，`LayoutPropertyAdapter` / `FolderCellPositionAdapter` 这条路线记录为失败实验，只保留为排查资料，不再作为最终产品方向继续扩大。

#### maintained 为什么能自适应

`smartisan-launcher-maintained` 不是简单把原生坐标按比例缩放，它已经把桌面改成 Android 通用桌面的做法：

```text
1. 使用不同 density / 分辨率资源桶：
   res/values-xhdpi-v4/integers.xml
   res/values-xxhdpi-v4/integers.xml
   res/values-xxxhdpi-v4/integers.xml

2. 在运行时根据当前 window_width / window_height / status_bar_height / dock_height
   重新计算 page、cell、icon、文字和编辑页中心点。

3. 关键逻辑在 maintained：
   smali/com/smartisanos/launcher/data/Constants.smali
   pageCellAdjustScaleForSpacing(FF)

4. 桌面、编辑页和动画都读取同一套计算后的 cell center points，
   所以 720p、1080p、不同 dpi 不会各走各的偏移量。
```

#### maintained 为什么能自动替换锤子图标

maintained 的图标替换不是设置页外观问题，而是接进了图标加载链路：

```text
smali/com/smartisanos/home/settings/icons/IconPackManager.smali
smali/com/smartisanos/home/settings/icons/IconLoader.smali
smali/com/smartisanos/home/settings/icons/IconManager.smali
smali/com/smartisanos/home/settings/icons/RedirectIconDB.smali
smali/com/smartisanos/home/settings/icons/DatabaseHandler.smali
smali/com/smartisanos/home/settings/icons/Utils.smali
```

它会读取选中的 icon pack，解析 `res/xml/appfilter.xml`，把应用包名 / component 映射到锤子图标资源；桌面加载应用图标时直接走这套 `IconPackManager.getPackedIcon(...)` / `IconLoader` 逻辑，所以系统默认图标会被替换。

#### maintained 为什么 APK 小

maintained 小，是因为它没有把原生提取桌面的整套冗余资源、Settings 资源、旧 native 库、固定布局 XML 和临时反编译产物都塞进最终 APK。它保留的是：

```text
1. 通用 launcher 代码。
2. 必要的锤子视觉资源。
3. density resource bucket。
4. icon pack / redirect icon 数据链路。
```

original-port 如果继续把原生资源、设置资源、临时 native settings、scratch 资源都合进去，体积会天然比 maintained 大很多，而且仍然不一定自适应。

#### 新主线：以 maintained 为底座迁移 12/20 宫格和文件夹

最终目标改为：

```text
用 smartisan-launcher-maintained 做主工程。
保留它已有的：
- 自适应布局
- 小体积资源组织
- 桌面设置页
- 锤子图标替换链路

从 original-port 只迁移必要能力：
- 12 宫格
- 20 宫格
- 文件夹视觉和交互中确实缺失的部分
```

注意：迁移 12/20 宫格时，不能再复制 original-port 的固定坐标 XML。正确方式是把 12/20 当成 maintained 的一等布局模式接入：

```text
1. 在 maintained 中新增 MODE_12 / MODE_20 常量和设置项。
2. 给 xhdpi / xxhdpi / xxxhdpi 等资源桶补齐 12/20 的 cell_width、cell_height、dock_height、icon_size、text_font_size、name_offset。
3. 修改 maintained 的 Constants.pageCellAdjustScaleForSpacing(FF)，让 12/20 也走同一套运行时中心点计算。
4. 修改 maintained 设置页，把原来的 9/16 入口替换或扩展为 12/20。
5. 文件夹优先复用 maintained 现有 FolderInfo / FolderCell / FolderPageView 数据结构，只迁移锤子书架视觉和必要动画。
6. 保留 maintained 的 IconPackManager / IconLoader / RedirectIconDB，不再在 original-port 里重造图标替换。
```

验证顺序：

```text
1. 720x1280 / 320dpi：主桌面、编辑页、dock、文件夹。
2. 1080x1920 / 480dpi：确认 12/20 基准显示正确。
3. 720x1600 / 320dpi：确认非 16:9 设备不再错位。
4. 图标替换：相机、设置、图库、文件、浏览器等默认应用必须自动替换成锤子风格图标。
5. APK 体积：以 maintained 的 41MB 级别为参考，只允许因 12/20 和文件夹必要资源小幅增长。
```

### 2026-05-18 original-port 回退修复记录

当前又回到 `smartisan-launcher-original-port` 修复。最新结论：

```text
1. 1080P 截图证明不是只有 720P 太大，1080P 基准资源本身也偏大。
2. 已先下调 MODE_12 / MODE_20 的 icon_size、text_font_size、name_off_set_y、dock_height、setting_button。
3. 20 宫格设置已经能写入 SharedPreferences：com.smartisanos.launcher_prefs / prefs_key_launcher_mode=20。
4. 但原桌面对 20 宫格的内部映射有两套概念：
   - 用户设置值：20
   - Smartisan 原 pageMode：9 / PAGE_1_4X5_MODE
   这里不能简单把 pageMode 改成 20，否则会走到多板块/普通桌面显示路径。
5. 下一步不要继续盲目改设置页，应该先理清 Constants.getPageModeFromMode、getPAGE_1_4X5_MODE、
   isPAGE_1_4X5_MODE、checkSinglePageMode 和资源 MODE_9 / MODE_20 的对应关系。
6. 文件夹问题仍未完成：1080P 下文件夹里第一行图标虽然横向大致居中，但整体 Y 位置靠上；
   720P 下文件夹错位更明显，需要单独修 folder bookcase / folder page 的运行时比例。
```

临时验证命令：

```text
cmd /c build.bat
C:\Users\ck\AppData\Local\Android\Sdk\platform-tools\adb.exe install -r build\launcher-signed.apk
C:\Users\ck\AppData\Local\Android\Sdk\platform-tools\adb.exe shell wm size 1080x1920
C:\Users\ck\AppData\Local\Android\Sdk\platform-tools\adb.exe shell wm density 480
C:\Users\ck\AppData\Local\Android\Sdk\platform-tools\adb.exe shell am force-stop com.smartisanos.launcher
C:\Users\ck\AppData\Local\Android\Sdk\platform-tools\adb.exe shell am start -n com.smartisanos.launcher/.Launcher
```

### 2026-05-18 original-port 当前修复进展

本轮继续以 `smartisan-launcher-original-port` 为主工程，不再切到 maintained。

已确认并修复的核心点：

```text
1. 12 / 20 宫格切换的正确数据链路：
   - Settings.Global["launcher_mode"] 必须保存用户模式值：12 或 20。
   - com.smartisanos.launcher_prefs / prefs_key_launcher_mode 同样保存：12 或 20。
   - 调用 N.d(Context, pageMode) 时才传内部 pageMode：12 宫格传 12，20 宫格传 9。
   - 不能把 Settings.Global["launcher_mode"] 写成 9，否则启动时会被 getPageModeFromMode(9) 当成 9 宫格处理。
2. MODE_9 不能改成 4x5。
   - 原版代码里 MODE_9 还会被 folder / 中间态路径使用。
   - 真正 20 宫格资源由 cellCount(9)=20 触发加载 MODE_20。
   - 把 MODE_9 改成 20 会导致启动崩溃：cell points size is not same : 9 , 20。
3. 1080P / 720P 图标自适应：
   - 已下调 MODE_12 / MODE_20 在 1080 桶与 xhdpi 桶里的 icon_size、text_font_size、name_off_set_y、dock_height、setting_button。
   - 已验证 720x1280 / 320dpi 下 12 宫格、20 宫格都能正常缩放显示。
4. 文件夹居中补丁：
   - FolderCellPositionAdapter 只能作用在文件夹页类 `com.smartisanos.launcher.view.b.a` 及其子类。
   - 不能作用到普通桌面 Page，否则 20 宫格最后一行会被错误居中，左侧出现空格。
```

已生成用于对比的截图：

```text
build/original-1080-20-global20.png
build/original-720-12.png
build/original-720-20.png
build/original-720-20-final3.png
```

下一步顺序：

```text
1. 用真实/构造的文件夹数据验证 folder 页横向居中和 Y 坐标；必要时继续调整 folder_bookcase_*、page_view_margin_top_folder、name_off_set_y_folder。
2. 从设置页真实点击 12 / 20，确认 UI 写入、重启、读取三段都走通，而不是只用 adb settings 验证。
3. 接入主题下载：优先复用原包已有 ThemeChooserActivity / ThemeItemActivity / ThemeManager / DownloadManagerDelegate 逻辑；如果继续以 ThemeChooserActivity 当设置宿主，需要先拆出独立设置宿主，否则主题选择器和设置宿主会互相覆盖。
```

### 2026-05-18 启动崩溃修复

用户反馈点击桌面图标后提示“锤子桌面屡次停止运行”。logcat 结果：

```text
java.lang.VerifyError: Verifier rejected class com.smartisanos.launcher.data.O
O.ua(Context): tried to get class from non-reference register v8 (type=Undefined)
```

原因是 `launcher/smali/com/smartisanos/launcher/data/O.smali` 中为了让启动读取
`com.smartisanos.launcher_prefs / prefs_key_launcher_mode` 而保存 `Context` 到 `v8`，
但 `move-object v8, p1` 被放在了 `DBG` 调试分支里。普通运行时不走该分支，后续读取
SharedPreferences 时使用了未初始化寄存器，Android 直接拒绝加载 `O` 类。

修复：

```text
把 move-object v8, p1 移到 DBG 判断之前，保证所有路径下 v8 都是有效 Context。
重新编译安装后，进程 com.smartisanos.launcher 可正常启动，未再出现 VerifyError。
验证截图：build/launcher_after_crash_fix.png
```

### 2026-05-18 当前工程边界确认

```text
当前主工程：E:\FANG\smartisan\smartisan-launcher-original-port
来源定位：反编译提取的原生 Smartisan 桌面，保留原生 12 / 20 宫格、文件夹、桌面动画等逻辑。

参考工程：E:\FANG\smartisan\smartisan-launcher-maintained
参考分支：main
参考范围：桌面设置页面的排版、控件风格、默认桌面入口、宫格设置交互等。

不能再混淆：
1. 不把 maintained 当主工程继续迁 12 / 20。
2. 不使用 maintained 的其他分支作为参考。
3. original-port 里设置页可以参考 maintained，但桌面网格、文件夹、编辑页仍以原生桌面逻辑为主。
4. README 只追加事实记录，不删除已有分析和方案，除非用户明确要求整理/重写。
```

### 2026-05-18 文件夹与宫格切换修复追加

```text
1. 文件夹缩略图错位原因：
   MODE_12 的 folder_preview_* 仍使用 70 / 56 等大尺寸参数，在 720P 下会导致文件夹内小图标越过文件夹框。
   已把 MODE_12 的 folder_preview_* 调整到 MODE_16 / MODE_20 同一套较小参数：
   side 50 / 32，left 40 / 41，top 23 / 21，space -2 / 0。

2. 12 / 20 切换闪退原因：
   设置页调用 Settings.Global.putInt("launcher_mode") 时，普通安卓没有 WRITE_SECURE_SETTINGS 权限，
   抛出 SecurityException 导致 ThemeChooserActivity 崩溃。
   修复方向：
   - 优先写入 com.smartisanos.launcher_prefs / prefs_key_launcher_mode。
   - Settings.Global 写入失败时忽略，不允许崩溃。
   - 旧方案曾尝试显式启动 `LauncherAlias` 后结束旧进程；该方案在 Android 10+ 会遇到后台启动限制，已被 2026-05-19 的前台过渡方案替代。
```
## 2026-05-18 720/1080 图标比例与文件夹 Y 坐标微调

本轮继续在 `smartisan-launcher-original-port` 主工程中修改，`smartisan-launcher-maintained` 只作为 main 分支参考，不切换主工程。

确认到实际资源加载路径：

- 1080x1920 / 480dpi：加载 `launcher/assets/layout/portrait/values-xxhdpi/*/layout.xml`
- 720x1280 / 320dpi：加载 `launcher/assets/layout/portrait/values-xhdpi/*/layout.xml`
- 打开文件夹时：使用 `MODE_9` 的 `_folder` 后缀参数

本轮修改：

- 让 `values-xhdpi` 的 12/20 宫格关键图标、文字、dock 参数以 1080 基准为来源，再由 `LayoutPropertyAdapter` 按屏幕比例缩放，避免 720P 因“资源已缩小 + 运行时再缩小”导致图标和编辑页缩略图过小。
- 调整 `values-xhdpi` / `values-xxhdpi` 的 `MODE_12`、`MODE_20` 编辑页缩略图参数：
  - `page_width_trans`
  - `page_height_trans`
  - `cell_width_trans`
  - `cell_height_trans`
- 调整 `values-xhdpi` / `values-xxhdpi` 的 `MODE_9` 文件夹打开态 Y 坐标：
  - `page_view_margin_top_folder`
  - `page_view_margin_bottom_folder`
- 验证截图：
  - `build/tuned4_720_home.png`
  - `build/tuned4_720_edit.png`
  - `build/tuned3_720_folder.png`
  - `build/tuned4_1080_home.png`
  - `build/tuned4_1080_edit.png`
  - `build/tuned4_1080_folder.png`

当前结论：

- 720P 不再使用一套被二次缩小的图标参数，和 1080P 的视觉比例更一致。
- 编辑页缩略图中的应用图标已放大，不再明显小于右侧齿轮。
- 文件夹打开态第一行已向行内中线靠近，文字没有再压到分隔线。
- 还需要继续微调的点：1080P 正常桌面图标是否偏大、dock 齿轮最终大小、文件夹第一行和原生截图的精确 Y 坐标。

## 2026-05-19 12/20 宫格切换加载过渡

本轮仍然只修改 `smartisan-launcher-original-port` 主工程，`smartisan-launcher-maintained` 继续作为 main 分支参考。

问题：

- 12 / 20 宫格切换保存后需要重启 Launcher 才会重新读取布局资源。
- 之前设置页保存后立即拉起桌面并结束进程，视觉上会出现一段白屏，不像 maintained 的切换体验。

修改：

- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
- `launcher/tools/java/com/smartisanos/launcher/theme/NativeLauncherSettingsHost.java`

两处 `restartLauncher()` 都改为：

1. 先把当前设置 Activity 替换成黑底 loading 过渡层；
2. 约 500ms 后启动 `com.smartisanos.launcher.LauncherAlias`；
3. 约 1150ms 后结束当前进程，让桌面重新加载 12 / 20 宫格布局。

注意：这套 `LauncherAlias + killProcess` 方案已在后续验证中废弃；Android 10+ 会拦截后台 Activity 启动。最终以“前台设置页直接启动 `com.smartisanos.launcher.Launcher`，不杀进程”的方案为准。

验证：

- 720x1280 / 320dpi 下从设置页点击 20 宫格：
  - 显示黑底胶囊 loading，不再直接白屏；
  - 之后进入 20 宫格桌面；
  - 未出现新的 `FATAL EXCEPTION`。
- 验证截图：
  - `build/switch_loading.png`
  - `build/switch_after.png`

当前自适应结论：

- 已实际验证并调过的分辨率是 720x1280 / 320dpi 和 1080x1920 / 480dpi。
- 运行时缩放入口是 `LayoutPropertyAdapter`，理论上其它接近 16:9 的分辨率会跟随屏幕比例缩放，但目前不能承诺“所有安卓手机都完全正常”。
- 下一步应该继续补测 900x1600、1080x2400、1440x2560 等分辨率，并针对非 16:9 或长屏单独调整资源选择 / 缩放边界。

## 2026-05-19 长屏自适应与切换过渡二次修正

本轮继续确认主工程是 `smartisan-launcher-original-port`，`E:\FANG\smartisan\smartisan-launcher-maintained` 只作为 main 分支参考。

长屏自适应修改：

- 修改 `launcher/tools/java/com/smartisanos/launcher/data/LayoutPropertyAdapter.java`：
  - 图标、文字、圆角等统一缩放值改为 `min(1.0f, min(scaleX, scaleY))`。
  - 目的：小屏幕继续缩小，长屏/高分屏不再把 1080 基准资源继续放大，避免 1440x2560 图标和文字过大。
- 修改 `launcher/assets/layout/portrait/values-sw411dp/MODE_9/layout.xml`：
  - `page_view_margin_top_folder` 调整为 `510`。
  - `name_off_set_y_folder` 当前为 `-80`。
  - 原因：1440x2560 / 560dpi 实际命中的是 `values-sw411dp/MODE_9` 的 folder 参数，不是 `values-xhdpi` 或 `values-xxhdpi`。

长屏补测结果：

- `900x1600 / 360dpi`
  - 主页图标、文字和格线位置正常；
  - folder 第一行图标和文字已在第一层内居中，没有压线。
- `1080x2400 / 420dpi`
  - 主页图标不再被长屏比例放大；
  - folder 第一行整体位置可用，仍可作为后续精细对齐项。
- `1440x2560 / 560dpi`
  - 主页图标、文字已随 1080 基准收敛，不再异常巨大；
  - folder 第一行使用 `values-sw411dp` 参数后已明显改善。

验证截图：

- `build/900x1600_home.png`
- `build/900x1600_folder.png`
- `build/1080x2400_home.png`
- `build/1080x2400_folder.png`
- `build/1440x2560_home.png`
- `build/1440x2560_folder.png`

12 / 20 宫格切换过渡二次修正：

- 原先尝试用 `AlarmManager + PendingIntent` 在杀掉设置进程后重新拉起桌面，但 Android 10+ 会拦截后台 Activity 启动，导致动画结束后回到上一个应用或浏览器。
- 现在改为前台设置页自己完成过渡：
  1. 设置页先显示黑底居中的 Smartisan loading；
  2. 650ms 后用当前前台 Activity 显式启动 `com.smartisanos.launcher.Launcher`；
  3. 不再杀进程，也不再用后台 PendingIntent；
  4. Launcher 直接读取新的 `prefs_key_launcher_mode` 并显示 12 / 20 宫格。

验证结果：

- 720x1280 / 320dpi 下从 12 宫格切换到 20 宫格：
  - loading 胶囊在当前内容区域居中；
  - 之后直接进入桌面，没有再掉回浏览器；
  - 抽样截图未再看到白屏帧；
  - logcat 未出现 Launcher 的 `FATAL EXCEPTION`。
- 验证截图：
  - `build/switch3_loading_120.png`
  - `build/switch3_loading_420.png`
  - `build/switch3_after_1120.png`
  - `build/switch3_after.png`

后续仍需注意：

- `Settings.Global.putInt("launcher_mode")` 在普通 Android 上仍会因为没有 `WRITE_SECURE_SETTINGS` 抛 `SecurityException`，这是预期的兼容性问题；当前代码已经捕获并改用 app 内 prefs，不允许因此崩溃。
- folder 的精确 Y 坐标还可以继续按原机截图做像素级微调，但 900x1600、1080x2400、1440x2560 已不再出现第一行严重错位。

2026-05-23 maintained 主题页迁移记录：

- 主工程仍是 `smartisan-launcher-original-port`，`smartisan-launcher-maintained` 的 main 分支只作为界面和交互参考。
- 修改 `launcher/tools/java/com/smartisanos/home/widget/sys/Title.java`：
  - 旧实现是自绘纯箭头，已改为使用 maintained 资源里的 `selector_title_button_back` 和 `title_button_text_back`，二级页面左上角显示为锤子风格“返回”按钮。
- 修改 `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`：
  - 主题列表点击后不再直接下载/设定，而是进入 maintained 的 `activity_theme_item.xml` 详情页。
  - 详情页使用 maintained 的 `btn_back`、`btn_ok`、`btn_download`、`theme_color_dot_item`、`theme_preview_img_large` 和底部主题圆点条。
  - 本地主题显示“设定”按钮，当前主题按钮禁用；在线主题显示 maintained 蓝色下载按钮。
  - 下载路径继续使用 GitHub release 镜像地址，调用系统 DownloadManager，下载完成后由通知栏安装。
  - 12 / 20 宫格切换 loading 的胶囊位置改为视图真实中心，不再扣 status bar 高度。
- 已编译并安装验证：
  - `build/theme-list3.png`：主题列表页返回按钮已变为 maintained 风格。
  - `build/theme-online-detail.png`：在线主题详情页已显示 maintained 风格下载按钮、手机预览和底部主题圆点条。
  - logcat 未出现 `FATAL EXCEPTION` / `InflateException`。

## 2026-05-23 主题下载、主题入口预览、翻页动画生效修正

本轮继续确认主工程是 `smartisan-launcher-original-port`，`smartisan-launcher-maintained` 的 main 分支只作为设置页 UI、主题资源和下载逻辑参考。

修正内容：

- `MaintainedLauncherSettingsHost` 的 12 / 20 宫格切换 loading：
  - 胶囊位置改为按 `RestartLoadingView` 的真实宽高做几何居中；
  - 不再扣 `status_bar_height`，避免在不同分辨率 / 状态栏高度下偏上或偏下。
- 一级菜单“桌面主题”：
  - 已把左侧图标从灰色占位图改为当前主题预览图；
  - 使用 `SettingItemTextVertical.setIconBitmap()` 动态绑定 `theme_preview/<theme>/thumbnail_settings.png`。
- 在线主题列表：
  - 对齐 maintained main 分支的 release 资产，当前可下载主题来源为 `themes-v1`；
  - 下载基址改为 maintained 文档记录的 `https://gh-proxy.org/https://github.com/15255040419/smartisan-launcher/releases/download/themes-v1/`；
  - 白雾主题改为真实的 `smartisan_theme_mist` / `com.smartisanos.launcher.theme.mist`，并从 maintained 补入白雾预览资源；
  - 移除 release 中不存在的 `copperred`、`gintama` 下载项，避免点击后 404；
  - 经典蓝使用本地 `smartisan_theme_light_blue` 预览，但下载包对应 release 中存在的 `com.smartisanos.launcher.theme.blue.apk`。
- 主题下载：
  - Manifest 已包含 `INTERNET`、`ACCESS_NETWORK_STATE`、`WRITE_EXTERNAL_STORAGE`、`READ_EXTERNAL_STORAGE`、`REQUEST_INSTALL_PACKAGES`；
  - 主题 APK 通过系统 `DownloadManager` 下载，普通应用不能静默安装 APK，下载完成后需要用户从通知栏或下载应用继续安装；
  - 已在 1080x1920 / 480dpi 模拟器验证：DownloadManager 从 `Starting` 到 `Finished with status SUCCESS`。
- 桌面翻页动画：
  - 选择项继续使用 maintained 的 4 个值：默认 `0`、立体翻转 `3`、百叶窗 `4`、切牌 `6`；
  - `Settings.Global` 在普通安卓系统上会因为缺少 `WRITE_SECURE_SETTINGS` 拒绝写入，所以现在拆成独立 try：Global 失败不影响 `Settings.System` 和私有 `com.smartisanos.launcher_prefs["launcher_page_animation"]` 写入；
  - 选择翻页动画后不再调用 `restartLauncher()`，避免误表现为闪退 / 回桌面；同进程内通过反射即时更新 `Constants.SCROLL_ANIMATION_TYPE`，下次启动也会从私有 prefs 覆盖读取。

ADB 复测结论：

- 打开“桌面主题”：PID 不变，top Activity 保持 `ThemeChooserActivity`，未出现 `FATAL EXCEPTION`。
- 选择“桌面翻页动画”：PID 不变，top Activity 保持 `ThemeChooserActivity`，未出现 `FATAL EXCEPTION`；logcat 中仍可能看到系统拒绝写 `Settings.Global` 的 `SecurityException`，但不会阻断私有 prefs 写入。
- 12 / 20 宫格切换属于需要桌面重载的操作，会主动回到 `LauncherAlias`；本轮复测未看到 Java 崩溃日志。

验证记录：

- `build/settings_after_final.png`：一级菜单“桌面主题”左侧已显示当前主题预览图。
- `build/theme_list_now.png`：主题列表页显示 maintained 风格的本地主题 / 在线主题网格。
- `build/theme_detail_now.png`：主题详情页显示 maintained 风格手机预览、底部圆点和下载按钮，白雾圆点有预览。
- `build/download_after_fix.png`：点击下载后无崩溃，DownloadManager 成功完成下载。

## 2026-05-26 应用图标自动识别与自定义替换迁移

本轮继续以 `smartisan-launcher-original-port` 为主工程，参考 `smartisan-launcher-maintained` 的图标包链路修正当前“应用图标”功能。

改动内容：

- 新增 `launcher/tools/java/com/smartisanos/home/settings/icons/IconPackManager.java`：
  - 扫描已安装 APK 中是否存在 `res/xml/appfilter.xml`；
  - 读取 icon pack 的 `item component="ComponentInfo{pkg/class}" drawable="xxx"` 映射；
  - 支持按 package 和 component 精确查找图标；
  - 使用 `com.smartisanos.launcher_prefs["prefs_key_selected_icon_pack"]` 保存当前图标包，兼容 maintained 的 key。
- 修改 `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`：
  - 桌面图标加载入口 `iconOverrideDrawable(...)` 改为统一顺序：redirect 自定义/手动图标 -> 已选 icon pack -> 系统原图；
  - “应用图标”页面顶部显示当前图标包，点击可选择“自动选择第一个可用图标包 / 不使用图标包 / 已安装图标包”；
  - 单个应用点击后可选择“自动识别改进版图标 / 保持系统原图 / 从相册选择图片 / 指定内置图标”；
  - 应用图标变更后发送 `com.smartisanos.launcher.update_icon`，刷新原桌面设置缓存并重启桌面。
- maintained 设置资源包中已包含 `app_icon_*`、`default_icon_*`、`calendar`、`launcher_settings`、`smartisan_icon_*` 等图标资源，保证手动选择能取到 drawable；自动识别优先依赖已选 icon pack 的 `appfilter.xml`。

验证结果：

- `build.bat` 构建成功，输出 `build/launcher-signed.apk`。
- `aapt2 dump resources launcher/assets/settings_maintained/maintained-settings-res.apk` 已确认包含 `app_icon_phone`、`default_icon_1`、`smartisan_icon_settings`、`calendar`、`launcher_settings`。
- `adb install -r build/launcher-signed.apk` 成功。
- `adb shell am start -n com.smartisanos.launcher/.theme.ThemeChooserActivity` 成功，top Activity 保持 `ThemeChooserActivity`。
- 启动后 logcat 最近记录未出现 `FATAL EXCEPTION` / `AndroidRuntime`。

### 2026-05-26 追加：相机/图库错误图标与相册自定义

用户截图确认“相机”“图库”的右侧改进版图标分别显示为旧蓝色镜头和小电视图，视觉明显错误。检查后确认这些资源不是 maintained 主工程里的可靠锤子图标，而是之前补进来的旧/错配资源。

修正内容：

- `MaintainedLauncherSettingsHost.smartisanIconFor(...)` 不再自动把相机、图库/相册映射到 `smartisan_icon_camera` / `smartisan_icon_gallery`，没有 icon pack 或用户自定义时回退系统原图，避免显示错误改进版。
- “选择图标”弹窗新增“从相册选择图片”：
  - 使用 `ACTION_OPEN_DOCUMENT image/*` 打开系统图片选择器；
  - `ThemeChooserActivity.onActivityResult(...)` 转发给 `MaintainedLauncherSettingsHost.onActivityResult(...)`；
  - 选中图片会裁成 192x192 PNG，写入 `RedirectIconDB.MODE_CUSTOM`，并在应用私有目录保留一份兼容副本；
  - 桌面图标加载链路优先读取 redirect 自定义图片。
- 手动图标列表移除了相机/图库这两个错误内置项，保留“保持系统原图”和“从相册选择图片”作为修正路径。

验证结果：

- `build.bat` 主体构建成功；因 Windows 短暂占用旧 `launcher-signed.apk`，本轮先输出并安装 `build/launcher-iconfix-signed.apk`，随后已覆盖回常规 `build/launcher-signed.apk`。
- `adb install -r build/launcher-iconfix-signed.apk` 成功。
- 启动 `ThemeChooserActivity` 成功，top Activity 保持设置页。
- 最近 logcat 未出现 `FATAL EXCEPTION` / `AndroidRuntime` / `VerifyError`。

### 2026-05-26 追加：图标替换从临时 prefs 迁到 maintained 风格 redirect 数据层

用户继续确认目标不是“能用的兼容层”，而是 maintained 的完整图标链路。经对照 maintained：

- `IconPackManager` 负责 icon pack/appfilter；
- `IconManager` 负责生成可替换应用列表、官方图标、改进图标状态；
- `RedirectIconDB` / `RedirectIconInfo` 负责记录每个应用的图标状态；
- 桌面加载入口最终从 redirect/icon pack 取图，不应依赖设置页里散落的包名猜测。

本轮修正：

- 新增同包名兼容类：
  - `launcher/tools/java/com/smartisanos/launcher/data/redirectIcon/RedirectIconInfo.java`
  - `launcher/tools/java/com/smartisanos/launcher/data/redirectIcon/RedirectIconDB.java`
  - `launcher/tools/java/com/smartisanos/home/settings/icons/IconManager.java`
- `RedirectIconDB` 暂以应用私有 `SharedPreferences + files/redirect_icons/*.png` 保存状态，不直接改原版数据库 schema，避免破坏 original-port 现有 `DatabaseProvider`。
- `MaintainedLauncherSettingsHost.iconOverrideDrawable(...)` 改为：
  1. redirect 自定义图片；
  2. redirect 手动资源图标；
  3. 已选 icon pack/appfilter；
  4. 系统原图。
- 删除设置页里的自动包名猜测 fallback，不再把相机/图库等误映射到旧资源。
- 单应用图标选择现在写入 `RedirectIconDB`：
  - 自动识别改进版图标 -> `MODE_AUTO`；
  - 保持系统原图 -> `MODE_ORIGINAL`；
  - 从相册选择图片 -> `MODE_CUSTOM`；
  - 指定内置图标 -> `MODE_RESOURCE:<drawable>`。

验证结果：

- `build.bat` 成功，输出 `build/launcher-signed.apk`。

### 2026-05-27 追加：maintained 设置页开关和主入口图标细节

用户反馈 maintained 主设置页的四个入口图标更协调，同时要求“隐藏桌面图标名称 / 解锁动画 / 多板块视图快速启动应用”可用。

本轮修正：

- 主设置页四个入口继续复用 maintained 设置资源包，并调整 `SettingItemTextVertical` 的图标槽位、文字间距和箭头尺寸。
- 新增 `LauncherSettingBridge.readBool(...)`，统一从 `Settings.System`、`Settings.Global` 和应用私有 `launcher_settings` 读取布尔设置，避免普通 Android 上无法写系统 Settings 时桌面主体读不到开关状态。
- `O.smali` 启动加载阶段改为通过 `LauncherSettingBridge` 读取：
  - `launcher_hide_lable`
  - `launcher_unlock_animation_enabled`
  - `fast_launch_app_on`
- `ja.1.smali` 的配置变化回调同步改为通过 `LauncherSettingBridge` 读取解锁动画开关。
- `MaintainedLauncherSettingsHost.applyLauncherSettingChange(...)` 不再只调用 `O.W(...)`；改为调用 `O.getInstance().init(context)` 并通知原桌面 `ja.r(key)`，让设置页开关能即时刷新桌面配置。
- 确认“隐藏桌面图标名称”在真正的 `com.smartisanos.launcher/.Launcher` 中生效；此前看起来不生效的截图实际前台 Home 是 `app.lawnchair/.LawnchairLauncher`。
- 修正主设置页“桌面主题 / 桌面壁纸 / 桌面翻页动画 / 应用图标”四个入口预览图宽窄不一：
  - 四个入口不再混用原始 drawable 尺寸和 View background；
  - 统一合成为 72dp 白色圆角预览框；
  - 框内统一 7dp 边距并等比缩放内容；
  - 壁纸预览只绘制纹理内容，再放入同规格预览框，避免双层白块或纹理溢出。

验证结果：

- 使用临时便携 JDK 构建，`build.bat` 成功，输出 `build/launcher-signed.apk`。
- `adb install -r build/launcher-signed.apk` 成功。
- `adb shell am start -n com.smartisanos.launcher/.Launcher` 成功。
- `launcher_hide_lable=false/true` 分别验证桌面名称显示/隐藏正常。
- `adb shell am start -n com.smartisanos.launcher/.theme.ThemeChooserActivity` 成功。

### 2026-05-27 追加：maintained 三个开关动画和即时生效

用户反馈“隐藏桌面图标名称 / 解锁动画 / 多板块视图快速启动应用”三个开关没有滑动动画，且关闭后没有立即生效。

本轮修正：

- `SwitchEx` 增加 `ValueAnimator` 驱动的 180ms 滑动进度，底图和滑块位置都按动画进度绘制。
- `SettingItemSwitch` 增加 `setCheckedAnimated(...)`，设置页点击时不再瞬间跳状态。
- 修正滑块本体触摸只改变 UI、不保存配置的问题：
  - 点整行和点滑块本体都会进入同一套保存与通知逻辑；
  - 滑块本体点击也走 `SwitchEx.toggle()` 的动画路径；
  - 不再出现“开关看起来变了，但桌面没收到设置”的假状态。
- `writeBoolSetting(...)` 改为同步写入应用私有配置，并尽量写 `Settings.System/Global`，普通 Android 上没有系统写权限时仍能让桌面读取到设置。
- `applyLauncherSettingChange(...)` 调整为先通知 maintained 原配置回调，再重新加载 `O.init(context)`，避免旧值被提前覆盖导致回调不执行。
- 修正 `ja.1.smali` 里 `launcher_hide_lable` 回调使用旧值计算 `SHOW_APP_NAME` 的问题，改为按新值计算并触发原 `W` 刷新任务。

验证结果：

- `build.bat` 成功，输出 `build/launcher-signed.apk`。
- `adb install -r build/launcher-signed.apk` 成功。
- ADB 实测：
  - 设置 `launcher_hide_lable=false` 后桌面名称显示正常；
  - 在 maintained 设置页点击“隐藏桌面图标名称”滑块本体，开关滑到开启，返回桌面后名称立即隐藏；
  - 再次点击同一滑块关闭，返回桌面后名称立即恢复显示；
  - `uiautomator dump` 确认三个开关均为可点击 `CompoundButton`，状态能随设置页操作更新。

### 2026-05-27 追加：设置页预览图、壁纸和开关细节

用户继续反馈：

- “十二宫格 / 二十宫格”预览图实际仍像旧 9/16 宫格；
- 主设置页“桌面主题 / 桌面壁纸”缩略图偏小；
- 更换桌面壁纸没有生效；
- 点击“桌面主题”进入时有卡顿；
- 开关滑动时蓝色点会闪出边框。

本轮修正：

- `PreviewSettingItemView` 继续承载 maintained 布局，但 `bindGrid(...)` 不再直接使用 maintained 的 `grids_9_preview_normal.png / grids_16_preview_normal.png` 旧图，改为动态绘制真正 3x4 和 4x5 预览。
  - 2026-05-27 后续修正：用户要求恢复为可手工 PS 的图片资源后，动态绘制方案已撤回，当前重新使用下面两个 PNG 资源。
- 原旧宫格图所在目录记录如下，如需手工 PS 可替换：
  - `launcher/tools/maintained_settings_res/res/drawable-xxhdpi-v4/grids_9_preview_normal.png`
  - `launcher/tools/maintained_settings_res/res/drawable-xxhdpi-v4/grids_16_preview_normal.png`
- 主设置页“桌面主题”缩略图改用 maintained 自带 `thumbnail_settings.png / thumbnail_settings_16.png`，不再把真实桌面大图硬缩到小框导致观感偏小。
- `thumbnailFramedPreviewBitmap(...)` 的内容区扩大，桌面壁纸缩略图显示面积更接近 maintained。
- maintained 设置资源 APK 和外部 `Resources` 增加静态缓存，避免每次点击“桌面主题”都在主线程重复拷贝资源 APK，减少进入页面卡顿。
- `onActivityResult(...)` 增加 requestCode `10` 的桌面壁纸选择处理：
  - 读取图片选择器返回的 URI；
  - 通过 `WallpaperManager.setBitmap(...)` 应用系统桌面壁纸；
  - 写入 `launcher_wallpaper_uri` 并通知桌面刷新。
- `SwitchEx` 绘制时对 bottom/knob 图层按 frame 区域裁剪，避免蓝色底图或圆点闪出边框。

验证结果：

- `build.bat` 成功，输出 `build/launcher-signed.apk`。
- `adb install -r build/launcher-signed.apk` 成功。
- ADB 截图确认主设置页显示 3x4 / 4x5 宫格预览，主题缩略图放大并使用 maintained 风格图。
- `adb install -r build/launcher-signed.apk` 成功。
- `adb shell am start -n com.smartisanos.launcher/.theme.ThemeChooserActivity` 成功。
- 最近 logcat 未出现 `FATAL EXCEPTION` / `AndroidRuntime` / `VerifyError` / `ClassNotFoundException` / `NoSuchMethodError`。

后续差异：

- 这一步已经把状态管理迁成 maintained 风格，但没有接入 maintained 可能依赖的在线/预置官方改进图标数据库；自动正确替换仍依赖已安装 icon pack 的 `appfilter.xml` 或用户手动 redirect 记录。

### 2026-05-26 追加：对齐 maintained 的应用图标交互与稳定刷新

用户反馈原实现仍有三类差异：桌面图标会被错误自动替换、切换图标时经常返回桌面、应用图标页和弹窗不像 maintained。

本轮修正：

- “应用图标”页顶部改成 maintained 风格的“改进图标 / 图标包”两行设置项，不再显示临时的“已重绘/未重绘 图标包：点此切换”头部。
- 单应用行改成 maintained 风格的左右选择：
  - 点左侧图标：使用系统原图；
  - 点右侧图标：有 icon pack/custom 候选则启用改进图标；
  - 右侧没有候选图标时，直接打开相册选择图片；
  - 不再弹出“自动识别/保持系统原图/内置图标”的临时列表弹窗。
- 新安装或无 redirect 记录的应用默认保持系统原图，不再默认自动使用 icon pack，避免相机、图库等被错误替换。
- 图标切换刷新改为 maintained 风格的 `com.smartisanos.launcher.update_icon` 广播 + 原桌面刷新入口，不再调用 `restartLauncher()` / `Process.killProcess()`，避免切换时跳回桌面。
- `SettingItemSwitch` 补齐 `setTitle(...)` / `setSwitchSubtitle(...)`，用于承载 maintained 图标页顶部设置项。

验证结果：

- `build.bat` 成功，输出 `build/launcher-signed.apk`。
- 当前 ADB 未检测到在线设备，因此本轮未完成安装实测；需设备在线后再执行 `adb install -r build/launcher-signed.apk` 和页面点击复测。

### 2026-05-26 追加：桌面主图标加载入口接入 maintained 链路

用户继续反馈桌面图标仍显示系统原图。复查发现 original-port 桌面数据库生成图标时主要在 `launcher/smali/com/smartisanos/launcher/data/A.smali` 中直接调用 `ResolveInfo.loadIcon(...)`，此前只补了 `e/s.smali` 的工具入口，导致大量桌面图标不会经过 maintained 的 `IconPackManager`。

本轮修正：

- 新增 `MaintainedLauncherSettingsHost.loadIcon(ResolveInfo, PackageManager)`：
  - 先读取 redirect 自定义/手动状态；
  - 再读取 selected icon pack 的 `appfilter.xml`；
  - 最后回退系统原图。
- 将 `A.smali` 中三处桌面图标生成入口从 `ResolveInfo.loadIcon(...)` 改为 `MaintainedLauncherSettingsHost.loadIcon(...)`。
- 在 `Launcher.onCreate(...)` 后追加一次性迁移刷新 `maybeRefreshLauncherIcons(...)`，新版首次启动会延迟触发全量 `com.smartisanos.launcher.update_icon`，让旧数据库缓存图标重算。

验证结果：

- `build.bat` 成功，输出 `build/launcher-signed.apk`。

### 2026-05-29 修复：12/20宫格经典黑主题顶底底图色差与半透明白蒙版问题

用户反馈在选择“经典黑”（smartisan_theme_black）主题时，顶部的桌面背景格子颜色是偏灰绿色（鸦青色），而底部的 Dock 栏是黑色的，导致顶部和底部完全割裂，视觉效果极其错位。

**原因定位**：
1. 本地内置默认主题 `smartisan_theme_black`（经典黑）在 12 宫格和 20 宫格布局下，其静态资源所在的 `launcher/assets/Textures/1080p/12` 和 `launcher/assets/Textures/1080p/20` 文件夹内被前任开发者替换为了**半透明白色蒙版（RGBA）**或者残留了原装底包的**鸦青色（Raven，偏深灰绿）**的 `back*.png` 底图，但单独把 `dock_back.png` 改成了经典黑的深色。
2. 导致当用户使用 12 宫格或 20 宫格经典黑主题时，顶部网格区域由于不正确的白蒙版和灰绿色纹理底色，与纯黑皮质纹理的 Dock 栏形成了严重偏色差。

**修复方案**：
1. 经过比对原版 ROM 提取桌面 `com.smartisanos.launcher-3.apk` 中的原生内置资源，发现其中完美的 12 宫格和 20 宫格 `back*.png` 和 `dock_back.png` 本身就代表了最纯正的官方 **经典黑** 拟物化高清晰度皮质纹理设计（网格平均 RGB 为 `[59.92, 62.90, 67.14]`，Dock 平均 RGB 为 `[40.18, 43.71, 47.36]`）。
2. 编写并运行了 Python 自动化提取脚本，将 `com.smartisanos.launcher-3.apk` 中的 `assets/Textures/1080p/12/` 和 `assets/Textures/1080p/20/` 目录下包含的全部 **277个原汁原味高质感经典黑原生资源文件** 全量提取并覆盖写入到当前工程的 `launcher/assets/Textures/1080p/12` 和 `launcher/assets/Textures/1080p/20` 目录中。
3. 彻底清除了之前被胡乱修改的半透明白色蒙版以及残留的鸦青色资源，实现了经典黑主题下桌面顶部微皮质纹理与底部深黑底色 Dock 栏的像素级色彩与深度统一。

**验证结果**：
- 执行 `.\build.bat` 对 Launcher 进行了全量重新编译、合并 dex、zipalign 及重签名，成功输出并覆盖 `build/launcher-signed.apk`。
- 对生成的 APK 进行解包并用 Python 提取底层通道 RGB 数据分析，证实 12/20 宫格网格背景和 Dock 背景的 RGB 均值完全吻合经典黑配色方案：
  - 12 宫格背景 `back1.png`: Mean RGB `[59.92, 62.90, 67.14]`
  - 12 宫格 Dock `dock_back.png`: Mean RGB `[40.18, 43.71, 47.36]`
  - 20 宫格背景 `back1.png`: Mean RGB `[53.62, 57.56, 61.69]`
  - 20 宫格 Dock `dock_back.png`: Mean RGB `[42.40, 45.98, 49.65]`
- 用户反馈实际装机显示完全正确，色差和杂色已全部消失。

### 2026-05-31 追加：主题切换任务栈、透明主题壁纸与桌面设置缩略图对齐

用户继续反馈三类问题：主题设置页与桌面被系统识别成两个应用导致切换主题后前后台来回闪；毛玻璃/白雾透明主题更换壁纸后仍可能显示旧默认壁纸；桌面设置页中“桌面主题 / 桌面壁纸 / 桌面翻页动画 / 应用图标”四个图标尺寸、边框和对齐与 maintained 项目不一致。

本轮修正：

- 修复桌面设置页任务栈：
  - 在 `launcher/smali/com/smartisanos/launcher/a/P.smali` 中移除打开 `ThemeChooserActivity` 时强制添加的 `FLAG_ACTIVITY_NEW_TASK`。
  - 使 `ThemeChooserActivity` 与 `Launcher` 保持在同一个 `smartisanos.task.launcher` 任务中，避免“返回桌面 -> 又闪回设置页 -> 再回桌面”的双跳。

- 修复透明主题壁纸读取：
  - 在 `launcher/smali/com/smartisanos/launcher/e/s.smali` 中，透明主题优先通过 `MaintainedLauncherSettingsHost.currentLauncherWallpaperUri(...)` 读取当前壁纸，再调用 `decodeLauncherWallpaperBitmap(...)` 解码。
  - 普通不透明主题切换时不再把 `Constants.sWallpaperUri` 作为背景传入，避免普通主题错误透出用户壁纸。
  - 在 `MaintainedLauncherSettingsHost` 中新增当前壁纸 URI 解析逻辑，支持从 prefs、Settings、`gaussian_wallpaper.png`、`launcher_wallpaper.jpg` 多路径兜底。
  - 选择新壁纸时同步写入 `launcher_wallpaper.jpg`、缩略图、`gaussian_wallpaper.png`，并写入 `launcher_wallpaper_ready` 标记，避免透明主题一直使用旧的默认女孩壁纸。

- 修复桌面设置页缩略图样式：
  - 在 `launcher/tools/java/com/smartisanos/home/settings/SettingItemTextVertical.java` 中：
    - 默认隐藏 `iconFrame`，只有需要外部 frame 时才显示；
    - 新增 `setIconFrameVisible(...)`；
    - 将四个设置项图标显示上限从 maintained 原始 `60dp x 70dp` 调小为 `53dp x 63dp`，约比之前整体小 20px；
    - 保持图标区域 `wrap_content`，不强行固定槽位，避免文字列错位。
  - 在 `MaintainedLauncherSettingsHost.thumbnailFramedPreviewBitmap(...)` 中统一生成完整带框缩略图：
    - 外框 bitmap：`180 x 210 px`；
    - 内容内边距：四周 `12 px`；
    - 内容区：`156 x 186 px`；
    - 圆角：`9 px`；
    - 描边：`2 px`。
  - “桌面主题 / 桌面壁纸 / 桌面翻页动画”三项使用 `setPreviewIconBitmap(...)` 完整显示带框缩略图，避免 `centerCrop` 把左右白边裁掉。
  - “应用图标”项不显示白色缩略图框，只随统一 maxWidth/maxHeight 缩小。

验证结果：

- 多次执行 `.\build.bat` 成功，输出 `build/launcher-signed.apk`。
- 多次执行 `adb install -r -d build\launcher-signed.apk` 成功安装到 `emulator-5554`。
- `dumpsys activity activities` 确认 `ThemeChooserActivity` 与 `Launcher` 同在一个 `smartisanos.task.launcher` 任务栈中。
- ADB 截图确认：
  - 透明主题桌面可读取 `gaussian_wallpaper.png` 壁纸；
  - 设置页三项带框缩略图四边都有白边，不再出现左右边框被裁掉；
  - 缩略图比例已改成竖向长方形，并整体缩小。

当前注意点：

- `build/` 目录中 APK 产物有新增/删除/覆盖变化，多数是编译输出，不应作为源码修复重点提交。
- 当前工作区还包含此前多轮主题动画和资源修复的 smali 改动，提交前需要按功能分组检查，避免把无关产物混入。

### 2026-05-31 追加：首次主题动画、设置页闪回、壁纸选择与恢复默认

用户继续确认：即使把锤子桌面设为默认桌面，第一次在主题页点击“设定”后仍可能没有桌面翻页过渡动画；主题设定后会先回桌面，又短暂闪回主题设置页，再回桌面加载动画；毛玻璃 / 白雾透明主题选择壁纸后缩略图已变化但桌面仍不刷新；点击“恢复默认壁纸”也不能回到主题自带背景。

本轮原因定位：

- 首次主题切换动画不是单纯“没设为默认桌面”的问题，而是冷启动和主题设定消息之间存在竞态：
  - 主题页写入主题后，`Launcher` 可能刚启动，桌面数据、页面和快照还没准备好；
  - 旧逻辑会在桌面未就绪时直接消费主题切换消息，导致用于翻页动画的桌面快照为空或被后续重建覆盖；
  - 第二次切换时桌面已热启动，数据已加载完成，所以动画看起来正常。
- 主题设定后的闪回来自设置页和桌面任务栈 / 收尾动作不一致：
  - 设置页承载在 `ThemeChooserActivity`，之前启动桌面和关闭设置页的时机不稳定；
  - 系统把设置页与桌面当成两个可切换界面处理时，就会出现“桌面 -> 设置页残影 -> 桌面动画”的短暂跳转。
- 透明主题壁纸不生效来自两个问题叠加：
  - original-port 中 `Constants.isTransparentTheme` 有时与当前主题 ID 不同步，毛玻璃 / 白雾会被当成普通主题；
  - `launcher_wallpaper_uri`、私有副本、`gaussian_wallpaper.png` 和旧 Settings 值之间优先级混乱，导致缩略图更新了，桌面仍拿旧图或主题默认图。
- “恢复默认壁纸”之前只是 UI 占位或只清一部分 key，没有把 launcher 私有壁纸副本、ready 标记和桌面缓存一起清掉，所以桌面没有真正回退到主题资源。

本轮修复：

- 首次主题切换动画：
  - 在 `launcher/smali/com/smartisanos/launcher/a/r.smali` 的主题切换消息处理链路中保留待执行消息，等桌面就绪后再执行主题变更；
  - 通过 `MaintainedLauncherSettingsHost.isLauncherReadyForThemeAnimation()` 判断桌面是否已有可参与动画的页面和快照；
  - 通过 `consumePendingThemeScreenshotForAnimation()` 消费设置页预先准备的主题切换快照，避免冷启动第一次切换没有可渲染内容；
  - 保留 `sj` pending message 兜底，避免第一次切换消息在桌面数据初始化期间丢失。
- 设置主题后的闪回：
  - 主题设定完成后不再额外启动一个新的设置页 / 桌面任务；
  - `finishSettingsTask(...)` 统一以无转场方式关闭设置页，让 `Launcher` 留在同一个 `smartisanos.task.launcher` 任务里承接动画；
  - `ThemeChooserActivity` 和 `Launcher` 的任务栈关系通过 `dumpsys activity activities` 验证过，同属 launcher 任务。
- 透明主题壁纸选择：
  - `MaintainedLauncherSettingsHost.onActivityResult(...)` 处理壁纸选择时，不再依赖系统 `WallpaperManager` 作为桌面背景来源，而是保存一份 launcher 私有副本；
  - 写入 `launcher_wallpaper_uri`、`launcher_wallpaper_thumb`、`launcher_wallpaper_ready`，同时生成 / 刷新 `gaussian_wallpaper.png`；
  - `refreshLauncherWallpaperNow(...)` 会立即通知桌面刷新，并延迟二次刷新，解决返回桌面后仍显示旧默认图的问题；
  - `Launcher.onResume()` 追加 `maybeRefreshLauncherWallpaper(...)`，用于从图片选择器返回后补一次刷新。
- 透明主题识别：
  - `e/s.smali` 不再只看 `Constants.isTransparentTheme`，同时通过 `MaintainedLauncherSettingsHost.isLauncherWallpaperTheme(context)` 判断当前主题是否为 `smartisan_theme_aero` 或 `smartisan_theme_mist`；
  - 普通不透明主题继续使用主题自己的背景，不再透出用户选择的图片壁纸；
  - 毛玻璃 / 白雾才读取 launcher 自定义壁纸。
- 恢复默认壁纸：
  - `restoreDefaultWallpaper(...)` 清理 `launcher_wallpaper_uri`、`desktop_wallpaper_uri`、`lockscreen_background`、缩略图和 ready / pending 标记；
  - 删除 `gaussian_wallpaper.png`、`launcher_wallpaper.jpg`、`launcher_wallpaper_*` 等私有壁纸副本；
  - 将内存中的 launcher wallpaper 常量清空，并立即刷新桌面壁纸层；
  - `e/s.smali` 在没有自定义壁纸时返回 `null`，让后续主题加载链路使用主题包内置 `background.png`，而不是继续回退到旧系统壁纸。
- 应用图标三态继续补齐：
  - 左侧图标：写入 `RedirectIconDB.MODE_ORIGINAL`，强制桌面使用应用系统原图；
  - 右侧推荐图标：写入 `MODE_AUTO`，走 Smartisan 改进图标 / 图标包识别；
  - 选择图片：写入 `MODE_CUSTOM`，使用相册自定义 PNG；
  - 桌面主图标入口 `MaintainedLauncherSettingsHost.loadIcon(...)` 优先识别 `MODE_ORIGINAL`，避免左侧恢复原图后仍被自动替换。

验证结果：

- `build.bat` 成功，输出 `build\launcher-signed.apk`。
- `adb install -r -d build\launcher-signed.apk` 成功安装。
- `adb shell am start -n com.smartisanos.launcher/.Launcher` 可正常启动桌面。
- 在毛玻璃主题下选择壁纸后，缩略图会更新，桌面壁纸会刷新到新图；普通不透明主题不会透出该壁纸。
- 点击“恢复默认壁纸”后，再回桌面确认不再显示用户选择的灰色 / 截图壁纸，而是回到毛玻璃主题内置模糊背景。
- 应用图标页已显示左侧系统原图、右侧推荐 / 自定义入口；浏览器不再被自动映射成搜索放大镜候选图标，但桌面历史缓存仍需通过点击左侧原图或刷新图标后确认最终状态。

当前注意点：

- 主题动画主链路已修复，但第一次切换主题仍建议继续做“清数据冷启动 + 多主题连续切换”的回归，防止个别主题包资源加载慢时再次触发竞态。
- 应用图标三态已补代码，仍需要继续实机点击验证：左侧系统图标、右侧推荐图标、自定义图片三者是否都能在桌面立即刷新。
- `build/` 下 APK 文件和截图均为验证产物，用户已明确 build 不需要推送。

### 2026-05-31 追加：桌面设置四个入口图标尺寸与边框基准

用户多次反馈桌面设置主页面里“桌面主题 / 桌面壁纸 / 桌面翻页动画 / 应用图标”四个入口图标和 maintained 截图不一致，具体表现包括：缩略图太大、太宽、上下和左右边框不等宽、外面有一层边框里面又有一层边框、应用图标和前三个入口的文字列不对齐、应用图标不应该加白色外框。

当前最终设定如下，后续如果相关 UI 再出问题，优先按这些基准回查：

- 控件位置与槽位：
  - 类：`launcher/tools/java/com/smartisanos/home/settings/SettingItemTextVertical.java`。
  - 左侧图标容器 `frameLayout` 使用 `WRAP_CONTENT x WRAP_CONTENT`，`leftMargin = 21dp`，垂直居中。
  - 文本列通过 `RIGHT_OF frameLayout` 对齐，不再固定一个过宽图标槽，避免应用图标和前三个入口文字错位。
  - 箭头右侧 padding 为 `30dp`。
- ImageView 显示上限：
  - `icon.setAdjustViewBounds(true)`。
  - `icon.setMaxWidth(dp(53))`。
  - `icon.setMaxHeight(dp(63))`。
  - 这个尺寸是从此前较大的 `60dp x 70dp` 缩小后确定的，约整体缩小 20px；目的是接近 maintained 截图中的竖向小预览比例。
- 三个带框入口的生成方式：
  - 入口：`桌面主题`、`桌面壁纸`、`桌面翻页动画`。
  - 绑定方法：`setPreviewIconBitmap(thumbnailFramedPreviewBitmap(...))`。
  - 显示缩放：`setPreviewIconBitmap(...)` 内使用 `ImageView.ScaleType.FIT_CENTER`。
  - 不再依赖 `iconFrame` 外层边框，调用前会 `setIconFrameVisible(false)`，避免双层边框。
- 带框缩略图 bitmap 参数：
  - 方法：`MaintainedLauncherSettingsHost.thumbnailFramedPreviewBitmap(...)`。
  - 外框 bitmap：`180 x 210 px`。
  - 白色圆角底：`Color.WHITE`。
  - 圆角半径：`9 px`。
  - 内容内边距：四周 `12 px`。
  - 内容区：`156 x 186 px`。
  - 源图裁剪：使用 `centerCropRect(...)` 按内容区比例居中裁剪，再绘制到内容区。
  - 描边：`2 px`，颜色 `Color.argb(35, 0, 0, 0)`。
  - 描边矩形：`RectF(1, 1, width - 1, height - 1)`，避免描边半像素被裁掉。
- 为什么不能回退到旧做法：
  - 不能把白框作为 `iconFrame` 再把缩略图放进去，否则会出现“外框一层、图里又一层”的双层边框。
  - 不能让 ImageView 对三项带框缩略图使用 `CENTER_CROP`，否则会裁掉左右白边，出现“上下有边、左右没边”的问题。
  - 不能直接显示原始主题 / 壁纸 / 动画图，因为原图比例不同，会导致四周边距不一致。
  - 不能给“应用图标”入口加同样白框；maintained 里应用图标是独立图标，不是带框缩略图。
- 应用图标入口：
  - 入口：`应用图标`。
  - 绑定方法：普通 `setIconResource(...)` / `setIconBitmap(...)`。
  - 显示缩放：普通图标仍走 `CENTER_CROP`，但受 `53dp x 63dp` 最大尺寸限制。
  - 不显示 `iconFrame`，不包白色预览框。

已遇到并修过的问题记录：

- “图标太大”：通过把 `SettingItemTextVertical` 里的 maxWidth / maxHeight 调到 `53dp x 63dp` 修复。
- “图标太宽，不像 maintained 的竖向长方形”：通过把预览源合成为 `180 x 210 px` 竖向比例修复。
- “上下有边框、左右没有边框”：通过 `setPreviewIconBitmap(...)` 改用 `FIT_CENTER`，并把边框合进 bitmap 内部修复。
- “边框里面还有一层边框”：通过隐藏 `iconFrame`，只保留 `thumbnailFramedPreviewBitmap(...)` 生成的一层白框修复。
- “应用图标和前三项不对齐”：通过图标容器 `WRAP_CONTENT` 和文本 `RIGHT_OF frameLayout` 对齐修复。
- “应用图标不应该有边框”：应用图标入口不走 `thumbnailFramedPreviewBitmap(...)`，只显示原图标资源。
