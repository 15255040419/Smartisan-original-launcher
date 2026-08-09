# LAUNCHER_FIX_AND_OPTIMIZATION_PLAN.md

# Smartisan Launcher Original Port
## 原版代码复用、BUG 修复与性能优化专项计划

## 1. 文档用途

本计划用于分阶段处理：

- Launcher 启动和返回桌面速度
- 重载时闪回系统壁纸
- 12/20 宫格
- 透明主题和普通主题
- 动态天气/日历
- 壁纸处理
- 图标加载
- 应用安装、更新、卸载
- 角标
- 应用分身和多用户

每次任务只执行用户指定阶段或第一个未完成阶段，不要一次修改所有模块。

开始每个阶段前：

1. 阅读 `AGENTS.md`
2. 阅读 `MEMORY.md`
3. 阅读 `DEVELOPMENT_LOG.md` 最新状态
4. 阅读本计划对应章节
5. 检查工作区未提交修改
6. 先调查原版链路，再修改当前代码

---

# 2. 总体目标

最终结构必须是：

```text
当前设置页 UI
→ 原版 Smartisan Settings 行为语义
→ 原版 Launcher 配置/事件
→ 原版数据库
→ 原版 PageView / ActiveIcon / Theme / SMEngine
→ 最小普通 Android 兼容
```

需要逐步淘汰：

```text
设置页 Java helper
→ 反射调用多个用途不明的方法
→ 多次固定延迟刷新
→ 杀进程
→ Alarm 重启 Launcher
```

---

# 3. 代码参考顺序

## 3.1 原版 Smartisan Settings

```text
build/decompiled_theme_check/com.android.settings-100/
```

用于确认原版设置操作：

- 点击回调
- 写入键值
- Provider
- 广播
- Intent
- Loading
- 返回 Launcher 顺序

重点入口：

```text
smali_classes2/com/android/settings/widget/LauncherPreview.smali
smali_classes2/com/android/settings/widget/LauncherPreview$Callback.smali
smali/com/android/settings/AppIconsSettingsFragment.smali
smali/com/android/settings/AppIconsSettingsFragment$4.smali
```

以下是当前补写兼容控件，不是原版行为依据：

```text
launcher/tools/java/com/android/settings/widget/LauncherPreview.java
```

## 3.2 原版 Launcher

```text
clean_launcher_raw/
```

用于确认原版生命周期、配置读取、数据库迁移、PageView、主题、ActiveIcon、安装事件和 SMEngine。

## 3.3 已有兼容

```text
clean_launcher/
```

用于确认已经完成的普通 Android 兼容。

## 3.4 当前修改目标

```text
launcher/
```

最终修复必须落在这里。

## 3.5 maintained

```text
E:\FANG\smartisan\smartisan-launcher-maintained
```

只参考 UI 和公开 API 兼容，不替换原版核心。

---

# 4. 修改前必须建立原版链路记录

创建：

```text
docs/development/ORIGINAL_BEHAVIOR_REFERENCE.md
```

每个核心功能按以下格式记录：

```markdown
## 功能名称

### 原版 Settings
- 文件：
- 方法：
- 点击值：
- 写入键：
- Provider/广播/Intent：
- Loading/返回流程：

### 原版 Launcher 接收
- 文件：
- 方法：
- 线程：

### 原版数据库
- 文件：
- 方法：
- 完成条件：

### 原版场景
- 文件：
- 方法：
- 渲染线程：
- 更新节点：

### 当前差异
- 新增代码：
- 被替换的原版行为：
- 固定延迟：
- 是否杀进程：
- 是否重复刷新：

### 最小修复
- 复用方法：
- 必需兼容：
- 修改文件：
```

没有完成对应链路调查，不直接重写核心功能。

---

# 5. 阶段 0：启动基线和诊断

状态：已完成（2026-07-15）。诊断实现和实测基线见
`docs/development/LAUNCHER_STARTUP_BASELINE.md`，原版链路见
`docs/development/ORIGINAL_BEHAVIOR_REFERENCE.md`。

## 目标

先测量，再优化。本阶段不改变功能。

## 参考

```text
clean_launcher_raw/smali/com/smartisanos/launcher/Launcher.smali
clean_launcher_raw/smali/com/smartisanos/launcher/J.smali

clean_launcher/smali/com/smartisanos/launcher/Launcher.smali
clean_launcher/smali/com/smartisanos/launcher/J.smali

launcher/smali/com/smartisanos/launcher/Launcher.smali
launcher/smali/com/smartisanos/launcher/J.smali
```

## 修改

增加可关闭的轻量日志：

```text
LAUNCH_ONCREATE_BEGIN
LAUNCH_ORIGINAL_INIT_BEGIN
LAUNCH_ORIGINAL_INIT_END
LAUNCH_MODEL_READY
LAUNCH_PAGE_READY
LAUNCH_SURFACE_READY
LAUNCH_FIRST_FRAME
LAUNCH_DEFERRED_TASKS_BEGIN
LAUNCH_DEFERRED_TASKS_END
```

