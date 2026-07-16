# ORIGINAL_BEHAVIOR_REFERENCE.md

## Launcher 启动基线和首帧诊断

### 原版 Settings

- 文件：本阶段不由 Settings 点击触发；Launcher 从 HOME、最近任务、解锁或进程恢复进入。
- 方法：不适用。
- 点击值：不适用。
- 写入键：不适用。
- Provider/广播/Intent：系统通过 HOME Intent 或现有 Activity 生命周期进入 Launcher。
- Loading/返回流程：沿用原版 Launcher 自身初始化窗口和 `initializing` Loading。

### 原版 Launcher 接收

- 文件：`clean_launcher_raw/smali/com/smartisanos/launcher/Launcher.smali`。
- 方法：`Launcher.onCreate(Bundle)` 在 `super.onCreate()` 后调用 `J.b(Activity)`。
- 线程：主线程。

### 原版数据库

- 文件：`clean_launcher_raw/smali/com/smartisanos/launcher/J.smali`、`clean_launcher_raw/smali/com/smartisanos/launcher/data/A.smali`。
- 方法：`J.b(Activity)` 通过 `DatabaseUpdater.Action.eaa` 启动原版数据初始化；`J.handleMessage()` 的 `MESSAGE_COMPLETE` 分支接收完成信号。
- 完成条件：`MESSAGE_COMPLETE` 到达后设置完成状态、恢复 LauncherReceiver、更新 SMEngine，并继续发布 `com.smartisanos.launcher.ready`。

### 原版场景

- 文件：`clean_launcher_raw/smali/com/smartisanos/launcher/J.smali`、`clean_launcher_raw/smali/com/smartisanos/launcher/view/vc.smali`。
- 方法：`J.K(int,int)` 建立 RootView、SMGLSurfaceView、SMEngine renderer；`vc.onSurfaceChanged()` 建立有效尺寸和 `Eb` 场景；`vc.onDrawFrame()` 调用 `Eb.update()`。
- 渲染线程：GLSurfaceView 渲染线程。
- 更新节点：原版 `Eb` 根场景和 PageView；阶段 0 不改变节点或渲染顺序。

### 当前差异

- 新增代码：`Launcher.onCreate()` 在原版初始化前后还执行导航栏、重载 Loading 和 `stabilizeLauncherResume()` 兼容调用。
- 被替换的原版行为：本阶段未发现启动入口跳过 `J.b(Activity)`。
- 固定延迟：阶段 0 只记录现状，不删除或新增业务延迟。
- 是否杀进程：原版 `J.b(Activity)` 的重复 Activity 防护仍可能调用 `ua.dc()`；本阶段不修改。
- 是否重复刷新：当前 `stabilizeLauncherResume()` 及恢复链路需要阶段 1 单独审计，本阶段不调整。

### 最小修复

- 复用方法：直接使用原版 `MESSAGE_COMPLETE`、Surface 建立和 GL `onDrawFrame()` 作为真实诊断信号。
- 必需兼容：新增默认开启、可通过 `launcher_startup_diagnostics_enabled=0` 关闭的单次日志 helper；每个标记每次 Activity 启动只记录一次。
- 修改文件：`Launcher.smali`、`J.smali`、`view/vc.smali`、`LauncherStartupDiagnostics.java`。

## Launcher 启动和返回桌面

### 原版 Settings

- 文件：本阶段不由 Settings 点击触发。
- 方法：不适用。
- 点击值：不适用。
- 写入键：不适用。
- Provider/广播/Intent：系统 HOME、Activity resume、锁屏恢复。
- Loading/返回流程：原版 Launcher 生命周期和场景恢复保持不变；兼容重载 Loading 等待真实 GL 帧后再关闭。

### 原版 Launcher 接收

- 文件：`clean_launcher_raw/smali/com/smartisanos/launcher/Launcher.smali`、`clean_launcher_raw/smali/com/smartisanos/launcher/J.smali`。
- 方法：`Launcher.onCreate()` 只在 `super.onCreate()` 后进入 `J.b(Activity)`；`Launcher.onResume()` 进入 `J.onResume()`。
- 线程：Activity 主线程。

### 原版数据库

- 文件：`clean_launcher_raw/smali/com/smartisanos/launcher/data/A.smali`、`J.smali`。
- 方法：继续由原版 DatabaseUpdater 和 `MESSAGE_COMPLETE` 驱动。
- 完成条件：未修改；阶段 1 不调整数据库链路。

### 原版场景

- 文件：`clean_launcher_raw/smali/com/smartisanos/launcher/view/vc.smali`。
- 方法：`vc.onDrawFrame()` 调用 `Eb.update()`；当前仅在启动或 resume 请求存在时，上报一次真实 GL 帧。
- 渲染线程：GLSurfaceView 渲染线程；兼容任务随后合并投递到主线程。
- 更新节点：不主动补帧，不改变原版 `Eb`、PageView 或 SMEngine 更新顺序。

### 当前差异

- 新增代码：导航栏、壁纸、天气、角标、图标包和重载 Loading 的普通 Android 兼容。
- 被替换的原版行为：无；原版 `J.b()` 和 `J.onResume()` 均保留且先执行。
- 固定延迟：旧启动链存在 80/260/1200 ms 补帧，重载 Loading 存在 320/760/1600 ms 补帧。
- 是否杀进程：本阶段未新增、删除或调用杀进程逻辑。
- 是否重复刷新：旧 `onCreate`、`onResume`、`onWindowFocusChanged` 会重复写系统栏，`stabilizeLauncherResume()` 会重复 requestLayout/invalidate/requestRender。

### 最小修复

