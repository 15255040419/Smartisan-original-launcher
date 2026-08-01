# MEMORY.md

## 文档职责

本文档用于保存本项目给 Codex / AI Agent 使用的长期记忆。

它只记录长期有效的项目事实、稳定决策、兼容性结论、重要路径、用户明确纠正过的规则和反复踩坑后的结论。

详细修复过程、每日记录、验证日志和历史决策流水，继续记录在 `docs/development/DEVELOPMENT_LOG.md`。

本文档不替代：

* `docs/development/DEVELOPMENT_LOG.md`
* `docs/build/BUILD_GUIDE.md`
* `docs/architecture/APK_STRUCTURE.md`
* `README.md`

---

开发理念

优先恢复。

优先复用。

不要重新设计。

长期规则

不要：

-   重写已有功能。
-   重画已有资源。
-   用普通Android方案替代原版。

## 项目定位

本项目是 Smartisan Launcher 原版桌面的兼容移植和恢复项目。

目标不是重新做一个普通 Android Launcher，而是在普通 Android 设备和现代厂商 ROM 上尽量保留原版 Smartisan Launcher 的交互、视觉、动画和使用体验。

项目当前保留或恢复的核心方向包括：

* 12 / 20 宫格
* Dock
* 文件夹
* 多页桌面管理
* 页面隐藏
* 页面锁定
* 隐私密码
* 桌面设置
* 原版主题
* 透明主题
* 毛玻璃主题
* 壁纸链路
* 翻页动画
* 四指横滑切换主题
* 双指捏合总览 / 编辑状态
* 桌面下滑进入内置搜索
* 动态天气和日历
* 通知角标
* 横扫清除角标
* 在线图标库
* 图标包和自定义图标
* 应用分身和多用户识别
* 解锁动画
* 检查更新机制

本项目不是普通 Gradle-only Android 项目，不能按普通新建 Android App 的方式处理。

---

## 当前可信文档

处理项目问题时，应根据任务阅读这些文档：

```text
AGENTS.md
MEMORY.md
docs/INDEX.md
docs/development/DEVELOPMENT_LOG.md
docs/build/BUILD_GUIDE.md
docs/architecture/APK_STRUCTURE.md
README.md
docs/development/CLEANUP.md
icons/README.md
```

各文档用途：

* `AGENTS.md`：AI 修改项目时必须遵守的施工规则。
* `MEMORY.md`：长期有效项目记忆。
* `docs/development/DEVELOPMENT_LOG.md`：BUG 根因、修复方式、验证过程、回归注意、当前状态总览。
* `docs/build/BUILD_GUIDE.md`：构建工具、PATH、签名流程、版本号写入点、二进制 Manifest 修改方式。
* `docs/architecture/APK_STRUCTURE.md`：原始 APK、反编译目录、主题包身份、构建产物、Release 资产规则。
* `README.md`：面向用户的项目介绍、当前能力和安装说明。
* `docs/development/CLEANUP.md`：可清理候选项，不代表可以直接删除。
* `icons/README.md`：在线图标库命名、图片要求、加载顺序和索引生成规则。

如果文档冲突，优先相信：

1. 最新真机验证结果
2. `docs/development/DEVELOPMENT_LOG.md` 当前状态总览和最新日期记录
3. `MEMORY.md`
4. 专项文档
5. `README.md`

---

## 本地路径记忆

当前主项目常见本地路径：

```text
E:\FANG\smartisan\smartisan-launcher-original-port
```

有时需要参考 maintained 项目：

```text
E:\FANG\smartisan\smartisan-launcher-maintained
```

`smartisan-launcher-maintained` 是参考项目，不是当前构建源码。

适合参考 maintained 的场景：

* maintained 风格设置页
* 设置项 UI
* 普通 Android 兼容实现
* 图标识别策略
* Java helper 实现
* 资源组织方式
* 已验证过的功能思路