记录：

- `elapsedRealtime`
- PID
- 线程
- Activity 实例
- 宫格
- 普通主题
- 透明模式
- 动态图标
- 图标包
- 角标

不得逐帧或逐图标写日志。

## 测试

- 首次安装启动
- 第二次冷启动
- HOME 返回
- 最近任务返回
- 锁屏解锁
- 熄屏点亮
- 进程回收后启动

输出基线：

- `onCreate → first frame`
- 原版初始化耗时
- 模型耗时
- 首屏绑定耗时
- SMEngine 首帧
- `onResume` 兼容任务耗时

---

# 6. 阶段 1：Launcher 启动和返回桌面

状态：已完成（2026-07-15）。首帧后兼容任务、窗口状态缓存和实测结果见
`docs/development/LAUNCHER_STARTUP_BASELINE.md`；阶段 2 已完成，阶段 3 为下一个未完成阶段。

## 目标

首帧只执行原版必要初始化，其他任务首帧后按需执行。

## 当前目标

```text
launcher/smali/com/smartisanos/launcher/Launcher.smali
launcher/smali/com/smartisanos/launcher/J.smali
launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java
```

搜索：

```powershell
rg -n "stabilizeLauncherResume|showPendingLauncherReloadLoading|applyLauncherNavigationBarSetting|maybeRefreshLauncherWallpaper|BadgeBridge\.replay|WeatherBridge\.onLauncherResume" launcher
```

## 修改步骤

恢复顺序：

```text
super.onCreate
→ 廉价且必要的窗口设置
→ 原版 J.b(Activity)
→ Page/Surface ready
→ 第一帧
→ 延后兼容任务
```

拆分 `stabilizeLauncherResume()`：

```text
applyProcessCompatOnce()
applyNavigationBarIfChanged()
applyBadgeIfDirty()
completePendingReloadAfterFirstFrame()
```

删除普通启动中的多次补帧。

缓存导航栏状态：

```text
lastWindowToken
lastHideNavigationBar
lastSystemUiVisibility
lastNavigationBarColor
```

首帧后再安排：

- 天气
- 角标
- 图标包
- 在线图标
- Profile
- 设置资源
- 检查更新

每项先判断开关、dirty、缓存和重复任务。

## 验收

- 原版 `J.b()` 和场景初始化不被跳过
- 首帧前无网络、定位、全应用扫描和大图处理
- 重复 `requestLayout/invalidate/requestRender` 明显减少
- 不以关闭原版动画换取速度

---

# 7. 阶段 2：天气和角标的恢复开销

状态：已完成（2026-07-15）。天气关闭态、组件缓存、定位权限边界和角标增量同步已实现；
构建、签名、覆盖安装及关闭态冷启动/三次恢复验证通过。通知访问开启后的实体机角标回归仍保留为风险项。

## 天气参考

```text
build/decompiled_theme_check/com.android.settings-100/
smali/com/android/settings/AppIconsSettingsFragment.smali

build/decompiled_theme_check/com.android.settings-100/
smali/com/android/settings/AppIconsSettingsFragment$4.smali

launcher/tools/java/com/smartisanos/launcher/theme/WeatherBridge.java
launcher/tools/java/com/smartisanos/launcher/theme/LauncherSettingBridge.java
```

## 天气修改

`WeatherBridge.onLauncherResume()` 第一层判断：

```java
if (!LauncherSettingBridge.dynamicWeatherCalendarEnabled(activity)) {
    return;
}
```

关闭时不得：

- 扫描天气应用
- 加载应用 Label
- 请求定位
- 安排周期任务
- 联网

缓存天气组件，以下事件才失效：

```text
PACKAGE_ADDED
PACKAGE_REMOVED
PACKAGE_REPLACED
PACKAGE_CHANGED
Profile 变化
分身变化
```

定位权限只在用户进入天气设置、开启自动定位或主动刷新时申请。

周期任务每次执行前重新检查开关，关闭后停止续约。

## 角标参考

```text
clean_launcher_raw/smali/com/smartisanos/launcher/
launcher/tools/java/com/smartisanos/launcher/badge/
```

搜索：

```powershell
rg -n "badge|Badge|SHOW_MESSAGE_FLAG|EFFECT_REMOVE_BADGE" clean_launcher_raw\smali\com\smartisanos\launcher
```

## 角标修改

只保留一个 `BadgeBridge.replay()` 生命周期入口。

以下情况直接返回：

- 角标关闭
- 无通知访问权限
- 服务已同步
- 通知版本未变化

只更新受影响节点，不重复全量数据库和场景刷新。

## 验收

- 关闭动态图标后恢复桌面不扫描天气应用
- 普通 Launcher 启动不弹定位权限
- 每次 resume 角标只同步一次
- 无多次延迟全量刷新

