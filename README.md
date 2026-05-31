<p align="center">
  <img src="clean_launcher/res/drawable/ic_launcher.png" width="96" alt="锤子桌面图标">
</p>

<h1 align="center">Smartisan Launcher Original Port</h1>

<p align="center">
  原版锤子桌面移植工程，目标是在普通 Android 设备上独立安装、启动和使用，同时保留 12 / 20 宫格、主题、壁纸、翻页动画和应用图标体验。
</p>

<p align="center">
  <strong>当前工程：</strong>smartisan-launcher-original-port
  ·
  <strong>主要参考：</strong>smartisan-launcher-maintained
</p>

---

## 项目概览

本项目基于从锤子手机提取的原版桌面 `com.smartisanos.launcher-3.apk`，把原版 Smartisan Launcher 移植为可在普通 Android 环境中运行的独立 APK。

`E:\FANG\smartisan\smartisan-launcher-maintained` 是主要参考项目，用于对照普通 Android 兼容逻辑、maintained 风格设置页、图标替换链路、主题下载、开关控件和设置项交互。本工程不会直接替换为 maintained，也不会把 12 / 20 宫格退回 maintained 的 9 / 16 宫格。

## 参考来源

| 类型 | 路径 / 文件 |
| --- | --- |
| 当前工程 | `E:\FANG\smartisan\smartisan-launcher-original-port` |
| maintained 参考工程 | `E:\FANG\smartisan\smartisan-launcher-maintained` |
| 原版桌面 APK | `com.smartisanos.launcher-3.apk` |
| 原生设置 APK | `com.android.settings-100.apk` |
| 原生桌面 / 壁纸相关 APK | `com.smartisanos.desktop-3.apk`、`com.smartisanos.wallpaperprovider-100.apk` |

## 当前状态

当前 APK 可以构建、签名、安装和启动，并已多次通过 ADB 安装到在线 Android 虚拟机验证。

```bat
build.bat
adb install -r build\launcher-signed.apk
```

最近使用的输出 APK：

```text
build\launcher-signed.apk
```

桌面主体、桌面设置入口、12 / 20 宫格、主题页、壁纸入口、翻页动画页、应用图标页和三个设置开关都已经接入。设置页当前由 `com.smartisanos.launcher.theme.ThemeChooserActivity` 承载，内部加载 maintained 风格资源和当前工程的兼容逻辑。

2026-05-31 后，已修正设置页启动任务栈，`ThemeChooserActivity` 与 `Launcher` 保持在同一个 launcher 任务中，避免主题设定后在“设置页 / 桌面”之间来回闪动；同时补齐首次切换主题时的过渡动画触发链路、透明主题壁纸选择即时刷新和“恢复默认壁纸”回到主题内置背景。

## 功能进度

| 模块 | 状态 | 说明 |
| --- | --- | --- |
| 桌面主体 | 已接入 | 独立 APK、应用名、桌面虚拟设置入口、12 / 20 宫格、Dock 和部分坐标适配已完成。 |
| 桌面设置 | 已接入，继续微调 | 主入口迁移为 maintained 风格结构，包含桌面主题、桌面壁纸、桌面翻页动画、应用图标。 |
| 主题 | 已接入，继续回归 | 本地 / 在线主题、详情页、下载按钮、设定流程、经典黑资源修复已接入；首次切换主题的翻页过渡动画已通过冷启动队列和桌面就绪触发修复，仍建议多主题回归。 |
| 壁纸 | 已接入，继续回归 | 系统图片选择、`launcher_wallpaper_uri`、私有壁纸副本、缩略图、gaussian 兜底和恢复默认已接入；毛玻璃 / 白雾使用自定义壁纸，普通主题不透出用户壁纸。 |
| 翻页动画 | 已接入 | 支持默认、立体翻转、百叶窗、切牌等 maintained 常见动画值，并保存兼容配置。 |
| 应用图标 | 已接入 | 支持系统原图、图标包 appfilter、redirect、自定义图片和桌面主图标加载链路。 |
| 设置开关 | 已接入 | 隐藏图标名称、解锁动画、多板块视图快速启用应用已接入读取、写入和即时刷新。 |

## 重点修复记录

- 修正桌面主图标加载入口，图标不只在设置页预览里变化，也会进入桌面图标加载链路。
- 主设置页入口缩略图继续对齐 maintained 风格：桌面主题 / 桌面壁纸 / 桌面翻页动画使用统一竖向预览图，应用图标不再额外加白色外框。
- 12 / 20 宫格预览图已替换为当前工程专用资源，不再沿用 maintained 的旧 9 / 16 宫格含义。
- 主题切换流程已加入切换动画、主题快照和冷启动队列处理，修复第一次切换主题不显示翻页过渡动画的问题；主题设定后由桌面直接承接动画，避免设置页短暂闪回。
- 经典黑主题顶底色彩对齐：已恢复官方底包 `com.smartisanos.launcher-3.apk` 中 12 / 20 宫格经典黑拟物皮质网格资源，修复顶部网格与底部 Dock 的色差问题。
- 普通不透明主题切换时不再把用户壁纸作为桌面背景传入，避免所有主题都透出系统壁纸。
- 毛玻璃、白雾等透明主题的壁纸读取路径已接到当前 launcher 壁纸；恢复默认壁纸会清掉自定义副本并回到当前主题内置背景。

## 当前待回归 / 待修复

- 首次主题切换动画：当前已修复主链路，仍建议继续用多主题、多次清数据冷启动做回归。
- 透明主题换壁纸：当前已修复选择壁纸、即时刷新和恢复默认主链路，仍建议继续对毛玻璃 / 白雾分别回归。
- 白雾主题显示异常还没有最终确认修复。
- 透明主题下 Dock 区域是否还有旧层残留、偏移或未清理干净，需要继续截图对比 maintained。
- 设置页宿主仍复用 `ThemeChooserActivity`，还不是完整移植的原生 Smartisan `Settings` Activity。
- 在线主题 APK 通过系统 `DownloadManager` 下载，普通应用不能静默安装，下载完成后仍需要用户手动安装主题包。
- 12 / 20 宫格、文件夹、编辑模式、拖拽落点、Dock 动画在更多分辨率和真机上仍需要继续回归。

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

## 主要文件

| 功能 | 文件 / 目录 |
| --- | --- |
| 设置页宿主与功能迁移 | `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java` |
| 设置桥接 | `launcher/tools/java/com/smartisanos/launcher/theme/LauncherSettingBridge.java` |
| maintained 风格资源 | `launcher/tools/maintained_settings_res/` |
| 设置页原生素材 | `launcher/assets/settings_native/` |
| 图标包扫描 | `launcher/tools/java/com/smartisanos/home/settings/icons/IconPackManager.java` |
| 图标列表和状态管理 | `launcher/tools/java/com/smartisanos/home/settings/icons/IconManager.java` |
| redirect 图标数据层 | `launcher/tools/java/com/smartisanos/launcher/data/redirectIcon/` |
| 开关控件 | `launcher/tools/java/smartisanos/widget/SwitchEx.java` |
| 构建入口 | `build.bat` |

## 开发记录

详细修复过程、每天修复的 BUG 和功能、验证记录、历史路线说明已经移到 [DEVELOPMENT_LOG.md](DEVELOPMENT_LOG.md)。

`DEVELOPMENT_LOG.md` 顶部已经整理出当前完成项、待回归项和倒序时间线；后面的历史原文里，“暂未实现 / 后续接入”只代表当时状态。当前状态以本 README 和日志顶部总览为准。