不应直接从 maintained 覆盖当前项目的场景：

* 原版 Launcher 核心交互
* 原版动画
* 原版主题切换链路
* 原版文件夹几何
* 原版 12 / 20 宫格布局
* 原版 activeicon 动态天气 / 日历链路
* 原版解锁动画链路
* 原版 Smali 行为

参考 maintained 时，要先判断是否适合当前原版移植方向。

---

## 原版代码和核心目录记忆

原版主 Launcher APK：

```text
original_apks/com.smartisanos.launcher-3.apk
```

当前核心工作目录：

```text
launcher/
```

当前最常用的原版干净参考目录：

```text
clean_launcher/
```

同一 Launcher APK 的 raw apktool 参考目录：

```text
clean_launcher_raw/
```

原始 Launcher APK 的反编译缓存：

```text
build/decompiled_theme_check/com.smartisanos.launcher-3/
```

桌面 / 壁纸相关伴随包：

```text
original_apks/com.smartisanos.desktop-3.apk
decoded_desktop/
build/decompiled_theme_check/com.smartisanos.desktop-3/
```

原版 Smartisan 设置 APK：

```text
original_apks/com.android.settings-100.apk
build/decompiled_theme_check/com.android.settings-100/
```

原版 Smartisan 壁纸提供器：

```text
original_apks/com.smartisanos.wallpaperprovider-100.apk
build/decompiled_theme_check/com.smartisanos.wallpaperprovider-100/
```

透明主题参考包：

```text
original_apks/com.smartisanos.launcher.theme.trans.apk
build/decompiled_theme_check/com.smartisanos.launcher.theme.trans/
```

毛玻璃主题参考包：

```text
original_apks/com.smartisanos.launcher.theme.aero.apk
build/decompiled_theme_check/com.smartisanos.launcher.theme.aero/
```

Glime 同类主题参考包：

```text
original_apks/com.smartisanos.launcher.theme.glime.apk
build/decompiled_theme_check/com.smartisanos.launcher.theme.glime/
```

重要规则：

* `launcher/` 才是当前主 APK 构建源码。
* `build/decompiled_theme_check/` 主要是参考缓存，修改它不会影响主 APK 构建。
* `original_apks/` 是重要原始归档，不建议删除。
* 修原版行为前要先对照 `clean_launcher/` 或 `clean_launcher_raw/`。

---

## 产品方向记忆

必须尽量保留 Smartisan Launcher 原版体验。

兼容性修复不能随意把原版行为替换成普通 Android 行为。

用户可见体验优先于理论正确性。

真实设备日志优先于 AOSP 理论。

如果原版实现和普通 Android 习惯冲突，先分析原版为什么这样做，再决定是否做兼容适配。

不要为了兼容某个 ROM，把原版交互、动画或视觉特征改没。

---

## 构建长期记忆

项目已有构建流程，优先使用仓库根目录下的：

```powershell
.\build.bat
```

`build.bat` 会自动处理：

* maintained 设置资源构建
* launcher 重打包
* 二进制 Manifest 注入
* Java 兼容宿主编译为 `classes2.dex`
* zipalign
* apksigner 签名

构建产物主要包括：

```text
build\launcher-signed.apk
build\launcher-unsigned.apk
build\launcher-aligned.apk
```

`build.bat` 会自己临时设置 `JAVA_HOME` 和 `PATH`，不要依赖当前 PowerShell 全局 PATH。

普通 PowerShell 里直接运行 `java` 失败，不代表 `build.bat` 不能编译。

当前常用 Android SDK 路径：

```text
D:\sdk
```

当前常用 ADB 路径：

```text
D:\sdk\platform-tools\adb.exe
```

最终 APK 不是只看文本：

```text
launcher\AndroidManifest.xml
```

最终注入 APK 的二进制 Manifest 是：

```text
launcher\original\AndroidManifest.xml
```

版本号修改必须同步：

