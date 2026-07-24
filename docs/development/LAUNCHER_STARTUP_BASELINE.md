# Launcher 启动基线

## 2026-07-15 宫格冷重载连续切换修复

真机日志结论：`am_proc_died` 中的旧 Launcher PID 是过渡页首帧后按设计结束的旧主进程；未检出 Launcher `FATAL EXCEPTION` 或 native fatal。可见异常是 `ReloadTransitionActivity` 在新 Launcher 启动后被 `recent-task-trimmed` / `clear-task-all` 提前移除，造成过渡窗口无法等待 `FIRST_FRAME_READY`。

修复与边界：

- 新 Launcher 仅使用 `FLAG_ACTIVITY_NEW_TASK`，删除会裁剪 `:reload` 等待任务的 `FLAG_ACTIVITY_CLEAR_TASK`。
- 过渡 Activity 与原版 `widget.c -> SmartisanProgressDialog` LoadingUI 均继承已有桌面导航栏隐藏、沉浸式和透明 system-bar 策略；未重新绘制加载动画。
- 保留原版宫格 `N.d() -> F.i()`、数据库结构、旧主 PID 精确终止、`reloadToken` 与 `FIRST_FRAME_READY`。未修改二进制 Manifest，未新增固定成功延迟或 Alarm 重启。

基本验证：完整构建、v1/v2/v3 签名、二进制 Manifest 检查、`emulator-5556` 覆盖安装和冷启动（`TotalTime=1417ms`）通过，无新增 Java/native 崩溃。

最终回归待完成：实体机连续 12→20→12 至少 10 次、逐帧录屏检查系统壁纸/黑白帧/底部导航栏、复杂宫格、失败与超时重试，以及多 ROM。

### LoadingUI 逐帧修复补充

对 720×1600、44.74fps、2.72 秒实体机录屏的逐帧检查确认：过渡期“正在加载桌面...”和新 Launcher “正在初始化”都来自原版 `widget.c -> SmartisanProgressDialog -> loading_progress`，但此前由不同窗口 inset 和过渡页灰黑背景承载，造成状态栏、底部虚拟键和上下错位。

- `ReloadTransitionActivity` 与 `widget.c` 展示后的原版 Dialog 现在统一应用纯黑、全屏、隐藏导航栏、布局扩展和沉浸式窗口策略。
- 未新绘制动画、未手工指定加载控件坐标；两个阶段继续复用同一原版 LoadingUI 和其原版居中布局。
- 完整构建、v1/v2/v3 签名、`emulator-5556` 覆盖安装、冷启动（`TotalTime=1107ms`）通过，未见 Java/native/linkage 崩溃。
- 仍需在该实体机逐帧确认首次过渡帧即无系统栏、两个文案位置相同，并完成连续切换与多 ROM 回归。

### 连续切换闪退根因补充

最新实体机日志确认两项协调层异常，不是 Launcher Java/native 自身崩溃：

- `ReloadTransitionActivity` 虽在二进制 Manifest 中声明独立 `:reload` affinity，但此前从 Activity 发起时未带 `NEW_TASK`，实际被放进 `smartisanos.task.launcher`。Launcher HOME 启动的 `clearTaskOnLaunch` 因而清除了过渡页并产生 `clear-task-all` / `2nd-crash`。
- 精确 kill 旧主 PID 后立即启动新 Launcher 时，Oplus ActivityManager 仍保留旧 `ProcessRecord`，日志显示 `is attached to a previous process` 和 `Already have existing proc`。

修复使 `:reload` 无条件以新任务启动，并只在 `ActivityManager` 确认旧 PID 已退出后启动新 Launcher；检查由 Choreographer 帧驱动，不作为固定成功延迟。下一轮真机日志应依次包含 `OLD_MAIN_PROCESS_EXIT_CONFIRMED`、新 Launcher 首帧和 token 匹配；仍需连续 10 次与逐帧回归验证。

### 唯一可见 LoadingUI 收口

