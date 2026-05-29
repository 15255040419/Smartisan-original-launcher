# Smartisan Launcher Original Port

## 项目介绍

本项目基于从锤子手机提取的原版桌面 `com.smartisanos.launcher-3.apk`，目标是把原版锤子桌面移植成可以在普通 Android 设备上独立安装、启动和使用的 APK，同时保留 12 宫格 / 20 宫格、锤子风格桌面设置、主题、壁纸、翻页动画和应用图标体验。

当前主工程是 `smartisan-launcher-original-port`。`E:\FANG\smartisan\smartisan-launcher-maintained` 是主要参考项目，用于对照普通 Android 兼容逻辑、maintained 风格设置页、图标替换链路、主题下载、开关控件和设置项交互；不会直接替换当前工程，也不会把 12 / 20 宫格退回 maintained 的 9 / 16 宫格。

## 参考来源

- 当前工程：`E:\FANG\smartisan\smartisan-launcher-original-port`
- maintained 参考工程：`E:\FANG\smartisan\smartisan-launcher-maintained`
- 锤子手机提取 APK：`com.smartisanos.launcher-3.apk`、`com.android.settings-100.apk`、`com.smartisanos.desktop-3.apk`、`com.smartisanos.wallpaperprovider-100.apk`

## 当前状态

当前 APK 可以构建、签名、安装、启动，并已多次通过 ADB 安装到在线 Android 虚拟机验证：

```bat
build.bat
adb install -r build\launcher-signed.apk
```

最近使用的输出 APK：

```text
build\launcher-signed.apk
```

桌面主体、桌面设置入口、12 / 20 宫格、主题页、壁纸入口、翻页动画页、应用图标页和三个设置开关都已经接入。设置页当前由 `com.smartisanos.launcher.theme.ThemeChooserActivity` 承载，内部加载 maintained 风格资源和当前工程的兼容逻辑。

## 已实现功能

### 桌面主体

- 独立 APK 构建、签名、安装和启动。
- 应用名改为“锤子桌面”，桌面内虚拟设置入口显示为“桌面设置”。
- 补入部分 Smartisan native smali / lib，并绕过普通 Android 缺失 Smartisan 私有 API 导致的启动崩溃。
- 保留 12 宫格 / 20 宫格桌面体验，宫格切换会写入当前 launcher 可读取的配置并触发桌面重载。
- 修正底部 dock 宽度、margin、长屏 / 不同分辨率下的部分坐标和文件夹打开态尺寸。
- 修正桌面主图标加载入口，图标不只在设置页预览里变化，也会进入桌面图标加载链路。

### 桌面设置

- 桌面设置主入口迁移为 maintained 风格结构，包含：桌面主题、桌面壁纸、桌面翻页动画、应用图标。
- 主设置页四个入口使用统一预览框，缩略图比例按 maintained 风格调整。
- 12 宫格 / 20 宫格预览图不再沿用旧 9 / 16 图，改为动态绘制真实 3x4 / 4x5 预览。
- 二级页返回按钮、标题栏、列表项、勾选态、页面背景和部分弹窗已按 maintained 资源迁移。
- maintained 设置资源 APK 和外部 `Resources` 已做缓存，减少点击“桌面主题”等入口时的主线程卡顿。

### 主题

- 桌面主题页支持本地主题和在线主题列表。
- 主题列表点击后进入 maintained 风格详情页，包含手机预览、底部主题圆点、设定 / 下载按钮。
- 支持写入当前主题配置并触发桌面主题刷新。
- 支持在线主题下载，下载源来自 maintained 记录的 GitHub Release 镜像地址。
- 主题切换流程已加入切换动画和主题快照相关处理，避免第一次切换不显示动画的问题。
- **经典黑主题顶底色彩对齐**：彻底修复了 12 宫格 / 20 宫格下经典黑主题的桌面网格背景为原装灰绿色（鸦青）或半透明白蒙版导致与纯黑 Dock 栏色差的问题。全量还原了官方底包 `com.smartisanos.launcher-3.apk` 中纯正的经典黑拟物皮质网格资源，实现顶部网格与底部 Dock 的视觉完美统一。

### 壁纸

