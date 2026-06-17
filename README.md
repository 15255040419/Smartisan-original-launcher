<p align="center">
  <img src="clean_launcher/res/drawable/ic_launcher.png" width="96" alt="锤子桌面图标">
</p>

<h1 align="center">Smartisan Launcher Original Port</h1>

<p align="center">
  原版锤子桌面移植工程，用于在普通 Android 设备上独立安装和使用，同时尽量保留 Smartisan OS 桌面的宫格、主题、图标、壁纸、搜索和设置体验。
</p>

---

## 文档职责与联动

README 是项目总入口，只写当前事实和导航规则。不要把每日修复流水、原始 APK 清单、二进制 Manifest 改法塞回 README；这些内容分别由下面三个专项文档负责。

| 文档 | 主责 | 什么时候必须同步更新 | 不能写什么 |
| --- | --- | --- | --- |
| `README.md` | 当前安装方式、当前可用能力、版本 / 兼容基线、发布资产、关键防回归规则、文档导航。 | 当前版本、APK 体积、兼容 Android 版本、Release 资产、核心规则发生变化时更新。 | 不写每日流水账，不保留旧版本发布细节，不记录反编译清单和二进制 Manifest 手改脚本。 |
| `DEVELOPMENT_LOG.md` | BUG 根因、修复方式、验证过程、回归注意和历史决策。 | 每次修 BUG、改行为、推翻旧方案、ADB 验证后更新；新记录写到倒序日期小节，同时维护顶部“当前状态总览”。 | 不写工具 PATH 细节，不把原始 APK 清单复制进来。 |
| `APK_INVENTORY.md` | 原始 APK 用途、反编译目录、主题包身份、当前构建产物、Release 资产筛选规则。 | 新增 / 删除 APK、反编译目录变化、主题包身份变化、Release 资产规则变化时更新。 | 不写每天修了什么，不写构建版本号怎么改。 |
| `BUILD_AND_VERSION_NOTES.md` | Windows 构建环境、JDK / SDK / ADB 路径、签名工具、版本号写入点、二进制 Manifest 改法、临时降版测试流程。 | build 脚本、工具路径、签名方式、版本号写法、发版流程或临时降版流程变化时更新。 | 不写功能状态和 BUG 修复原因。 |

联动规则：

- 改版本号或发版：先按 `BUILD_AND_VERSION_NOTES.md` 修改和验证，再同步 README 的当前版本 / 体积 / 兼容基线；如果 Release 资产变化，再同步 `APK_INVENTORY.md`。
- 修 BUG：详细根因和验证写 `DEVELOPMENT_LOG.md`；如果这个 BUG 形成长期防回归规则，再把一句当前规则同步到 README。
- 改主题包、透明主题包或 Release 附加资产：资产身份和筛选规则写 `APK_INVENTORY.md`；README 只写用户该安装哪个文件。
- 文档冲突时：当前运行状态以 `DEVELOPMENT_LOG.md` 顶部“当前状态总览”和最近日期记录为准；最终 APK 版本以 `aapt2 dump badging build\launcher-signed.apk` 为准。

## 当前状态

当前桌面主 APK：

```text
build\launcher-signed.apk
```

当前透明主题兼容包：

```text
build\theme-trans-signed.apk
```

当前测试构建和兼容基线：

```text
versionName: v1.4.9
versionCode: 24
minSdkVersion: 23
targetSdkVersion: 28
Android compatibility: Android 6.0+ (API 23+), including Android 15 / Android 16
launcher APK size: about 50.2 MB
```

当前工作区临时保持 `v1.4.9 / 24` 用于测试“检查更新”能否发现线上 `v1.5.0 / 25` 并覆盖安装。正式发布前必须按 `BUILD_AND_VERSION_NOTES.md` 恢复目标版本，最终以 `aapt2 dump badging build\launcher-signed.apk` 为准。

当前工程保留原版桌面的 `12 / 20 宫格` 方向，不再退回 maintained 的 `9 / 16 宫格` 语义。

## 安装

先安装桌面主 APK：

```bat
adb install -r -d build\launcher-signed.apk
adb shell am start -n com.smartisanos.launcher/.Launcher
```

透明主题是独立主题包，不打进桌面主 APK。需要透明主题时，再安装兼容重签包：