---

# 8. 阶段 3：12/20 宫格配置和原版迁移

状态：核心实现完成，完整回归待最终验证（2026-07-15）。已确认私有配置优先、原版模式映射和
`N.d + F.i` 数据库链；12→20 已成功，模式相同时直接跳过，未修改数据库结构或原版迁移算法。
阶段 3 的最终回归集中保留：20→12 且板块超过 12 个图标、文件夹、隐藏板块、加密板块、连续切换和设备重启保持。

## 原版 Settings

```text
build/decompiled_theme_check/com.android.settings-100/
smali_classes2/com/android/settings/widget/LauncherPreview.smali

build/decompiled_theme_check/com.android.settings-100/
smali_classes2/com/android/settings/widget/LauncherPreview$Callback.smali
```

查找真实 Callback：

```powershell
rg -n "onLauncherTypeChanged|onLauncherModeChanged|LauncherPreview\$Callback|launcher_mode|launcher_multi_block_mode" `
  build\decompiled_theme_check\com.android.settings-100
```

确认点击值、写入键、确认框、Provider 和重载流程。

## 原版 Launcher

```text
clean_launcher_raw/smali/com/smartisanos/launcher/ua.1.smali
clean_launcher_raw/smali/com/smartisanos/launcher/data/N.smali
clean_launcher_raw/smali/com/smartisanos/launcher/data/F.smali
clean_launcher_raw/smali/com/smartisanos/launcher/data/A.smali
clean_launcher_raw/smali/com/smartisanos/launcher/data/O.smali
```

对照相同路径：

```text
clean_launcher/
launcher/
```

## 当前目标

```text
launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java
```

方法：

```text
confirmLauncherMode()
saveLauncherMode()
writeLauncherModePref()
pageModeForLauncherCellCount()
migrateLauncherModeAndRestart()
restartLauncherAfterGridMigration()
```

## 修改步骤

```text
读取当前模式
→ 将 12/20 写入私有 SharedPreferences
→ commit 成功
→ 有权限时镜像 Settings.Global
→ DatabaseHandler worker 执行 N.d + F.i
→ 等待数据库完成
→ Launcher 重新读取配置和页面
→ 等待真实第一帧
→ 关闭设置页
```

私有配置：

```text
prefs: com.smartisanos.launcher_prefs
key: prefs_key_launcher_mode
value: 12 / 20
```

必须保留：

```text
N.d(context, newPageMode)
F.i(oldPageMode, newPageMode)
```

不得重写 12→20、20→12、隐藏/加密板块、图标顺序和文件夹数据。

## PageView 验证

```powershell
rg -n '\.source "PageView.java"|\.source "Cell.java"|switchPageMode|handleSettingsChange|initPageLocation' `
  clean_launcher_raw\smali\com\smartisanos\launcher
```

验证重新建立：

- 行列数
- 单板块容量
- Cell
- Dock
- 文件夹
- 隐藏/加密板块
- 当前页

## 验收

- 12→20 保留原板块和顺序
- 20→12 只由原版 `F.i()` 拆分
- 重启后模式不丢失
- 主存储不依赖系统写权限
- 宫格迁移完成后交给阶段 4 冷重载协调器；宫格业务本身不得直接杀进程

---

# 9. 阶段 4：统一重载与闪回系统壁纸

状态：核心实现完成，完整回归待最终验证（2026-07-15）。独立 `:reload` 不透明过渡页、原版 Smartisan
LoadingUI、旧主进程 PID 精确终止、新 Launcher 真实首帧 token 握手均已验证；没有 Alarm 延迟重启或新增固定成功延迟，未发现新的 Java/native 崩溃。
`:reload` Activity 结束后暂时作为 cached 进程存在属正常系统行为，不得手工杀掉。最终回归集中保留：实体机逐帧无系统壁纸、黑帧/白帧、多 ROM、连续切换压力、异常中断和超时恢复。

## 目标

消除“杀进程后等待 Launcher 新首帧”造成的窗口空档。

## 当前目标

```text
launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java
```

搜索：

```powershell
rg -n "killProcess|System\.exit|scheduleLauncherRestart|restartLauncherForColdSceneChange|restartLauncher\(|recreateLauncherInPlace|finishSettingsTask|startLauncherFromForeground|showRestartLoading" `
  launcher\tools\java\com\smartisanos\launcher\theme
```

## 原版参考

```text
clean_launcher_raw/smali/com/smartisanos/launcher/Launcher.smali
clean_launcher_raw/smali/com/smartisanos/launcher/J.smali
clean_launcher_raw/smali/com/smartisanos/launcher/ua.1.smali
```

原版设置 Loading：

```powershell
rg -n "SmartisanProgressDialog|LoadingUI|ProgressDialog|finish\(|CATEGORY_HOME|startActivity" `
  build\decompiled_theme_check\com.android.settings-100
```

## 修改步骤

正常路径：