```text
launcher\AndroidManifest.xml
launcher\tools\maintained_settings_res\res\values\strings.xml
launcher\original\AndroidManifest.xml
```

正式改版本推荐使用：

```powershell
python tools/set_launcher_version.py v1.5.3 28
```

最终 APK 元数据以构建后检查为准，不要只看文本 Manifest。

---

## APK 和 Release 记忆

当前主桌面 APK：

```text
build\launcher-signed.apk
```

当前透明主题安装包：

```text
build\theme-trans-signed.apk
```

原始透明主题 APK：

```text
original_apks/com.smartisanos.launcher.theme.trans.apk
```

原始透明主题 APK 只作资源参考，不作为 Android 15 / Android 16 的推荐安装包。

安装顺序：

```text
先安装 build\launcher-signed.apk
再安装 build\theme-trans-signed.apk
```

透明主题包验证命令：

```bat
adb shell pm list packages | findstr com.smartisanos.launcher.theme.trans
```

桌面内“检查更新”只升级桌面主 APK。

Release 资产应优先命名为：

```text
SmartisanLauncher-版本.apk
launcher-signed.apk
```

更新逻辑应跳过：

```text
SmartisanQuickSearch.apk
theme-trans-signed.apk
其他主题 APK
```

更新包下载和安装应走系统 `DownloadManager` 标准链路，不要改回私有文件路径、`file://` 或自建 `PackageInstaller.Session`。

---

## 主题长期记忆

透明主题、毛玻璃主题和普通主题不能混为一谈。

透明主题是一个“包名特定”的主题变体：

```text
resource theme_id: smartisan_theme_aero
launcher runtime id: smartisan_theme_trans
theme package:     com.smartisanos.launcher.theme.trans
apk path:          original_apks/com.smartisanos.launcher.theme.trans.apk
install apk:       build/theme-trans-signed.apk
```

毛玻璃主题包是：

```text
com.smartisanos.launcher.theme.aero
```

透明主题规则：

* 不能把透明主题简单等同于毛玻璃主题。
* `com.smartisanos.launcher.theme.trans.apk` 的内部 `theme_id` 虽然也是 `smartisan_theme_aero`，但包名不同，资源效果不同。
* 当前移植版安装透明主题时使用 `build\theme-trans-signed.apk`。
* 桌面设置里的“透明主题”开关只写入原版透明模式键 `launcher_grid_theme`。
* 开启透明为 `launcher_grid_theme=1`。
* 关闭透明为 `launcher_grid_theme=0`。
* 普通主题 ID 只写入 `launcher_theme`。
* 不要把 `smartisan_theme_trans` 当普通主题 ID 写进 `launcher_theme`。
* 不要把透明主题送进普通主题切换队列。
* 透明主题开启后只允许使用默认翻页动画。
* `readPageAnimation()` / `writePageAnimation()` 会把动画值钳制为 `0`，不要绕过限制。
* 透明主题 Dock 资源已按原始透明主题包回归，不要为了视觉微调手调，除非先重新对照原始 APK 和 `clean_launcher/`。

主题切换长期规则：