- 宫格冷重载的可见 Loading 不再创建 `SmartisanProgressDialog` 独立 Dialog window。`ReloadTransitionActivity` 的纯黑 content root 直接使用原版 `loading_progress`，并按原版 `SmartisanProgressDialog` 的尺寸、居中、圆角、padding、spinner 和文字布局公式构建，未重画资源。
- 新 Launcher 收到 `reloadToken` 后仅抑制一次原版 `widget.c` 初始化 Loading；因此冷重载不应再出现“正在加载桌面...”之后的第二个“正在初始化”Dialog。
- Activity 从创建开始使用黑色、全屏、隐藏状态栏和底部导航栏、沉浸式的窗口策略；正常 Launcher starting window 保持既有黑色全屏启动主题。
- 构建、签名、`emulator-5556` 覆盖安装和冷启动（`TotalTime=1850ms`）通过；实体机逐帧检查仍待确认唯一 Loading、无系统栏、无 Y 轴跳动与无壁纸/黑白帧。

### LoadingUI 无窗口位移补充

- 资源检索未发现项目自定义的 `slide`、`translate` 或 `windowAnimationStyle`。此前整体上下滑动的实际来源是默认 Activity/task 动画、焦点后 system-ui/inset 变化造成的居中根布局重算，以及此前两个 window 坐标系共同影响；不是原版 `loading_progress` spinner 的动画。
- `ReloadTransitionActivity` 与新 Launcher 均以 `FLAG_ACTIVITY_NO_ANIMATION` 启动，Activity 启停调用 `overridePendingTransition(0, 0)`，过渡窗口在 content 首帧前关闭 window animation 并完成黑色全屏、system-bar 隐藏、cutout 与 Android 11+ decor-fits 配置。移除了焦点后的二次 system-ui 写入。
- 冷重载继续只显示过渡页 content root 内的原版 `loading_progress`；没有 `SmartisanProgressDialog` 独立 Dialog window，也不会显示 tokenized 新 Launcher 的第二套初始化 Dialog。既有 Launcher starting window 黑色全屏主题未改，二进制 Manifest、数据库和 `F.i()` 均未改。
- 基本验证：构建、v1/v2/v3 签名、`emulator-5556` 覆盖安装与冷启动（`TotalTime=2233ms`）通过，无新增 Java/native/linkage 崩溃。实体机逐帧、连续切换、手势/三键导航和多 ROM 仍待最终验证，不将其标为全部完成。

## 2026-07-15 阶段 0

测试环境：

- 设备：Android Emulator `emulator-5554`
- APK：`com.smartisanos.launcher v1.5.5 (30)`
- 状态：12 宫格、普通黑色主题、透明模式关闭、动态天气/日历关闭、图标包关闭、角标隐藏
- 数据：覆盖安装，不清除 Launcher 数据

诊断开关：

```powershell
adb shell settings put global launcher_startup_diagnostics_enabled 1
adb shell settings put global launcher_startup_diagnostics_enabled 0
```

每个标记在一次 Activity 启动中只输出一次，日志包含 `elapsedRealtime`、启动相对耗时、PID、线程、Activity 实例和关键配置快照。

### 覆盖安装后的首次冷启动

| 信号 | 相对 `Launcher.onCreate()` |
| --- | ---: |
| 原版 `J.b(Activity)` 完成 | 429 ms |
| 当前 `onCreate` 兼容任务完成 | 824 ms |
| Surface ready | 1761 ms |
| 首个 GL frame | 1766 ms |
| Model ready | 4279 ms |
| Page ready | 4279 ms |
| 系统 `Displayed` | 2455 ms |

### 第二次冷启动

| 信号 | 相对 `Launcher.onCreate()` |
| --- | ---: |
| 原版 `J.b(Activity)` 完成 | 119 ms |
| 当前 `onCreate` 兼容任务完成 | 135 ms |
| Surface ready | 627 ms |
| 首个 GL frame | 983 ms |
| Model ready | 1018 ms |
| Page ready | 1019 ms |
| `am start -W TotalTime` | 1262 ms |

### 热返回和屏幕周期

- 从系统设置显式返回 Launcher：`LaunchState=HOT`，`TotalTime=237 ms`。
- 热返回前后 PID 均为 `4749`。
- 熄屏、点亮并解锁后 PID 仍为 `4749`，日志无 Launcher `FATAL EXCEPTION`。
- 将诊断开关设为 `0` 后重新冷启动，`LauncherStartup` 标记数量为 `0`。

### 基线结论