- 桌面壁纸入口已接入系统图片选择器。
- 选择图片后通过 `WallpaperManager.setBitmap(...)` 应用系统桌面壁纸。
- 写入 `launcher_wallpaper_uri`，并发送桌面刷新通知。
- 主设置页壁纸缩略图已按 maintained 风格放大并统一放入预览框。

### 翻页动画

- 桌面翻页动画页使用 maintained 风格列表。
- 支持默认、立体翻转、百叶窗、切牌等 maintained 常见动画值。
- 写入 `launcher_page_animation`，同时保存到应用私有配置作为普通 Android 兼容 fallback。
- 选择动画后会直接刷新运行时配置，避免必须杀进程才能看到效果。

### 应用图标

- 应用图标页迁入 maintained 风格的“改进图标 / 图标包”顶部设置项和左右图标选择交互。
- 新增 `IconPackManager`，支持扫描已安装图标包中的 `res/xml/appfilter.xml`。
- 新增 `IconManager`、`RedirectIconDB`、`RedirectIconInfo`，保存每个应用的图标状态。
- 支持系统原图、自动识别改进图标、指定资源图标、从相册选择自定义图片。
- 支持自定义图片裁成方形 PNG，并保存到应用私有目录。
- 图标切换后发送 `com.smartisanos.launcher.update_icon` 并刷新原桌面图标缓存，不再通过杀进程制造“返回桌面”的假刷新。
- 新安装或无 redirect 记录的应用默认保持系统原图，避免相机、图库等被错误自动替换成不合适的旧图标。

### 设置开关

- “隐藏桌面图标名称”已接入读取、写入和桌面即时刷新。
- “解锁动画”已接入读取、写入和原桌面配置刷新。
- “多板块视图快速启用应用”已接入读取、写入和原桌面配置刷新。
- 开关控件改为 maintained 风格自绘控件，支持滑动动画。
- 点击整行或点击滑块本体都会进入同一套保存与通知逻辑，不再出现 UI 变了但配置没写入的问题。
- 普通 Android 无法写入部分 `Settings.System` / `Settings.Global` 时，会使用应用私有配置作为兼容存储。

## 当前仍需继续打磨

- 设置页宿主仍复用 `ThemeChooserActivity`，还不是完整移植的原生 Smartisan `Settings` Activity。
- 部分 Smartisan 私有 framework、系统服务和原生 Settings 依赖仍通过兼容层或 stub 处理，不等同于锤子系统原生环境。
- 在线主题 APK 通过系统 `DownloadManager` 下载，普通应用不能静默安装，下载完成后仍需要用户手动安装主题包。
- 改进版图标链路已经接入，但没有完整内置官方适配库；自动替换主要依赖已安装 icon pack 的 `appfilter.xml`、当前内置映射或用户手动 redirect 记录。
- 壁纸当前使用 Android `WallpaperManager` 应用，Smartisan 原生白雾、毛玻璃、主题联动等效果未完整复刻。
- 12 / 20 宫格、文件夹、编辑模式、拖拽落点、dock 动画在更多分辨率和真机上仍需要继续回归。
- maintained 设置页的像素级细节仍在追齐中，例如个别图标比例、开关动效、页面切换动画和弹窗细节。

## 主要文件

- 设置页宿主与功能迁移：`launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
- 设置桥接：`launcher/tools/java/com/smartisanos/launcher/theme/LauncherSettingBridge.java`
- maintained 风格资源：`launcher/tools/maintained_settings_res/`
- 图标包扫描：`launcher/tools/java/com/smartisanos/home/settings/icons/IconPackManager.java`
- 图标列表和状态管理：`launcher/tools/java/com/smartisanos/home/settings/icons/IconManager.java`
- redirect 图标数据层：`launcher/tools/java/com/smartisanos/launcher/data/redirectIcon/`
- 开关控件：`launcher/tools/java/smartisanos/widget/SwitchEx.java`
- 构建入口：`build.bat`

## 开发记录

详细修复过程、每天修复的 BUG 和功能、验证记录、历史路线说明已经移到 [DEVELOPMENT_LOG.md](DEVELOPMENT_LOG.md)。

注意：`DEVELOPMENT_LOG.md` 是按时间保存的过程记录，早期条目里的“暂未实现 / 后续接入”只代表当时状态；当前状态以本 README 为准。