```bat
adb install -r -d build\theme-trans-signed.apk
adb shell pm list packages | findstr com.smartisanos.launcher.theme.trans
```

安装后包名应为：

```text
com.smartisanos.launcher.theme.trans
```

不要给 Android 15 / Android 16 用户安装 `original_apks\com.smartisanos.launcher.theme.trans.apk`。它是原始参考包，`targetSdkVersion=17`，新系统可能拦截旧 target SDK 应用安装；`build\theme-trans-signed.apk` 已调整为 `minSdkVersion=23`、`targetSdkVersion=28`，用于普通 Android、Android 15 和 Android 16。

## 已实现

| 模块 | 当前状态 |
| --- | --- |
| 桌面主体 | 支持独立 APK 启动、桌面虚拟设置入口、12 / 20 宫格、Dock、基础坐标和多分辨率适配。 |
| 桌面设置 | 由 `com.smartisanos.launcher.theme.ThemeChooserActivity` 承载，使用 maintained 风格资源和当前工程兼容逻辑。 |
| 主题 | 支持本地主题、在线主题、主题详情、主题下载、主题设定、主题切换动画、毛玻璃主题和透明主题覆盖状态。 |
| 壁纸 | 支持系统图片选择、私有壁纸副本、缩略图、毛玻璃 / 透明主题壁纸应用和恢复默认壁纸。 |
| 翻页动画 | 支持默认、立体翻转、百叶窗、切牌等动画值；透明主题开启后强制使用默认动画。 |
| 应用图标 | 支持系统原图、图标包 appfilter、redirect、自定义图片、桌面图标大小调节和桌面主图标加载链路。 |
| 应用分身 | 已接入多用户 / 双开应用查询、显示和启动路径，支持为分身应用叠加原版风格面具标记。 |
| 自绘搜索页 | 搜索页由 launcher 内 `ThemeChooserActivity` / `MaintainedLauncherSettingsHost.showSearchPage()` 自绘，不再依赖、下载或构建锤子独立搜索 APK。 |
| 检查更新 | 支持 Gitee Release 版本检查，只识别 `launcher-` 软件标签；下载走系统 `DownloadManager`，Gitee 优先、GitHub 回退，状态栏显示进度，已下载同版本时按钮直接变为“安装”。 |
| 毛玻璃主题 | 已接入原版毛玻璃主题资源，状态栏文字和桌面应用文字按壁纸明暗在默认 / `_light` 资源之间切换。 |
| 透明主题 | 安装 `build\theme-trans-signed.apk` 后可用；透明状态写入 `launcher_grid_theme=1/0`，普通主题仍走 `launcher_theme`。 |

## 当前关键规则

- 搜索页：当前使用 launcher 内 `ThemeChooserActivity` 自绘搜索页，不再下载、构建或发布独立 `SmartisanQuickSearch.apk`。下滑触发只保留 `Launcher.smali` 顶层入口，避免多层重复处理导致误触。
- 检查更新：只识别 `launcher-` 软件 Release 标签，只下载桌面主 APK，跳过透明主题包、主题 APK 和旧 QuickSearch 资产。下载 / 安装走系统 `DownloadManager`，安装 URI 必须来自 `DownloadManager.getUriForDownloadedFile(downloadId)`。
- 已下载更新包：同一 Release `tag` 和 APK 文件名已经下载完成时，“检查更新”按钮应显示“安装”；仍在下载时显示“下载中”；失败或资产变化才重新下载。
- 透明主题：透明状态写 `launcher_grid_theme=1/0`，普通主题仍写 `launcher_theme`。不要把 `smartisan_theme_trans` 当普通主题 ID 写入，也不要送进普通主题切换队列。
- 透明主题切换：开启 / 关闭透明主题要让 Launcher 重新走完整初始化链路。不能只裸 `startActivity()` 或运行时刷新，否则 `O.V()`、`Constants.isTransparentTheme`、`X.va()`、SMEngine 纹理和主题资源容易不同步。
- 设置页闪回桌面防回归：透明主题从设置页触发时不再排延迟 HOME 闹钟；设置页入口必须清理旧 `scheduleLauncherRestart()` requestCode `1001` 的 `AlarmManager` PendingIntent。否则用户刚重新进入桌面设置页，残留 HOME 闹钟会把页面顶回桌面。详细根因和修复见 `DEVELOPMENT_LOG.md` 的 `2026-06-17：更新下载通知与透明主题重启链路回归`。
- 透明 / 毛玻璃主题文字：只有透明主题和毛玻璃主题按壁纸明暗切换状态栏文字和应用文字；普通不透明主题必须继续使用主题自身文字资源。
- 壁纸模糊：只写 `original_launcher_wallpaper_blur_on` 并调用 `Eb.lh()` 让原版引擎重建 `t_blur_background`。不要手动模糊主壁纸 bitmap，也不要把 `t_blur_background` 覆盖回 `background.png`。