- 原版 `J.b(Activity)` 未被跳过。
- 首个 GL frame 可以早于原版 `MESSAGE_COMPLETE`；系统 `Displayed` 也不等同于 Model/Page 完成，后续优化必须分别观察这些信号。
- 覆盖安装后的首次冷启动明显受模型/数据库准备影响；第二次冷启动的模型完成约为 1 秒。
- 当前 `onCreate()` 兼容任务在首次冷启动占约 395 ms，在第二次冷启动占约 16 ms；是否拆分属于阶段 1，本阶段不修改。

### 未验证

- 未清除数据，因此没有测量真正的首次安装空数据库启动。
- 未单独自动化“最近任务卡片返回”；本次热返回使用系统设置页后显式拉回 Launcher。
- 未在实体机和不同厂商 ROM 上采集逐帧录像、SurfaceFlinger 或功耗数据。

## 2026-07-15 阶段 1

实现变化：

- 原版 `J.b(Activity)` 和 `J.onResume()` 保持优先执行。
- 导航栏写入按窗口和实际属性缓存。
- 壁纸 pending、角标 dirty、动态图标开关和所选图标包任务统一在真实 GL 帧后执行。
- 每次冷启动和 HOME 热返回分别请求一次 GL 帧完成信号；renderer 平时只做一个布尔检查。
- 删除普通启动的 80/260/1200 ms 补帧，以及重载 Loading 的 320/760/1600 ms 补帧。
- 重载 Loading 改为真实 GL 帧完成后，再等待一个 Choreographer 帧关闭。

冷启动结果：

| 信号 | 相对 `Launcher.onCreate()` |
| --- | ---: |
| 原版 `J.b(Activity)` 完成 | 159 ms |
| Surface ready | 564 ms |
| 首个 GL frame | 937 ms |
| 首帧后兼容任务开始 | 938 ms |
| 首帧后兼容任务结束 | 941 ms |
| Model ready | 964 ms |
| Page ready | 964 ms |
| `am start -W TotalTime` | 1583 ms |

热返回结果：

- 连续 5 次从系统设置返回 Launcher：196、219、173、185、207 ms。
- 操作前后 PID 均为 `6559`。
- 动态天气关闭时没有 WeatherBridge 工作或定位权限请求。
- 日志无 Launcher `FATAL EXCEPTION`。

说明：单次系统 `TotalTime` 会受模拟器调度影响；阶段验收依据是兼容任务相对真实 GL 帧的顺序和重复调用是否消除，不以一次总耗时下降作为唯一结论。

## 2026-07-15 阶段 2

测试状态：动态天气/日历关闭、图标角标隐藏、通知访问权限未授予本 Launcher。

- 显式冷启动 `com.smartisanos.launcher/.Launcher`：`TotalTime=1253 ms`。
- 原版初始化 100 ms、Surface 586 ms、首个 GL 帧 974 ms、首帧后兼容任务 974–978 ms、Model/Page 1037 ms。
- 连续 3 次从系统设置返回 Launcher，PID 前后均为 `7353`。
- `LauncherStartup` 配置快照确认 `dynamicIcons=false`、`badges=hidden`。
- WeatherBridge 日志、天气组件缓存解析、定位权限请求和 Launcher `FATAL EXCEPTION` 均为 0。
- 角标隐藏和无通知访问权限的恢复路径直接返回；通知访问开启且存在活动通知时的服务同步仍需实体机回归。

## 2026-07-15 阶段 3 与阶段 4

实现变化：

- 宫格模式先同步提交到私有配置，再保留原版 `DatabaseHandler worker -> N.d(context, newPageMode) -> F.i(oldPageMode, newPageMode)` 迁移链；相同模式直接跳过。
- 使用私有 `:reload` 进程的完全不透明 `ReloadTransitionActivity` 覆盖窗口连续性，Loading 复用原版 `widget.c / SmartisanProgressDialog`。
- 过渡页首帧后只精确结束旧 Launcher 主 PID；新 Launcher 在真实 GL 帧、Decor `OnPreDraw` 和下一 Choreographer 帧后携带 `reloadToken` 上报 `FIRST_FRAME_READY`。
- 10 秒仅用于失败提示与手动重试，不能当成功；Activity 结束后 `:reload` 短暂作为 cached 进程属于正常系统行为，不手工杀掉。

验证结果：

