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

桌面主体、桌面设置入口、12 / 20 宫格、主题页、壁纸入口、翻页动画页、应用图标页、桌面图标大小滑块和三个设置开关都已经接入。设置页当前由 `com.smartisanos.launcher.theme.ThemeChooserActivity` 承载，内部加载 maintained 风格资源和当前工程的兼容逻辑。

最近状态：2026-06-01 重点修复应用图标页，顶部开关复用首页同款 `SettingItemSwitch` / `SwitchEx`，图标包行和开关行组成同一组，单应用图标选择与相册返回改为当前行刷新并保持滚动位置；2026-06-02 新增桌面图标大小滑块，并补齐隐藏虚拟键、角标开关、下滑 / 上滑搜索、检查更新、关闭电池优化和原版风格“关于我们”页面；2026-06-03 发布 `v1.4.1` 搜索页修正版后，继续整理兼容安装、签名和包体瘦身，随后提升到 `v1.4.2`：最低系统版本降到 Android 6.0，纹理资源统一走 `1080p`，删除冗余 `720p` 纹理后 APK 降到约 64MB，并改用 apksigner 输出 v1/v2/v3 签名。详细过程见 [DEVELOPMENT_LOG.md](DEVELOPMENT_LOG.md) 顶部“每日修复记录（倒序）”。

当前兼容安装基线：

```text
minSdkVersion: 23
targetSdkVersion: 28
APK size: about 64 MB after first resource slimming pass
```

## 功能进度

| 模块 | 状态 | 说明 |
| --- | --- | --- |
| 桌面主体 | 已接入 | 独立 APK、应用名、桌面虚拟设置入口、12 / 20 宫格、Dock 和部分坐标适配已完成。 |
| 桌面设置 | 已接入，继续微调 | 主入口迁移为 maintained 风格结构，包含桌面主题、桌面壁纸、桌面翻页动画、应用图标。 |
| 主题 | 已接入，继续回归 | 本地 / 在线主题、详情页、下载按钮、设定流程、经典黑资源修复已接入；首次切换主题的翻页过渡动画已通过冷启动队列和桌面就绪触发修复，仍建议多主题回归。 |
| 壁纸 | 已接入，继续回归 | 系统图片选择、`launcher_wallpaper_uri`、私有壁纸副本、缩略图、gaussian 兜底和恢复默认已接入；毛玻璃 / 白雾使用自定义壁纸，普通主题不透出用户壁纸。 |
| 翻页动画 | 已接入 | 支持默认、立体翻转、百叶窗、切牌等 maintained 常见动画值，并保存兼容配置。 |
| 应用图标 | 已接入 | 支持系统原图、图标包 appfilter、redirect、自定义图片、桌面图标大小调节和桌面主图标加载链路。 |
| 设置开关 | 已接入 | 隐藏图标名称、解锁动画、多板块视图快速启用应用已接入读取、写入和即时刷新；应用图标页的改进版图标开关已复用同款控件。 |
| 内置搜索 | 已接入，继续微调 | 支持设置页开关启用 / 禁用下滑搜索，搜索页使用系统输入法；顶部常用应用支持横向滑动，搜索结果行图标和文字已修正为垂直居中。 |

## 重点修复记录

