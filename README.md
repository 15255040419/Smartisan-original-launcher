<p align="center">
  <img src="clean_launcher/res/drawable/ic_launcher.png" width="96" alt="锤子桌面图标">
</p>

<h1 align="center">Smartisan Launcher Original Port</h1>

<p align="center">
  原版锤子桌面移植工程，用于在普通 Android 设备上独立安装和使用，同时尽量保留 Smartisan OS 桌面的宫格、主题、图标、壁纸、搜索和设置体验。
</p>

---

## 当前状态

当前桌面主 APK：

```text
build\launcher-signed.apk
```

当前透明主题兼容包：

```text
build\theme-trans-signed.apk
```

当前版本和兼容基线：

```text
versionName: v1.4.8
versionCode: 24
minSdkVersion: 23
targetSdkVersion: 28
Android compatibility: Android 6.0+ (API 23+), including Android 15
launcher APK size: about 50.2 MB
```

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

不要给 Android 15 用户安装 `original_apks\com.smartisanos.launcher.theme.trans.apk`。它是原始参考包，`targetSdkVersion=17`，新系统可能拦截旧 target SDK 应用安装；`build\theme-trans-signed.apk` 已调整为 `minSdkVersion=23`、`targetSdkVersion=28`，用于普通 Android 和 Android 15。

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
| 检查更新 | 支持 Gitee Release 版本检查，只识别 `launcher-` 软件标签，下载有弹窗和状态栏进度，完成后启动安装。 |
| 毛玻璃主题 | 已接入原版毛玻璃主题资源，状态栏文字和桌面应用文字按壁纸明暗在默认 / `_light` 资源之间切换。 |
| 透明主题 | 安装 `build\theme-trans-signed.apk` 后可用；透明状态写入 `launcher_grid_theme=1/0`，普通主题仍走 `launcher_theme`。 |

## 最近修复

- 自绘搜索页误触：只保留 `Launcher.smali` 顶层搜索手势入口，移除 `RootView.smali` / `SMGLSurfaceView.smali` 重复触发；搜索手势改为松手确认，并限制单指、起始区域、下滑距离、纵向角度、时长和冷却。
- 搜索页样式：右侧“搜索历史”清除按钮缩小并和标题水平对齐。
- 透明主题位置：主设置页中“透明主题”移动到“强迫症选项”下面。
- 透明主题动画限制：开启透明主题后隐藏“桌面翻页动画”入口，读写翻页动画时钳制为默认动画 `0`。
- 透明 / 毛玻璃主题文字：状态栏文字和桌面应用文字按壁纸明暗切换；浅色壁纸走 `_light` 资源，普通不透明主题仍使用主题自身文字资源。
- 壁纸模糊链路：桌面壁纸模糊开关走原版 `original_launcher_wallpaper_blur_on` 和 `Eb.lh()` 重建 `t_blur_background`，不再手动替换主壁纸 bitmap。
- 文档同步：当前桌面主 APK 约 `50.2MB`；透明主题 Android 15 安装包明确为 `build\theme-trans-signed.apk`。

## 发布资产

发布到 GitHub Release 和 Gitee Release 时，当前推荐同时上传这些资产：

| 资产 | 用途 |
| --- | --- |
| `build\launcher-signed.apk` | 桌面主 APK。 |
| `build\theme-trans-signed.apk` | 透明主题 Android 15 兼容包，用户需要使用“透明主题”时安装。 |

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

## 文档分工

| 文档 | 用途 |
| --- | --- |
| `README.md` | 当前版本能做什么、怎么构建安装、当前注意事项。 |
| `DEVELOPMENT_LOG.md` | 每天修了什么、为什么这么修、历史验证和回归注意。 |
| `APK_INVENTORY.md` | 原始 APK、反编译缓存、透明主题包和参考资源清单；不合并进 README。 |

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