```text
原版数据库/主题业务准备完成
→ 主进程生成唯一 reloadToken 和旧主 PID
→ 启动 :reload 中不透明 ReloadTransitionActivity
→ OnPreDraw + 一个 Choreographer 帧确认过渡窗口已显示
→ 精确结束旧主 PID
→ 显式启动新 Launcher
→ GL 帧 + Decor OnPreDraw + 一个 Choreographer 帧
→ 包内 Broadcast 校验同一 reloadToken
→ 关闭并移除过渡任务
```

禁止：

```text
Activity.recreate() 处理宫格
手工重建 PageView、Cell、EGL 或 SMEngine
按包名 force-stop / killBackgroundProcesses
透明过渡 Activity
固定延迟判定启动成功
```

进程重启只能作为以下异常的最终兜底：

- 找不到 Launcher Activity
- Activity 正在 finishing
- `recreate()` 抛异常
- 场景无法恢复

必须记录兜底原因。

## 真实首帧判断

不得固定等待 260/650/1200/1600ms。

组合使用现有真实状态：

- Launcher Activity 有效
- MainView 有效
- PageView 有效
- 当前页存在
- Surface 有效
- Cell 已绑定
- 原版 ready 状态
- `OnPreDrawListener`
- `Choreographer.FrameCallback`
- SMEngine 渲染状态

## 验收

- 旧主 PID 仅在过渡窗口真实绘制后按精确 PID 结束
- `:reload` 在新 Launcher 首帧前仍存在
- reloadToken 严格匹配，不串线
- 过渡窗口和 Launcher starting window 均不透明
- 逐帧无系统壁纸、黑帧和白帧

该阶段解决项目代码主动进程重生导致的闪屏，不包含系统强杀、Launcher 崩溃和厂商 WindowManager BUG。

---

# 10. 阶段 5：透明主题

状态：进行中（2026-07-15）。本阶段复用阶段 4 的 `ReloadTransitionActivity`、`LauncherColdReloadCoordinator`、`ReloadProtocol`、reloadToken、旧主 PID 精确终止、`FIRST_FRAME_READY` 与失败手动重试；不携带任何宫格迁移状态。

## 原版 Settings

```text
build/decompiled_theme_check/com.android.settings-100/
smali_classes2/com/android/settings/widget/LauncherPreview.smali
```

搜索：

```powershell
rg -n "onLauncherThemeChanged|launcher_grid_theme|TransparentTheme|transparent" `
  build\decompiled_theme_check\com.android.settings-100
```

## 原版 Launcher

```text
clean_launcher_raw/smali/com/smartisanos/launcher/ua.1.smali
clean_launcher_raw/smali/com/smartisanos/launcher/data/O.smali
clean_launcher_raw/smali/com/smartisanos/launcher/data/Constants.smali
clean_launcher_raw/smali/com/smartisanos/launcher/theme/X.smali
clean_launcher_raw/smali/com/smartisanos/launcher/theme/t.smali
clean_launcher_raw/smali/com/smartisanos/launcher/theme/ThemeChooserActivity.smali
clean_launcher_raw/smali/com/smartisanos/launcher/view/Eb.smali
```

搜索：

```powershell
rg -n "launcher_grid_theme|isTransparentTheme|smartisan_theme_trans|initByTheme|ChangeThemeHandler|updateGLView" `
  clean_launcher_raw\smali\com\smartisanos\launcher
```

资源：

```text
build/decompiled_theme_check/com.smartisanos.launcher.theme.trans/
```

## 当前目标

```text
launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java
launcher/tools/java/com/smartisanos/launcher/theme/LauncherSettingBridge.java
```

## 修改步骤

保留：

```text
launcher_grid_theme
transparent_previous_theme
原版透明主题资源
Constants.isTransparentTheme
原版 O/X 初始化
```

开启：

```text
保存当前普通主题
→ 私有配置写 launcher_grid_theme=1
→ commit 成功
→ 注册原版透明资源
→ 准备原版透明壁纸、模糊和翻页动画限制
→ 调用冷重载协调器
→ 新 Launcher 冷启动读取透明配置
→ 原版 Constants/O/X/Eb/SMEngine 按透明模式初始化
→ 等待真实首帧
→ 关闭过渡页
```

关闭：

```text
写 launcher_grid_theme=0
→ 恢复 transparent_previous_theme
→ 清除透明模式专用覆盖和模糊状态
→ commit 成功
→ 调用冷重载协调器
→ 新 Launcher 按普通主题初始化
→ 等待首帧
→ 关闭过渡页
```

禁止：

- 永久写 `launcher_theme=smartisan_theme_trans`
- 透明主题进入普通主题队列
- 正常路径杀进程
- Alarm 拉起 HOME
- 调用 `N.d()`、`F.i()` 或宫格 pending 消息
- 固定延迟判断成功
- Activity.recreate()、局部重建 PageView/Cell、手工重置 EGL/SMEngine