* 普通主题和毛玻璃主题必须复用原版 `ThemeItemActivity` 时序：保存主题和来源，向 `ChangeThemeHandler` 提交当前设置页截图，结束设置页并返回 HOME，最后由 `J.onResume()` 消费 `a.r.sj` 中唯一的 `MESSAGE_CHANGE_THEME`。
* maintained 设置宿主不得在设置页前台直接调用 `a.r.a(Message)` 或 `a.r.b(Message)`；这会绕过 Launcher/GL 生命周期门控，可能造成旧毛玻璃背景残留或主题资源卸载崩溃。
* 透明开关不得借当前普通 backing theme 生成 `MESSAGE_CHANGE_THEME`，也不得在 `Launcher.onResume()` 中把合成的 `smartisan_theme_trans` 对象交给 `J.a(theme, message)` 热加载。真机已确认该路径会造成 GL 停止出帧，并可能因 `t_blur_background` / `t_blur_anim_background` 资源状态错配而崩溃。
* 透明覆盖的资源、`Constants` 和 GL 场景必须在新的 Launcher 进程中一次性初始化；透明开关使用独立冷启动路径。`Activity.recreate()` 和杀进程不得作为普通/毛玻璃主题或天气内容更新的公共刷新方案；宫格迁移如需重载必须保持为独立路径。
* 动态天气/日历的“内容更新”和“模式切换”必须区分：天气数据、日期变化使用已有定向更新链；启用/关闭模式会改变 Cell 是否创建 `WeatherView` / `CalendarView` 子节点，必须先完成原版图标数据库刷新，再冷启动重建 Launcher 场景。单独发送 `update_icon` 只能替换位图，不能完成普通节点与动态节点的类型转换。

透明主题切换需要让 Launcher 重新走主题初始化，避免设置页开关已经变了但桌面仍显示上一套资源。

---

## Launcher 行为长期记忆

本项目已经保留或恢复了大量原版行为，包括：

* 单指横滑翻页
* 四指横滑切换主题
* 双指捏合进入 / 退出多页总览或编辑状态
* 桌面下滑进入内置搜索页
* 底部横扫清除通知角标
* 12 / 20 宫格布局
* 页面隐藏
* 页面锁定
* 隐私密码
* 文件夹预览和展开布局
* 原版主题动画
* 透明主题覆盖状态
* 动态天气和日历 activeicon 链路
* 通知角标和文件夹角标汇总
* 应用分身和多用户识别

修改这些行为时，必须优先确认是否会破坏原版交互链路。

不要为了普通 Android 习惯而删除原版逻辑。

四指横滑和双指捏合不是待移植功能，它们已经在当前代码中有实现。后续重点是不同分辨率、触控采样率和厂商 ROM 的真机回归。

---

## 启动与窗口兼容记忆

### 默认桌面设置

Shizuku 默认桌面通道已移除，不能恢复。vivo Android 9 已验证其 Shell 设置在按 Home 后会被厂商 `HOMERECOVERY` 覆盖，无法提供可靠跨 ROM 结果。默认桌面入口只能保留 Android 10+ Role 与系统默认应用设置；不得在启动、恢复、广播或后台任务中自动修改 HOME。

### 桌面备份与恢复

`table_pageinfos.pageIndex` 不是唯一键，也不能假定为非负；原版数据库可含特殊页、预分配空页和相同索引的记录。备份/恢复校验必须以 `_id` 为页表唯一身份，并完整保留 `pageIndex/status/containment`。恢复追加当前新增应用时，应以实际含根级图标的最后一页为基准，不能以页表的预分配容量作为最后页面。备份与恢复只能使用 SAF，恢复继续走既有 `:reload` 首帧确认链；未完成 Android 8–16 多 ROM 真机矩阵前不得声称全机型已验证。

### 关于页使用小技巧

“关于”页不再提供操作日志、文件扫描、录制或分享入口，也不得创建 `operation_logs`。静态“使用小技巧”复用 `setting_follow_view.xml` 的分组标题、间距、颜色和 `setting_item_up` / `more_item_middle` / `setting_item_down` 列表背景，内容只由中英文 strings 资源提供，不添加后台任务或跳转逻辑。

原版 Launcher 的 `LauncherActivityTheme -> @style/Animation` 在二进制资源表中曾引用 Smartisan framework 私有动画资源 `0x010a0177/0x010a0178`。普通 Android framework 不保证存在这些ID；vivo Android 9已确认会在WindowManager窗口布局阶段反复抛`Resources$NotFoundException`，表现为Launcher进程和Surface仍在但屏幕只剩系统壁纸。

