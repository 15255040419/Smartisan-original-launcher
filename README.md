<p align="center">
  <img src="clean_launcher/res/drawable/ic_launcher.png" width="96" alt="锤子桌面图标">
</p>

<h1 align="center">Smartisan Launcher Original Port</h1>

<p align="center">
  原版锤子桌面移植工程，目标是在普通 Android 设备上独立安装、启动和使用，同时尽量保留 Smartisan OS 桌面的宫格、主题、图标、壁纸、搜索和设置体验。
</p>

<p align="center">
  <strong>当前工程：</strong>smartisan-launcher-original-port
  ·
  <strong>主要参考：</strong>smartisan-launcher-maintained
</p>

---

## 项目概览

本项目基于从锤子手机提取的原版桌面 `com.smartisanos.launcher-3.apk`，将原版 Smartisan Launcher 移植为可在普通 Android 环境中运行的独立 APK。

`E:\FANG\smartisan\smartisan-launcher-maintained` 是主要参考项目，用来对照普通 Android 兼容逻辑、设置页结构、搜索页、主题下载、图标识别、图标替换、多用户应用查询和常见交互细节。本工程保留原版桌面的 12 / 20 宫格方向，不直接替换成 maintained 的桌面主体。

## 参考来源

| 类型 | 路径 / 文件 |
| --- | --- |
| 当前工程 | `E:\FANG\smartisan\smartisan-launcher-original-port` |
| maintained 参考工程 | `E:\FANG\smartisan\smartisan-launcher-maintained` |
| 原版桌面 APK | `com.smartisanos.launcher-3.apk` |
| 原生设置 APK | `com.android.settings-100.apk` |
| 原生桌面 / 壁纸相关 APK | `com.smartisanos.desktop-3.apk`、`com.smartisanos.wallpaperprovider-100.apk` |
| 毛玻璃主题 APK | `com.smartisanos.launcher.theme.aero.apk` |

## 当前进度

当前 APK 可以构建、签名、安装和启动，输出文件为：

```text
build\launcher-signed.apk
```

当前兼容安装基线：

```text
minSdkVersion: 23
targetSdkVersion: 28
APK size: about 65.7 MB
```

当前发布版本为 `v1.4.8 (24)`。桌面主体、桌面设置入口、12 / 20 宫格、主题页、壁纸入口、翻页动画页、应用图标页、桌面图标大小、独立内置搜索、检查更新、关于我们、强迫症选项和多个设置开关已经接入。设置页当前由 `com.smartisanos.launcher.theme.ThemeChooserActivity` 承载，内部加载 maintained 风格资源和当前工程的兼容逻辑。

详细开发过程、每天修复了哪些问题、验证记录和历史原因见 [DEVELOPMENT_LOG.md](DEVELOPMENT_LOG.md)。README 只记录当前项目状态，不记录每日流水账。

## 已实现

| 模块 | 状态 | 说明 |
| --- | --- | --- |
| 桌面主体 | 已接入 | 支持独立 APK 启动、桌面虚拟设置入口、12 / 20 宫格、Dock、基础坐标和多分辨率适配。 |
| 桌面设置 | 已接入 | 主入口迁移为 maintained 风格结构，包含桌面主题、桌面壁纸、桌面翻页动画、应用图标、强迫症选项、检查更新、关于我们等入口。 |
| 主题 | 已接入 | 支持本地主题、在线主题、主题详情、主题下载、主题设定、主题切换动画和毛玻璃主题壁纸链路。 |
| 壁纸 | 已接入 | 支持系统图片选择、私有壁纸副本、缩略图、毛玻璃主题壁纸应用和恢复默认壁纸。 |
| 翻页动画 | 已接入 | 支持默认、立体翻转、百叶窗、切牌等常见动画值，并保存兼容配置。 |
| 应用图标 | 已接入 | 支持系统原图、图标包 appfilter、redirect、自定义图片、桌面图标大小调节和桌面主图标加载链路。 |
| 图标识别 | 已接入，继续回归 | 已对照 maintained 调整图标识别逻辑，减少普通应用被识别成应用商店等错误图标的概率，并保留当前项目已有的图标识别能力。 |
| 应用分身 | 已接入，继续回归 | 已接入多用户 / 双开应用查询、显示和启动路径，支持为分身应用叠加原版风格面具标记。 |
| 内置搜索 | 已接入，继续微调 | 搜索 APK 已独立发布为 `SmartisanQuickSearch.apk`，不再打进桌面主包；未安装时“启用下滑搜索”开关会在页面绑定和点击开启时回落关闭并引导从 Gitee 下载，安装后支持桌面图标打开或下滑呼出搜索。 |
| 检查更新 | 已接入 | 支持 Gitee Release 版本检查，只识别 `launcher-` 软件标签，更新包下载有弹窗和状态栏进度，下载完成后启动安装。 |
| 设置开关 | 已接入 | 已接入隐藏虚拟键、隐藏图标名称、解锁动画、角标隐藏、横扫清除角标、下滑搜索等开关。 |
| 毛玻璃主题 | 已接入 | 已接入原版毛玻璃主题包资源，桌面文字和编辑页文字按白色文字效果显示。 |
| 构建签名 | 已接入 | `build.bat` 会完成资源编译、APK 构建、zipalign 和 apksigner 签名。 |