第一阶段稳定后，才研究原版 SMEngine 热切换；不得新建第二套主题引擎。

---

# 11. 阶段 6：普通主题

状态：进行中（2026-07-15）。普通主题只使用原版 ThemeManager、`ChangeThemeHandler.RequireChangeFrom.SETTING`、过渡截图和 Launcher 返回后的单条原版消息；仅当原版持久化明确失败时，才写一条兼容 pending 消息。

## 原版参考

```text
clean_launcher_raw/smali/com/smartisanos/launcher/theme/X.smali
clean_launcher_raw/smali/com/smartisanos/launcher/theme/t.smali
clean_launcher_raw/smali/com/smartisanos/launcher/theme/ThemeChooserActivity.smali
```

搜索：

```powershell
rg -n "MESSAGE_CHANGE_THEME|0x12|RequireChangeFrom|launcher_theme|ChangeThemeEvent|ChangeThemeHandler" `
  clean_launcher_raw\smali\com\smartisanos\launcher
```

## 当前目标

```text
launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java
```

方法：

```text
applyTheme()
applyThemeViaOriginalStack()
queueThemeChangeForLauncher()
submitThemeSnapshot()
refreshThemeRuntime()
refreshLauncherThemeSurface()
```

## 修改步骤

权威流程：

```text
设置页选主题
→ 原版 ThemeManager 持久化
→ ChangeThemeHandler 来源为 SETTING
→ 原版过渡截图
→ 返回 Launcher
→ 消费一条原版主题消息
→ 原版场景更新
```

原版栈明确持久化失败才使用一条 fallback pending message；fallback 不再叠加原版写入、手工 Handler 消息或固定延迟。

同一次切换不能同时执行：

- 原版 `O.a`
- 多份手工配置
- 手工 pending message
- 手工 Handler message
- 所有 `Eb` 方法
- 多次延迟刷新

必须从原版确认 `Eb.lh/Vh/oh/Z` 等混淆方法用途。

## 验收

- 一次操作只有一条主题链
- 主题重启后保持
- 无重复动画
- 不用冷启动方法作为通用刷新
- 正常路径不杀进程

---

# 12. 阶段 7：动态天气和日历场景更新

状态：进行中（2026-07-15）。动态开关已收敛为原版 `com.smartisanos.launcher.update_icon` → `Aa.c()` → 原版数据库更新；只发送原版 WeatherView/CalendarView 的包名，不扫描全部 Launcher 应用、不重启 Launcher。

## 原版协议

```text
build/decompiled_theme_check/com.android.settings-100/
smali/com/android/settings/AppIconsSettingsFragment.smali
smali/com/android/settings/AppIconsSettingsFragment$4.smali
```

```text
action: com.smartisanos.launcher.update_icon
extra: extra_packagename
```

## 原版 Launcher

```text
clean_launcher_raw/smali/com/smartisanos/launcher/receiver/LauncherReceiver.smali
clean_launcher_raw/smali/com/smartisanos/launcher/data/
```

搜索：

```powershell
rg -n "update_icon|extra_packagename|EVENT_REFRESH|EVENT_PACKAGE_CHANGED|updateCell|updateCells" `
  clean_launcher_raw\smali\com\smartisanos\launcher
```

查找场景类：

```powershell
rg -n '\.source "ActiveIcon.java"|\.source "WeatherView.java"|\.source "CalendarView.java"|ActiveIcon|WeatherView|CalendarView' `
  clean_launcher_raw\smali\com\smartisanos\launcher
```

## 当前目标

```text
launcher/tools/java/com/smartisanos/launcher/theme/LauncherSettingBridge.java
launcher/tools/java/com/smartisanos/launcher/theme/WeatherBridge.java
launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java
launcher/smali/com/smartisanos/launcher/receiver/LauncherReceiver.smali
```

## 修改步骤

```text
写开关
→ 原版 update_icon 或数据库事件
→ DatabaseHandler 更新
→ 数据库完成
→ 只更新天气/日历 Cell
→ 创建原版 ActiveIcon 或普通图标
→ 一次渲染
```

兼容层只负责定位、天气数据、包映射、配置 fallback 和安全阴影 fallback。

禁止：

- 重启 Launcher
- recreate Activity
- 杀进程
- 设置页直接强转 ActiveIcon
- 设置页直接操作用途不明的节点槽位
- 多次延迟刷新

## 验收

- 开关无需重启 Launcher
- 天气/日历使用原版节点
- 数据库类型与场景节点一致
- 关闭后无天气后台任务

---

# 13. 阶段 8：壁纸处理和刷新

状态：核心实现完成，基本验证完成（2026-07-15）；最终回归待完成。已确认 `Eb.lh()` 是原版透明壁纸 `changeWallpaper` 入口；壁纸选择在后台完成复制/解码/缩略图/高斯图，主线程只写最终状态并调用一次 `lh()`，场景不可用才保留 pending。已完成完整构建、v1/v2/v3 签名、`emulator-5556` 覆盖安装和 HOME 启动无新增 Java/native fatal；图片选择、透明主题壁纸、默认壁纸恢复及逐帧视觉回归留待最终集中验证。

## 原版 Settings

```powershell
rg -n "WallpaperCache|launcher_wallpaper_uri|WallpaperManager|CHANGE_LOCKSCREEN_WALLPAPER" `
  build\decompiled_theme_check\com.android.settings-100
```