当前兼容基线是只把该样式中9个task/wallpaper过渡引用改为`@null`，保持原版“Launcher窗口不做系统Activity过渡”的意图。不得用固定延迟、强制重启、重复`requestRender()`或修改Launcher内部动画掩盖此问题。

`launcher/resources.arsc`是当前构建直接复制的二进制资源表。以后若从原版APK刷新或替换该文件，必须运行：

```powershell
python tools/patch_launcher_window_animation_resources.py launcher/resources.arsc
python tools/patch_launcher_window_animation_resources.py launcher/resources.arsc --check
```

并对最终`build/launcher-signed.apk`执行`aapt2 dump resources`，确认`style/Animation`相关项均为`@null`且包内不再存在`0x010a0177/0x010a0178`。只检查文本`clean_launcher/res/values/styles.xml`不够，因为最终判断以二进制`resources.arsc`为准。

---

## 动态天气和日历记忆

动态天气和日历保留 Smartisan 原版 activeicon 分层和切换回调。

普通状态显示缓存后的静态合成纹理。

更新时临时显示 `WeatherView` / `CalendarView`，动画完成后回写静态纹理并隐藏动态节点。

天气 / 日历内部继续使用原版局部坐标，不随全局图标大小二次缩放。

实时 `WeatherView` / `CalendarView` 保留原版 mode-aware `nc(vm)` 定位和 `useSmallActiveIcon(mode)` 分支。

动态天气 / 日历几何已有定版结论，相关比例和原版 `sq()` 校正逻辑不要随意改成近似值或固定像素。

天气数据源长期结论：

* 中国城市优先使用本地城市库和中国天气网。
* 不应把境外服务作为中国城市首选。
* 境外服务失败时要记录明确失败原因。
* 城市或自动 / 手动模式改变时要清除旧地点温度、天气代码和数据源，避免显示上一城市旧数据。

---

## 图标和资源长期记忆

在线图标仓库和主 Launcher 仓库是分开的。

普通桌面图标尺寸必须区分资源坐标系：当前用户已确认正常的 1080 坐标系保持 12 宫格 `160/205`、20 宫格 `118/152`；1440 坐标系 `values-sw411dp` 使用原版 12 宫格 `192/246`、20 宫格 `138/178`。不得为了统一数值再次把 1440 基线降成 1080 尺寸，也不得解除 `LayoutPropertyAdapter` 的整体放大上限去污染普通桌面。

高分辨率图标不得先生成 1080/低分辨率纹理，再通过 SceneNode scale 放大。默认 APK 图标继续由原版 Drawable 转换和阴影链按适配后的最终 `icon_size_origin/icon_size_with_shadow` 生成；改进版、图标包、在线 PNG 和自定义源从保留的源图直接合成最终物理纹理。Surface 物理像素与 SMEngine 逻辑窗口不一致时，继续使用 `NormalIconRasterSpec.rasterScale` 生成对应物理像素。源素材自身分辨率不足时只能记录限制并回退，不能把插值放大描述为高清。

普通桌面物理纹理的额外 raster 比例只能取渲染 Surface 与 Launcher 逻辑窗口的横向比例 `scaleX`；全面屏的状态栏、导航栏会使 `scaleY` 偏大或偏小，高度比例不得参与图标大小。SMEngine 静态纹理缓存必须按包名/组件/用户、源图哈希、宫格模式、最终尺寸、分辨率、density 和图标比例隔离。普通桌面的 managed 静态源使用当前 Cell 的真实纹理边长从原始源图一次合成；打开文件夹、关闭文件夹预览、动态天气/日历/时钟和特殊黑白链不得被该入口接管。

普通桌面的 managed 静态源不能只把源 PNG 画入最终纹理后依赖素材自带阴影；否则图标包、在线图和改进版素材会因是否烘焙阴影而视觉不一致。正确链路是在最终物理 artwork 上复用原版 `HolographicOutlineHelper` 和当前 dark/light/transparent 阴影常量，再把图标本体覆盖到同一最终纹理。低 alpha 外部像素只从阴影蒙版剔除，不能裁剪或重采样可见图标本体，也不能恢复先生成低分辨率阴影图再放大的旧路径。

