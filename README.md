# Smartisan Launcher Original Port

## 项目目标

本项目基于从锤子手机提取的原版桌面 `com.smartisanos.launcher-3.apk`，目标是让它能作为一个独立 APK 安装到普通 Android 手机上使用，同时保留原版桌面的 12 宫格 / 20 宫格体验。

最终目标不是做一个临时弹窗设置入口，而是移植 `E:\FANG\smartisan\smartisan-launcher-maintained` 那种完整设置页能力，并把其中的 9 / 16 宫格逻辑替换为本项目的 12 / 20 宫格逻辑。

## 参考来源

- 当前工程：`E:\FANG\smartisan\smartisan-launcher-original-port`
- 官方独立桌面参考：`E:\FANG\smartisan\smartisan-launcher-maintained`
- 锤子手机提取 APK：
  - `com.android.settings-100.apk`
  - `com.smartisanos.desktop-3.apk`
  - `com.smartisanos.wallpaperprovider-100.apk`

`smartisan-launcher-maintained` 只能作为设置页、适配逻辑、主题/动画设置实现的参考，不要直接切换到它作为主工程。它原生只有 9 宫格 / 16 宫格，不满足本项目核心需求。

## 当前真实状态

当前 APK 已经可以构建、签名、安装并启动：

```bat
build.bat
adb install -r build\launcher-signed.apk
```

最近一次已验证输出：

```text
E:\FANG\smartisan\smartisan-launcher-original-port\build\launcher-signed.apk
```

已经做过的适配：

- 补入/修复了运行所需的部分 Smartisan native smali / lib。
- 绕过了部分普通 Android 系统缺失 Smartisan 私有 API 导致的崩溃。
- 默认宫格方向已经偏向 12 宫格 / 20 宫格。
- 拖动图标闪退问题此前已处理过。
- 当前工程可以通过 `build.bat` 重新打包签名。
- 临时 `LauncherSettingsDialog` 已移除。
- 已复用 Manifest 里原本声明过的 `com.smartisanos.launcher.theme.ThemeChooserActivity` 作为设置页宿主，先做出可启动的设置页闭环。
- 设置页入口方向已修正：不要复用编辑/总览底部齿轮。底部齿轮必须保留原版编辑/总览功能。
- 已在应用查询层补入一个桌面“设置”虚拟图标，点击目标为 `com.smartisanos.launcher.theme.ThemeChooserActivity` 设置页宿主。
- `Constants.initDockSize(I)` 已改为使用运行时 `Constants.window_width` 覆盖 `dock_width`，避免底部区域继续按旧固定宽度计算。
- `Constants.setPhysicalScreenSize(Context)` 的大屏分支已改为标准 `Display.getRealMetrics()`，不再依赖 Smartisan 私有 `DisplaySmtEx.getSmRealMetrics()`。
- `Constants.initDockSize(I)` 覆盖 `dock_width` 后同步把 `dock_margin_left/right` 归零，避免出现 `window_width - oldMargin - newDockWidth` 得到负 margin。
- 文件夹打开态已缩小：调整 `MODE_9/layout.xml` 中的 `folder_bookcase_*`、`icon_size_with_shadow_folder`、folder 文本字号和标题范围。当前虚拟机实际命中 `layout/portrait/values-sw411dp/MODE_9/layout.xml`，同类 1080 资源目录也已同步收小。

## 当前设置页状态

目前设置页是第一阶段宿主，不是最终完整 maintained 设置页。

已完成：

- `ThemeChooserActivity` 改成程序化设置页列表，避免新增 Activity 时受二进制 Manifest 限制。
- 当前设置项包括：桌面宫格、页面翻页动画、主题设置、图标设置、隐藏导航栏、关于桌面。
- 桌面宫格项可以打开 12 / 20 宫格选择。
- 选择 12 宫格会写入 page mode `0x0c`。
- 选择 20 宫格会写入 page mode `0x09`，该模式在本项目中已经被映射到 20 宫格数据。

待完成：

- 后续把当前“设置”虚拟图标的图标资源进一步替换为 maintained 同款 launcher settings 图标。
- 把 maintained 中设置页的完整视觉结构和子页面逐项移植过来。
- 页面翻页动画、主题设置、图标设置、隐藏导航栏目前只是占位入口。
- 设置页后续应尽量减少 AlertDialog，用完整 Activity / 子页面承载复杂设置。

## 当前风险

- `ThemeChooserActivity` 原本是主题选择页，现在临时作为设置页宿主。后续如果恢复原主题选择功能，要把主题入口移到设置页子页面中，不要直接覆盖这个宿主。
- 当前构建仍依赖 `launcher/original/AndroidManifest.xml` 的二进制 Manifest 注入，文本 Manifest 修改不会自动生效。
- 底部桌面 / 编辑模式交互已按原始 `com.smartisanos.launcher-3.apk` 恢复。关键修复是把 `launcher/smali/com/smartisanos/launcher/view/x.1.smali` 的 dock / 编辑坐标算法恢复为原版逻辑，避免此前用 `window_width / n` 等分屏宽导致齿轮遮挡 dock 图标、拖拽落点错位。
- 底部按钮组的重点计算点已经确认在 `launcher/smali/com/smartisanos/launcher/view/x.1.smali` 的 `sx()`、`b(V)`、`l(II)` 等方法里，尤其是 `dock_delete_btn_width`、`dock_create_folder_width`、`dock_*_margin_left` 这一组。
- 当前设置页用程序化 View，尚未合并 maintained 的 `res/layout` 和样式资源。
- 当前截图中的问题已经确认不是单个底部图标坐标，而是 12/20 主题资源、`window_width/window_height`、`LayoutProperty` 与启动动画共用的运行时坐标基准问题。

## 不要做的事

- 不要继续扩展临时 `LauncherSettingsDialog`。
- 不要把编辑/总览底部齿轮改成设置页入口。这个齿轮属于原版桌面的编辑/选择功能，必须保持原用途。
- 不要只修某一个底部按钮。底部齿轮、排序/切换、主题/颜色、确认等按钮是一组，应按同一套 720P / 1080P / 其他宽度自适应规则处理。
- 不要把底部错位修成某个固定分辨率，例如 720 / 1080 / 1440。
- 不要直接用 `smartisan-launcher-maintained` 替换当前工程。
- 不要随意重新解包覆盖 `launcher/` 目录。当前 `launcher/` 里有大量已修补 smali，如果要重新解包，必须先备份并逐项迁移现有补丁。
- 不要改变原版 12 / 20 宫格图标大小。用户明确要求保留原本比例。

## 底部错位的正确方向

截图中的问题不是单纯图标大小问题，而是桌面主题资源和运行时坐标基准没有完全统一。底部错位只是其中一个表现。表现为：

- 底部齿轮偏左，不在屏幕中心。
- 右侧底部图标露出一部分，被屏幕边缘裁切。
- 进入桌面加载动画也可能偏左。
- 写死 `dock_width=1080` 后仍不能完整解决，而且无法适配其他分辨率。
- 12/20 桌面页、dock、启动动画都依赖同一套 `window_width/window_height` 和 `LayoutProperty`，所以不能只改某一个 View 的 X/Y。

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