其他参考：

```text
build/decompiled_theme_check/com.smartisanos.wallpaperprovider-100/
build/decompiled_theme_check/com.smartisanos.desktop-3/
```

## 原版 Launcher

```text
clean_launcher_raw/smali/com/smartisanos/launcher/ua.1.smali
clean_launcher_raw/smali/com/smartisanos/launcher/data/O.smali
clean_launcher_raw/smali/com/smartisanos/launcher/view/Eb.smali
```

## 当前目标

```text
launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java
```

搜索：

```powershell
rg -n "onWallpaperPicked|saveGaussianWallpaperCopy|refreshLauncherWallpaperNow|refreshLauncherAfterWallpaperUriChanged|maybeRefreshLauncherWallpaper|markWallpaperRefreshPending" `
  launcher\tools\java
```

## 修改步骤

后台线程：

- 文件复制
- 大图解码
- 裁剪
- 缩略图
- 高斯图
- 压缩和保存

主线程：

```text
写最终 URI
→ 通知原版配置
→ 调用一个确认用途的原版壁纸刷新入口
→ 一次渲染
```

删除“立即 + 120ms + 420ms + onResume pending”的重复刷新。

运行时刷新成功后清除 pending；只有 Launcher/场景不可用时设置 pending。

未确认 `Eb.Vh()` 用途前，不把它作为壁纸热刷新方法。

## 验收

- 图片处理不阻塞设置页
- 壁纸只更新一次
- 成功后不重复 pending 刷新
- 透明主题壁纸状态正确

---

# 14. 阶段 9：图标加载

状态：加载性能核心实现完成；图标 geometry/raster 架构已于 2026-08-08 冻结，最终跨分辨率回归待完成。普通模式不再启动图标包扫描或 appfilter 解析；所选图标包解析、在线图标落盘均只合并更新受影响包名，不再以设置资源预热或图标缓存写入触发全量数据库刷新。

冻结规则：

- DEFAULT、IMPROVED、PACK、CUSTOM、RESOURCE 统一进入 `IconVisualMetrics -> SmartisanIconNormalizer -> Static Application Composer`；来源只提供 RAW，不得分叉尺寸算法。
- 用户图标百分比只由 `LayoutProperty` 应用一次；不得恢复 `icon_size_origin_resize` 第二档、固定 `0.90` 缩小或 package/source/device 倍率。
- Weather/Calendar 内部 ActiveIcon 完全冻结，只共享 root 外部 geometry；静态 fallback 共享相同外框但跳过普通形状 normalizer。
- 桌面设置保留特殊 renderer，但服从同一用户尺寸与 physical raster 原则。
- 跨分辨率验收比较 `visualEnvelope/cellWidth`，不是比较绝对像素；高清 RAW 只允许一次最终 Raster，低分辨率源必须标记 `SOURCE_LIMITED`。
- 当前仅完成 vivo X21A 1080/12 宫格/当前 100% 真机基线；50/150、20 宫格、1440/2K 和中间分辨率未全部完成前，不得标记 `ICON_SYSTEM_VALIDATION_FROZEN=true`。

## 原版参考

```powershell
rg -n '\.source "IconCache.java"|\.source "IconBitmapCache.java"|loadIcon|ResolveInfo|ItemInfo' `
  clean_launcher_raw\smali\com\smartisanos\launcher
```

## 当前目标

```text
launcher/tools/java/com/smartisanos/home/settings/icons/IconManager.java
launcher/tools/java/com/smartisanos/home/settings/icons/IconPackManager.java
launcher/tools/java/com/smartisanos/home/settings/icons/AppIconAdapter.java
launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java
```

搜索：

```powershell
rg -n "shouldUseManagedIcon|selectedIconDrawable|preloadSelectedIconPackAsync|warmUpIconPackList|online_icon|RedirectIconDB" `
  launcher\tools\java