- 模拟器已确认 12→20 成功，最终为 4×5；相同宫格模式直接跳过。
- 已记录 `TRANSITION_FIRST_FRAME -> OLD_MAIN_PROCESS_KILL_REQUESTED -> NEW_LAUNCHER_FIRST_FRAME -> FIRST_FRAME_TOKEN_MATCHED -> TRANSITION_FINISHED` 的 token 一致链路。
- 未修改数据库结构或原版 `F.i()` 算法。

未验证：

- 20→12 且单板块超过 12 图标、文件夹、隐藏/加密板块、设备重启保持。
- 实体机逐帧壁纸/黑白帧、多 ROM、连续切换压力、异常中断与超时恢复。

## 2026-07-15 阶段 5 与阶段 6

实现变化：

- 透明主题只保存/恢复 `transparent_previous_theme` 并提交 `launcher_grid_theme`，通过既有冷重载协调器启动；不写入普通 `launcher_theme`，不调用 `N.d()`、`F.i()` 或宫格 pending 消息。
- 普通主题回到原版 `X.ja -> ChangeThemeHandler.SETTING -> O` 消息链；只在原版持久化明确失败时发送一条 fallback pending message。
- 删除普通主题 120ms 截图/启动补偿和主题运行时 120/360ms 重复刷新。

基本验证：

- 完整构建、v1/v2/v3 签名、覆盖安装和 HOME 启动通过，无新增 Java/native 崩溃。

未验证：

- 普通主题 A→B、普通/透明反复切换、真实主题资源呈现与逐帧过渡。

## 2026-07-15 阶段 7 与阶段 8

实现变化：

- 动态天气/日历仅向原版 `LauncherReceiver -> Aa.c -> Aa.r` 发送天气与日历包的 `update_icon`，不扫描全部应用、不冷重载。
- 壁纸选择的复制、解码、高斯图、缩略图和系统壁纸写入移至 `LauncherWallpaperSave` 后台线程；主线程只同步最终 URI、调用原版 `Eb.lh()` 一次并请求一次 render。
- 删除 `Eb.Vh/oh/Z` 误用、壁纸 120/420/180ms 重复刷新，以及手动城市 1800ms 二次天气刷新。

基本验证：

- 动态图标广播在运行中的 Launcher 被接收，无 Java/native 崩溃。
- APK 构建、签名、安装与 HOME 启动通过。

未验证：

- 天气实际数据/跨日、真实大图选择、透明主题换壁纸、默认壁纸恢复与逐帧连续性。

## 2026-07-15 阶段 9 与阶段 10

实现变化：

- 所有图标覆盖关闭时不初始化图标包系统；`shouldUseManagedIcon()` 只读取模式元数据。图标包和在线图标完成后仅合并更新受影响包名，不触发全量数据库刷新。
- 安装只在 Launcher Activity 可查询后调用一次原版 `Aa.c(context, package)`；最多两次条件重试。卸载调用原版 `Aa.D(package)` 并清理该包改进图标缓存。
- 没有已启用分身记录时不查询 Profile；分身继续使用原版 `EVENT_USER_PACKAGE_*`，删除多次延迟全量刷新。

基本验证：

- APK 构建、v1/v2/v3 签名、覆盖安装和 HOME 启动通过，无新增 Java/native 崩溃。

未验证：

- 真实图标包、在线下载、单应用覆盖、动态图标混合场景，以及安装/卸载/替换、工作资料/分身、角标联动。

## 2026-07-15 固定延迟审计、任务合并与提交边界

实现变化：

- 删除透明壁纸 160ms、角标 180ms、主题运行时 120/360ms 的竞态补偿。
- 保留的延迟仅包括：冷重载失败提示、安装有限条件重试、`DownloadManager` 轮询、在线图标安静窗口合并、天气 TTL 和 UI 动画。
- 冷重载过渡页明确维护 `WAITING_FIRST_FRAME -> COMPLETED/FAILED`；失败手动重试会重新挂载超时，token 首帧只完成一次。
- 已审阅建议 Commit 顺序；未暂存、未提交、未清理现有混合工作区。

基本验证：

- 完整 APK 构建、v1/v2/v3 签名、覆盖安装和 HOME 启动通过；无新增 Launcher Java/native 崩溃。

最终回归待完成：

- 实体机逐帧检查、多 ROM、连续切换压力、复杂宫格数据、异常中断、长时间运行、日志降噪、代码清理和最终提交拆分。