## 待实现

- 天气：当前保留天气权限、资源和旧 Smartisan 天气库，但旧天气接口可能不可用，后续建议优先拉起系统或已安装天气应用。
- 日历：当前保留日历权限和动态图标资源线索，但桌面日期刷新、点击入口和系统日历兼容还未完整回归。
- 通知角标通用化：当前桌面已有旧 Smartisan 未读数广播入口和角标绘制逻辑，但普通 Android 上不能保证微信等应用有通知就自动显示角标；后续需要通知监听或厂商 badge 兼容桥。
- 原生 Smartisan Settings：当前设置页仍由 launcher 包内 `ThemeChooserActivity` 承载 maintained 风格兼容页，还不是完整移植的原生 Smartisan Settings Activity / Fragment。
- 在线主题安装：普通应用不能静默安装主题 APK，下载完成后仍需要用户手动确认安装。
- 包体继续压缩：`theme_preview`、`assets/Textures/1080p`、`settings_maintained/maintained-settings-res.apk` 仍占用较多空间，后续需要逐项替代或合并资源，不能直接删除。内置搜索 APK 已拆分为独立下载资产。

## 已知 BUG / 待回归

- 应用分身在不同品牌手机上的包名、用户 ID 和启动行为可能不同，需要继续用 OPPO、vivo、小米、荣耀、模拟器等环境回归。
- 微信分身面具标记已经接入，但面具大小、位置和不同图标尺寸下的观感仍需要继续对照原版微调。
- MuMu 模拟器存在桌面图标不显示的兼容风险，当前已对 adaptive drawable、图标归一化和跨用户查询 fallback 做兼容，已验证可避免原版分身查询权限异常导致的桌面空白，但仍需要继续实机 / 模拟器回归。
- 图标识别仍可能遇到同名、别名、厂商魔改包名或系统应用名称不一致的问题，需要继续按实际截图补规则。
- 12 / 20 宫格、文件夹、编辑模式、拖拽落点、Dock 动画仍需要更多分辨率和真机回归。
- 透明主题下 Dock 区域、毛玻璃背景、状态栏颜色在部分系统上仍需要继续截图对比。
- 检查更新依赖 Gitee 下载仓库 Release 和 APK 资产，后续每次发布新版本都需要同步提升文本 Manifest、二进制 Manifest 版本，并发布 `launcher-` 标签资产。
- 独立内置搜索当前补入了普通 Android 兼容的 `HanziToPinyin` 兜底类，可避免缺少锤子系统类时启动崩溃；完整拼音转换效果仍可继续增强。

## 构建与安装

```bat
build.bat
adb install -r -d build\launcher-signed.apk
adb shell am start -n com.smartisanos.launcher/.Launcher
```

常用验证入口：

```bat
adb shell am start -n com.smartisanos.launcher/.theme.ThemeChooserActivity
adb shell dumpsys activity activities
```

构建后如果需要清理 `build` 目录，当前只需要保留：

```text
build\launcher-signed.apk
build\launcher-signed.apk.idsig
build\tools
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