## 发布资产

发布到 GitHub Release 和 Gitee Release 时，当前推荐同时上传这些资产：

| 资产 | 用途 |
| --- | --- |
| `build\launcher-signed.apk` | 桌面主 APK。 |
| `build\theme-trans-signed.apk` | 透明主题 Android 15 / Android 16 兼容包，用户需要使用“透明主题”时安装。 |

不要上传 `original_apks\com.smartisanos.launcher.theme.trans.apk` 作为用户安装包；它只作为原始资源参考。

## 透明主题规则

透明主题不是普通主题 ID，也不是毛玻璃主题包。

```text
runtime id:      smartisan_theme_trans
theme package:   com.smartisanos.launcher.theme.trans
install apk:     build\theme-trans-signed.apk
state key:       launcher_grid_theme
normal theme key: launcher_theme
```

注意事项：

- 开启透明主题只写 `launcher_grid_theme=1`，不要把 `smartisan_theme_trans` 写入普通 `launcher_theme`。
- 关闭透明主题写回 `launcher_grid_theme=0`，并恢复之前保存的普通主题。
- 未安装 `com.smartisanos.launcher.theme.trans` 时，设置页不允许开启“透明主题”。
- 透明主题开启后只能使用默认翻页动画，设置页会隐藏“桌面翻页动画”。
- 透明主题壁纸和模糊必须保持原版链路：`background.png` 是主背景纹理，`t_blur_background` 是模糊纹理，不要互相覆盖。

## 待处理

- 透明主题 Dock 区域、毛玻璃背景仍需要继续截图对比，重点看 Dock 半透明层、虚拟导航栏高度和壁纸裁切。
- 应用分身在不同品牌手机上的包名、用户 ID 和启动行为可能不同，还需要 OPPO、vivo、小米、荣耀、模拟器等环境回归。
- 微信分身面具标记已经接入，但面具大小、位置和不同图标尺寸下的观感仍需继续对照原版微调。
- 天气和日历保留了旧 Smartisan 资源与权限线索，但入口、刷新和普通 Android 兼容还没有完整回归。
- 普通 Android 通知角标不能简单等同于“应用有通知就一定显示”，后续需要通知监听或厂商 badge 兼容桥。
- 在线主题 APK 下载后仍依赖用户手动确认安装，普通应用没有静默安装能力。

## 构建

```bat
build.bat
```

构建脚本输出桌面主 APK：

```text
build\launcher-signed.apk
```

透明主题兼容包当前保留为：

```text
build\theme-trans-signed.apk
```

常用验证入口：

```bat
adb shell am start -n com.smartisanos.launcher/.theme.ThemeChooserActivity
adb shell dumpsys activity activities
```

## 主要文件

| 功能 | 文件 / 目录 |
| --- | --- |
| 设置页宿主与功能迁移 | `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java` |
| 设置桥接 | `launcher/tools/java/com/smartisanos/launcher/theme/LauncherSettingBridge.java` |
| 桌面布局尺寸参数 | `launcher/smali/com/smartisanos/launcher/data/Constants.smali` |
| maintained 风格资源 | `launcher/tools/maintained_settings_res/` |
| 设置页原生素材 | `launcher/assets/settings_native/` |
| 图标包扫描 | `launcher/tools/java/com/smartisanos/home/settings/icons/IconPackManager.java` |
| 图标列表和状态管理 | `launcher/tools/java/com/smartisanos/home/settings/icons/IconManager.java` |
| redirect 图标数据层 | `launcher/tools/java/com/smartisanos/launcher/data/redirectIcon/` |
| 开关控件 | `launcher/tools/java/smartisanos/widget/SwitchEx.java` |
| 构建入口 | `build.bat` |