在线图标路径规则：

```text
icons/drawable/<packageName>.png
```

图片要求：

* PNG
* 建议 256×256 或 512×512
* 必须保留透明背景
* 文件名必须使用真实应用包名，区分大小写
* 不要使用截图背景、网格或白底
* 单文件不超过 512 KiB
* 边长 48–1024 px

在线图标加载顺序：

1. Gitee 镜像仓库 `Smartisan-original-launcher-download` 的 `master` 分支
2. GitHub `main` 分支镜像
3. 两个镜像都失败时使用应用原图

新增或替换图片后执行：

```powershell
python tools/generate_icon_index.py
```

如果更新同名图片后需要让已下载用户立即刷新，应递增代码中的缓存目录版本，例如：

```text
online_icon_cache_v3 -> online_icon_cache_v4
```

不要发明 `icon_10001.png` 这类占位命名。

图标处理要注意：

* PNG 透明通道
* 真实透明边缘像素
* 图标视觉尺寸
* 居中
* 阴影
* Smartisan 风格一致性
* 图标包 appfilter
* 自定义图标
* redirect
* 系统原图回退
* 在线缓存刷新

不要只改画布尺寸而忽略实际视觉大小。

* **桌面设置按钮（齿轮）的高清逻辑**：桌面设置按钮使用内存合成纹理 `***settingbuttonup***` / `***settingbuttondown***`。不能仅依靠 `SceneNode.setImageName()` 的路径过滤机制来提供高清化；必须在 `Ec.wz()` 使用 `LayoutProperty.setting_button` 逻辑尺寸和 `NormalIconRasterSpec.rasterScale` 缩放合成，否则会产生缩放模糊。

---

## 系统应用识别记忆

不同厂商系统应用包名并不统一。

Launcher 会先确认目标是系统应用或更新后的系统应用，再按包名、Activity 名称和系统应用标签识别：

* 相机
* 相册
* 浏览器
* 联系人
* 短信
* 邮件
* 计算器
* 文件管理
* 指南针
* 录音
* 音乐
* 视频
* 天气
* 便签
* 设置
* 安装器
* SIM 工具包

电话与联系人可能来自同一包，最终按：

```text
桌面标题 > Activity > 包名
```

分流。

第三方同名应用不应套用系统应用映射。

日历和时钟继续使用 Launcher 已有动态日期 / 指针实现，不会被静态在线图片覆盖。

---

## ROM 兼容长期记忆

本项目必须考虑不同 ROM 行为差异。

重点关注：

* ColorOS
* OriginOS
* HyperOS
* One UI
* Android 12+
* Android 15+
* Android 16+
* 默认桌面切换
* 全面屏手势
* Recents / Quickstep
* SystemUI
* PackageManager
* 安装 / 卸载 / 替换广播
* USER_PRESENT
* 锁屏和解锁生命周期
* 通知监听
* 后台限制
* 电池优化
* 应用分身
* 多用户

不要假设某个系统广播、生命周期或权限行为在所有 ROM 上都一致。

原版解锁动画引擎、宫格颜色资源和 `USER_PRESENT` 播放链路均保留在主 Launcher APK。

`SCREEN_OFF` 负责原版锁定预初始化。

解锁触发基线固定为 Git 标签 `V1.5.3` 的 `25d20c4c`。不得重新引入 `UnlockAnimationCoordinator`、generation、播放权 claim 或由动画回调拒绝播放的第二状态机。

当厂商系统因默认 HOME 进程策略跳过广播时，恢复 v1.5.3 的 Launcher 生命周期兜底：确认真实熄屏后，以原始广播时间戳去重，再补发原版 `action_keyguard_on` 与 `USER_PRESENT`。这不是新的全局状态机。