- 复用方法：以原版 renderer 的真实 GL frame 作为启动和每次 resume 的兼容任务边界。
- 必需兼容：进程兼容只应用一次；导航栏按 Window token、隐藏开关、system UI flags 和颜色缓存；天气、角标和图标包先检查开关或 dirty 状态；Loading 在真实 GL 帧后的下一 Choreographer 帧关闭。
- 修改文件：`Launcher.smali`、`view/vc.smali`、`MaintainedLauncherSettingsHost.java`、`BadgeBridge.java`。

## 天气和角标的恢复开销

### 原版 Settings

- 文件：`build/decompiled_theme_check/com.android.settings-100/smali/com/android/settings/AppIconsSettingsFragment.smali` 及其点击监听。
- 语义：动态天气/日历由 `update_icon` 对应设置链控制；定位权限属于天气设置、启用自动定位或主动刷新，不属于普通 HOME 恢复。

### 原版 Launcher 接收和场景

- 动态图标继续复用原版 `LauncherReceiver -> DatabaseHandler/DatabaseUpdater -> Cell/PageView -> ActiveIcon/WeatherView/CalendarView`。
- 角标计数继续通过原版广播接收和现有场景节点更新；兼容服务不建立第二套桌面数据库，也不执行全量场景重建。

### 当前差异

- `WeatherBridge.onLauncherResume()` 原先每次恢复扫描全部 Launcher Activity、加载应用 Label，并可能在 HOME 中申请定位权限；小时任务关闭开关后仍会继续续约。
- `BadgeBridge.replay()` 原先每次恢复都触发，并在 1500 ms 后再次请求通知监听服务绑定；服务每次 rebuild 会重发所有包的计数。

### 最小修复

- WeatherBridge 自身先检查动态开关；关闭时不扫描、不读 Label、不定位、不排周期任务、不联网。天气组件只在首次需要时解析，并由包增删替换变化及 Profile/分身变化使缓存失效；只有厂商天气命名空间候选才加载 Label。
- HOME 恢复不再申请定位权限；周期任务执行时重新检查开关，关闭后停止续约。
- Launcher 生命周期只通过首帧后的 `applyBadgeIfDirty() -> replayIfDirty()` 进入角标回放；角标关闭、无通知访问权限、服务已同步或持久计数版本未变化时直接返回。
- 通知监听服务比较新旧包计数，只向原版广播受影响包；删除 1500 ms 的第二次 rebind。
- 修改文件：`WeatherBridge.java`、`SmartisanInstallManager.java`、`MaintainedLauncherSettingsHost.java`、`BadgeBridge.java`、`SmartisanBadgeListenerService.java`。

## 12/20 宫格配置和原版迁移（进行中）

### 原版 Settings

- `LauncherPreview` 点击通过 `onLauncherTypeChanged(int)` 传递外部宫格模式；当前普通 Android 设置宿主显示 12/20 单元数并保留原版 20→12 拆分提示。
- 主配置为 `com.smartisanos.launcher_prefs/prefs_key_launcher_mode`；Settings.Global 只作有权限时的镜像。

### 原版数据库和场景

- 外部模式先通过原版 `Constants.getPageModeFromMode()` 转换；12 对应内部 12，20 对应内部 9。
- `DatabaseHandler.mWorker` 中先执行 `N.d(context,newPageMode)`，再执行原版 `F.i(oldPageMode,newPageMode)`。12→20 不重排；20→12 的拆分、隐藏/加密板块、文件夹和顺序全部保留原版算法。
- `O.init()` 仍执行原版 `checkPageModeWithDevice()`；私有 12/20 存在时，multi mode 必须和设备适配后的基础页配对，不能信任残留的系统值。

### 当前状态

- 私有 commit、原版映射、数据库 worker 顺序、single/multi 配对、重启后持久化和最终 12/20 视觉已验证。
- 当前 Surface 上的原版 `J.onResume() -> v.run() -> J.Hv()` 能识别 10/13 complex mode 变化，但不会重建迁移前已绑定的 Cell 模型和 native batch 容量；局部调用 Cell/Page 私有刷新会出现旧模型空引用、native 数组越界或 GL 事件重入，不能替代完整场景生命周期。
- `Activity.recreate()` 与原版单 Activity 防护、进程级 EGL/SMEngine 全局状态不兼容；相关失败实验已全部清理。正常重载仍由独立进程兜底完成，12→20 实测 PID `17724 -> 17942`，所以阶段 3 和阶段 4 均保持进行中。

### 原版冷切换与受控冷重载结论

- 原版 Settings 的 `LauncherPreview` 使用 `content://com.smartisanos.launcher.exportprovider` 配置链；宫格相关代码没有找到结束、重启或按包名停止 Launcher 的实现。
- `Launcher.onDestroy()` 仅记录生命周期；原版 `J`/`vc` 包含 EGL 初始化和局部节点释放，但没有找到可在普通 Android 上安全复用的完整 Activity、EGL、SMEngine、PageView、模型及静态单例释放后重建链。
- 因此普通 Android 移植不能用 `Activity.recreate()` 处理宫格：它会与原版单 Activity 防护和进程级 native 状态竞争。当前选择独立私有 `:reload` 进程保持不透明窗口，旧主进程只在过渡窗口真实绘制后按精确 PID 结束；新 Launcher 的 GL 帧、Decor OnPreDraw 和下一 Choreographer 帧共同确认后才关闭过渡。
- 过渡 Loading 复用原版 `widget.c`、`SmartisanProgressDialog` 与 `loading_progress`，不新增自绘动画。token 仅通过显式 Intent 和包内 Broadcast 传递，不以多进程 SharedPreferences 作实时握手。