```

## 修改步骤

以下全部关闭时，直接走原版图标：

- 改进图标
- 图标包
- 单应用覆盖
- 在线/本地覆盖

快速判断不得解码图片、扫描图标包、解析 appfilter、联网、读大 JSON 或枚举全部应用。

首帧显示原图；下载或解析完成后只更新受影响包名。

删除仅因设置资源预热而触发的数据库刷新。

## 验收

- 普通模式不初始化管理图标系统
- 在线图标失败不阻塞模型
- 图标更新合并执行
- 动态图标不被静态图片覆盖

---

# 15. 阶段 10：安装、卸载、角标和分身

状态：核心实现完成，基本验证完成（2026-07-15）；最终回归待完成。普通安装广播在 Launcher Activity 可查询后只进入一次原版 `Aa.c(context, package)`；仅当 PackageManager 尚未暴露目标 Activity 时最多重试两次。卸载进入原版 `Aa.D(package)` 删除链，并清除该包可选图标缓存。分身只在存在已启用记录时查询 profile，删除 350/450/900/2200/2000/8000ms 的多次全量补偿刷新；已完成完整构建、v1/v2/v3 签名、`emulator-5556` 覆盖安装与 HOME 启动无新增 Java/native fatal。真实安装/卸载、替换、工作资料/分身和角标联动留待最终回归。

## 应用事件参考

```text
clean_launcher_raw/smali/com/smartisanos/launcher/receiver/LauncherReceiver.smali
clean_launcher_raw/smali/com/smartisanos/launcher/data/
```

搜索：

```powershell
rg -n "PACKAGE_ADDED|PACKAGE_REMOVED|PACKAGE_REPLACED|PACKAGE_CHANGED|EVENT_PACKAGE_ADDED|EVENT_PACKAGE_REMOVED|EVENT_PACKAGE_CHANGED" `
  clean_launcher_raw\smali\com\smartisanos\launcher
```

当前目标：

```text
launcher/tools/java/com/smartisanos/launcher/install/SmartisanInstallManager.java
launcher/smali/com/smartisanos/launcher/receiver/LauncherReceiver.smali
```

## 修改步骤

普通 Android 的广播、`LauncherApps.Callback` 和 `PackageInstaller` 最终转换为原版 DatabaseUpdater 事件。

安装：

```text
LauncherActivityInfo 可查询
→ 原版 PACKAGE_ADDED
→ 数据库完成
→ 受影响页面
→ 一次渲染
```

PackageManager 信息暂未可用时最多有限重试 2–3 次，成功立即停止。

卸载：

```text
原版 PACKAGE_REMOVED
→ 删除数据库
→ 移除 Cell
→ 清理图标缓存
→ 一次渲染
```

## 分身参考

```powershell
rg -n "EVENT_USER_PACKAGE_ADDED|EVENT_USER_PACKAGE_REMOVED|EVENT_USER_PACKAGE_CHANGED|getInstalledPackagesAsUser|startActivityAsUser" `
  clean_launcher_raw\smali\com\smartisanos\launcher