`Eb.update()` 必须保留统一的真实时间差推进；首帧只建立时间基准，不能回退为每帧固定 `Ra.T(20.0f)`，也不能只对解锁动画增加倍率。

---

## 搜索页长期记忆

当前项目使用 Launcher 内自绘搜索页。

桌面下滑只作为进入自绘搜索页的手势入口。

项目不再依赖、下载或构建锤子独立搜索 APK。

不要恢复独立 QuickSearch APK 构建产物，除非明确重新评估并确认需要。

---

## 通知角标长期记忆

通知角标以 Android 有效活动通知数为数据源。

它不保证等于第三方应用私有数据库中的真实未读数。

如果应用未发通知、用户关闭通知或工作资料被系统隔离，Launcher 无法绕过系统限制。

通知监听服务会按包名和 UID 统计有效活动通知，并转换为原版 `com.smartisanos.launcher.new_message` 协议，继续使用原版数字纹理、文件夹汇总和横扫动画。

---

## 文件夹长期记忆

文件夹功能已保留并完成普通 Android 适配。

当前方向：

* 支持拖入 / 拖出
* 关闭预览 4 项以内使用 2×2
* 关闭预览 5–9 项使用 3×3
* 展开状态按原版固定三列摆放
* 主题背景从 `assets/folder_theme_bg/` 读取
* 逻辑使用归一化比例，不依赖某个屏幕的固定像素偏移

不要恢复固定像素、整组缩放、错误页面坐标旁路等已废弃方案。

---

## 清理长期记忆

清理前必须先看：

```text
docs/development/CLEANUP.md
docs/architecture/APK_STRUCTURE.md
```

长期规则：

* `original_apks/` 是重要原始 APK 归档，不建议删除。
* `release/` 是发布产物目录，不建议直接删除。
* `build/decompiled_theme_check/` 是重要反编译参考缓存，不要随意删除。
* `build/` 可以重建，但删除前要确认最新签名 APK 是否已复制到需要的位置。
* `.gitignore` 当前可能忽略 `*.png`，新增 PNG 资源如需提交可能要使用 `git add -f`。
* `tools/` 是顶层工具目录，不建议仅按大小删除。

---

## 用户明确纠正过的规则

* 不要把项目图标命名猜成 `icon_10001.png` 之类编号格式。
* 图标文件名应遵循现有项目规则和真实包名规则。
* 不要把普通 Android Launcher 经验直接套到 Smartisan Launcher 原版逻辑上。
* 不要把透明主题和毛玻璃主题混为一谈。
* 不要只按 AOSP 理论判断厂商 ROM 行为。
* 不要只给零散代码片段，能给完整可替换内容时应直接给完整版本。
* Windows 命令必须区分 CMD 和 PowerShell。
* 真机日志和实际表现优先于理论推断。
* 修改前要知道原版代码在哪里，并优先对照原版实现。
* 有些设置页和兼容逻辑可以参考 `E:\FANG\smartisan\smartisan-launcher-maintained`，但不能无脑覆盖当前原版移植项目。

---

## 更新规则

只有学到长期有效信息时才更新本文档。

应该更新本文档的情况：

* 确认新的 ROM 兼容性结论
* 确认长期有效的 BUG 根因
* 确认新的构建或版本规则
* 用户纠正了 AI 以后必须记住的判断
* 项目架构方向发生变化
* 原版行为和移植行为的取舍形成稳定结论
* maintained 参考项目中有长期可复用的规则被验证适合当前项目

不应该写入本文档的内容：

* 临时任务进度
* 大段日志
* 未验证猜测
* 每日流水
* 一次性命令输出
* 已废弃方案正文
* secret
* password
* token
* API key
* private key
* keystore password

详细修复记录继续写入 `docs/development/DEVELOPMENT_LOG.md`。