- 修正桌面主图标加载入口，图标不只在设置页预览里变化，也会进入桌面图标加载链路。
- 应用图标页顶部全局项已对齐 maintained 样式：改进版图标使用首页同款开关，图标包默认显示“不使用图标包”，点击可选择自动选择、不使用或已安装图标包。
- 应用图标页新增“桌面图标大小”行，位于改进版图标和图标包之间；支持 50% - 150% 滑块调节，弹窗内“小 / 中 / 大”可快速跳转三档，保存后回桌面并重启 Launcher，确保 12 / 20 宫格所有图标统一应用新尺寸。
- 应用图标页单应用图标选择改为行级刷新：点击左侧默认图标、右侧推荐/加号图标、自定义相册图标后保持当前位置，不再整页刷新回顶部。
- 内置搜索页去掉自绘 T9 键盘，点击搜索框调用系统输入法；顶部常用应用横向滑动展示，输入关键词后的搜索结果行固定高度并保持图标、文字垂直居中。
- 对照 maintained 的安装兼容和资源结构，已把最终二进制 Manifest 的 `minSdkVersion` 从 29 降到 23、`targetSdkVersion` 调整为 28；`pb.getResolution()` 统一返回 `1080p`，删除 `assets/Textures/720p` 后 APK 从约 106MB 降到约 64MB。
- 构建签名流程已从 `jarsigner` 旧 v1 签名改为 `zipalign -p` 后使用 `apksigner` 输出 v1/v2/v3 签名；这能改善 Android 12 等新系统通过文件管理器安装时直接报“安装失败”的问题。
- 检查更新依赖 GitHub Release 的最新 tag 与当前安装版本对比；如果本机已经安装 `v1.4.1`，而 GitHub 最新 release 也是 `v1.4.1`，就会提示“当前已经是最新版本”。后续功能或兼容修复需要同步提升版本号并发布新 release，例如 `v1.4.2`。
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
- 包体仍有继续压缩空间：`theme_preview` 约 16MB，`assets/Textures/1080p` 约 28MB，内嵌 `settings_maintained/maintained-settings-res.apk` 约 6.6MB；后续需要逐项替代或合并资源，不能直接删除。
- 对照 `smartisan-launcher-maintained`，桌面设置和桌面能力仍需按下面优先级继续移植；“分享此应用给朋友”和“用户体验改进计划”不再作为移植目标。
  - [x] 桌面隐藏虚拟键：优先级最高，key 为 `launcher_hide_navigation_bar`，已接入首页开关并限制只由 Launcher 主界面应用系统 UI flags。
  - [x] 检查更新：已接入当前项目 GitHub Release 检测；存在 APK 资产时提示下载，普通应用更新仍需系统安装确认。
  - [x] 关闭电池优化：优先请求当前包名 `com.smartisanos.launcher` 的电池优化弹窗，系统不允许时回退当前应用详情页。
  - [x] 关于我们：已从信息弹窗改为完整 maintained / 原版锤子风格页面。
  - [x] 紧贴屏幕横扫清除角标：key 为 `launcher_badge_swipe_clean`，已接入 maintained 风格设置页开关。
  - [x] 隐藏图标上的角标：key 为 `launcher_hide_badge`，已接入 maintained 风格设置页开关。
  - [x] 下滑 / 上滑搜索：已修正旧逻辑只认上滑、前三次只提示、依赖缺失 QuickSearch provider 的问题，统一打开本项目内置应用搜索页。
  - [ ] 天气：当前保留天气权限、资源和旧 Smartisan 天气库，但旧天气接口可能不可用，后续建议按 maintained 的方向优先拉起系统 / 已安装天气应用。
  - [ ] 日历：当前保留日历权限和动态图标资源线索，但桌面日期刷新、点击入口和系统日历兼容还未单独回归。
- 提醒角标底层存在 `launcher_hide_badge`、`launcher_badge_swipe_clean` 和 badge 读取 / 刷新痕迹，若应用或系统提供旧 Smartisan / 厂商未读数广播则有机会显示；普通 Android 通知角标仍需要额外通知监听或 badge 兼容桥，当前不能保证所有应用通知都会显示桌面角标。
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
| 桌面布局尺寸参数 | `launcher/smali/com/smartisanos/launcher/data/Constants.smali` |
| maintained 风格资源 | `launcher/tools/maintained_settings_res/` |
| 设置页原生素材 | `launcher/assets/settings_native/` |
| 图标包扫描 | `launcher/tools/java/com/smartisanos/home/settings/icons/IconPackManager.java` |
| 图标列表和状态管理 | `launcher/tools/java/com/smartisanos/home/settings/icons/IconManager.java` |
| redirect 图标数据层 | `launcher/tools/java/com/smartisanos/launcher/data/redirectIcon/` |
| 开关控件 | `launcher/tools/java/smartisanos/widget/SwitchEx.java` |
| 构建入口 | `build.bat` |

## 开发记录

详细修复过程、每天修复的 BUG 和功能、验证记录、历史路线说明已经移到 [DEVELOPMENT_LOG.md](DEVELOPMENT_LOG.md)。

`DEVELOPMENT_LOG.md` 顶部维护当前状态和按日期倒序的每日修复记录；后面的历史归档保留旧记录原文，日期和标题不作为最新日志顺序。当前状态以本 README 和日志顶部总览为准。