```

没有启用分身记录时不调用 `LauncherApps.getProfiles()`，不枚举次用户应用。

有变化时：

```text
原版 USER_PACKAGE 事件
→ 数据库完成
→ 一次刷新
→ 一次渲染
```

删除 350/900/2200ms 等多次全量补偿刷新。

## 验收

- 安装后无需重启即显示
- 卸载后无需重启即移除
- 默认不扫描 Profile
- 角标和分身不重复全量刷新

---

# 16. 固定延迟审计

状态：核心审计完成，基本验证完成（2026-07-15）；最终回归待完成。已删除透明壁纸 160ms、角标 180ms、主题运行时 120/360ms、手动城市 1800ms 的竞态补偿刷新。保留项已分类：`:reload` 10 秒仅为失败提示；安装 300ms 仅在 PackageManager 尚不可查询时最多两次；主题/更新下载 800–1500ms 为网络轮询；在线图标 2 秒为写入安静窗口合并；天气 TTL、UI Loading 帧和键盘/预览动画属于功能性调度。未重新接入旧 Alarm 重启路径。

搜索：

```powershell
rg -n "postDelayed|setExact|setExactAndAllowWhileIdle|sleep\(" launcher
```

把每个延迟分类：

- UI 动画必要
- 系统节流必要
- 网络轮询必要
- 有上限的安装轮询
- 竞态掩盖
- 重复补帧

后两类必须替换为真实完成信号。

保留的延迟必须在代码或文档说明原因。

---

# 17. 任务合并和状态

状态：核心实现完成，基本验证完成（2026-07-15）；最终回归待完成。既有图标、天气、分身和冷重载任务均保持单飞/合并状态；`ReloadTransitionActivity` 已明确 `WAITING_FIRST_FRAME → COMPLETED/FAILED`，失败手动重试会重新挂载失败超时，token 首帧只完成一次。超时仅显示失败，不自动杀进程。

优先在现有类中使用轻量状态：

```text
IDLE
DATABASE_UPDATING
SCENE_UPDATING
WAITING_FIRST_FRAME
COMPLETED
FAILED
```

规则：

- 同类任务同时只运行一个
- 重复请求合并
- 新请求可覆盖旧参数
- 数据库未完成不更新场景
- 场景不可用时只记一个 pending
- 一次完成只提交一次渲染
- 超时记录错误并恢复状态
- 超时不自动杀进程

---

# 18. 建议 Commit 顺序

状态：已审阅（2026-07-15）。本轮未暂存、未提交：工作区包含用户既有改动与跨阶段的构建产物，必须待最终回归后按上述功能边界人工拆分提交。

1. `perf: add launcher startup and first-frame diagnostics`
2. `perf: defer non-critical launcher resume work`
3. `perf: skip weather work when dynamic icons are disabled`
4. `fix: persist launcher grid mode before original migration`
5. `fix: reload launcher in process after grid migration`
6. `fix: apply transparent mode without process rebirth`
7. `fix: refresh dynamic icons through original update pipeline`
8. `perf: remove redundant wallpaper and theme refreshes`
9. `perf: preserve original icon fast path`
10. `perf: coalesce badge and profile refresh events`

每阶段独立构建和验证后再进入下一阶段。

---

# 19. 构建和安装

```powershell
.\build.bat
```

产物：

```text
build\launcher-signed.apk
```

检查：

```powershell
aapt2 dump badging build\launcher-signed.apk
aapt2 dump xmltree build\launcher-signed.apk AndroidManifest.xml
apksigner verify --verbose build\launcher-signed.apk
```

安装：

```powershell
adb install -r build\launcher-signed.apk
```

回归测试不要清除数据。

---

# 20. 重载和闪屏验证

操作前后：

```powershell
adb shell pidof com.smartisanos.home
```

日志：

```powershell
adb logcat -c
adb logcat -v threadtime > launcher_reload_test.txt
```

录屏：

```powershell
adb shell screenrecord /sdcard/launcher_test.mp4
adb pull /sdcard/launcher_test.mp4
```

检查：

- `am_proc_died`
- `Process.killProcess`
- scheduled process rebirth
- FATAL EXCEPTION
- HOME 切换
- 系统壁纸帧
- 黑帧/白帧
- 旧场景闪回
- 设置页或 Loading 提前消失

---

# 21. 测试矩阵

## 启动

- 首次安装
- 覆盖安装
- 冷启动
- 热启动
- HOME 返回
- 最近任务返回
- 锁屏解锁
- 熄屏点亮
- 进程回收后启动

## 宫格

- 12→20
- 20→12
- 连续切换 10 次
- 超过 12 个图标的板块
- 少于 12 个图标的板块
- 隐藏板块
- 加密板块
- 文件夹
- 重启保持

## 主题

- 普通 A→B
- 普通→透明
- 透明→普通
- 连续开关透明 10 次
- 透明模式换壁纸
- 透明模式锁屏解锁
- 透明模式 HOME/Recents

## 动态图标

- 开启/关闭
- 有/无天气应用
- 定位允许/拒绝
- 手动城市
- 自动定位
- 跨日
- 天气更新

## 应用和分身

- 安装
- 更新
- 卸载
- 禁用/恢复
- 分身开启/关闭
- 次用户应用

---

# 22. 每阶段完成报告

必须说明：

## 修改内容

具体行为变化。

## 根因

旧实现为什么失败或慢。

## 原版复用

具体原版 Settings 和 Launcher 文件/方法。

## 普通 Android 兼容

缺失的 Smartisan 能力、使用的替代方式，以及为何不改变原版语义。

## 修改文件

完整路径。

## 验证

- 构建
- 签名
- 安装
- PID
- 日志
- 录屏
- 功能测试

## 风险

- 未测试 ROM
- 反射
- fallback
- 仍保留的延迟
- 未验证行为

还必须明确：

- 是否仍有 `killProcess`
- 是否仍有 Alarm 重启
- 增删了哪些固定延迟
- 是否修改二进制 Manifest
- 是否修改数据库结构
- 是否修改原版 `F.i()`
- 是否更新 `MEMORY.md`
- 是否更新 `DEVELOPMENT_LOG.md`

---

# 23. 闪回系统壁纸的预期结论

旧项目内闪屏链路：

```text
设置页结束
→ Launcher 进程死亡
→ Surface 消失
→ 延迟启动 HOME
→ 新首帧未准备好
→ 系统壁纸暴露
```

当前受控冷重载结构：

```text
原版宫格数据库迁移完成
→ :reload 过渡 Activity 不透明首帧
→ 精确结束旧 Launcher 主 PID
→ 新 Launcher 不透明 starting window
→ GL 帧、Decor OnPreDraw、Choreographer 帧
→ token 匹配后关闭过渡任务
```

该方案允许 Launcher 主 PID 变化，但要求用户始终被过渡窗口或 Launcher starting window 覆盖。不得使用 timeout 当成功；10 秒只用于显示失败和一次手动重试。

不包含：

- Launcher 自身崩溃
- 系统低内存强杀
- 厂商手势合成 BUG
- WindowManager/SurfaceFlinger 异常
- 用户切换默认桌面

只有在可用 ROM 上多次逐帧验证通过后，才能把项目内部重载闪屏标记为已修复。
