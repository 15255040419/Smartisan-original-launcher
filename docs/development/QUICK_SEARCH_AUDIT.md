# Smartisan 原版 QuickSearch Q0 审计

审计日期：2026-08-09
审计阶段：Q0（仅恢复参考基线和静态审计）
结论：**Q0 原版 QuickSearch 主基线审计：PASS。** 已取得同版本 `3.0.0/101`、Smartisan 原厂签名确认的真机 `base.apk`，足以作为后续原版代码和行为主基线；历史 `quicksearch_decode/` 经比较是做过移植修改的辅助参考。旧 `com.smartisanos.quicksearch-101.apk` 二进制仍缺失，但该项调整为非阻塞项。

## 1. 范围和工作区保护

- 当前分支：`feature/magicflow-launcher-host`，相对远端 ahead 2。
- 审计开始前工作区已有 staged 改动：`MEMORY.md`、`docs/development/DEVELOPMENT_LOG.md`、多个 `build/launcher-*.apk`、`launcher/view/Lc.smali`、`EditModeHeaderCutoutCompat.java`。这些均视为用户已有改动，本阶段没有修改或回滚。
- 本阶段没有修改 `MaintainedLauncherSettingsHost`、Launcher 正式搜索入口、RootView、Magic Flow 或搜索 UI；没有构建、安装、提交或推送。
- `quicksearch_decode/` 已从删除提交 `b36f1a9a08a1e9c67c626ebd32489a2e30868559` 的父提交恢复。逐文件 Git blob 校验结果：4890 个历史文件，当前 4890 个，missing=0、mismatch=0、extra=0。
- `original_apks/com.smartisanos.quicksearch-101.apk` 在 Git 中没有对象记录（`original_apks/` 受忽略规则影响），当前工作区未找到旧路径的原始二进制。因此未用 apktool 重打包文件冒充旧 APK。
- 后续取得的 `original_apks/quicksearch_phone_reference/base.apk` 已单独保存，没有覆盖历史目录；并反编译到同目录的 `decoded/` 供只读比较。

## 2. 参考包和真机基线

### 2.1 旧 `quicksearch_decode` 可确认元数据

| 项目 | 结果 | 证据等级 |
| --- | --- | --- |
| apkFileName | `com.smartisanos.quicksearch-101.apk` | `apktool.yml` |
| package | `com.smartisanos.quicksearch` | Manifest |
| versionCode / versionName | `101` / `3.0.0` | `apktool.yml`；原 APK 未确认 |
| minSdk / targetSdk | `23` / `28` | 历史目录 Manifest、`apktool.yml`；与真机包不同 |
| DEX 数量 | 1 个 `smali/` 目录 | 由反编译结构推断；原 APK 未确认 |
| 文件 / smali | 4890 / 3863 | 当前恢复目录 |
| 资源目录 | 123 | 当前恢复目录 |
| layout / drawable / values 文件 | 196 / 259 / 129 | 当前恢复目录 |
| Activity | 5 | Manifest |
| Provider | 5 | Manifest |
| Service | 0 | Manifest |
| Receiver | 1 | Manifest |
| SHA256 | **未确认** | 原 APK 缺失 |

Manifest 组件：

- Activity：`TNTSearchActivity`、`SearchActivity`、`SearchSettingsActivity`、`SearchSmartisanSettingsActivity`、`FuzzyToneSettingsActivity`。
- Provider：`ShortcutsProvider`、`ApplicationsProvider`、`FuzzyToneProvider`、`QsbProvider`、`animation.LauncherCallProvider`。
- Receiver：`animation.BootReceiver`，监听 `BOOT_COMPLETED`。
- Manifest 未声明 Service。

### 2.2 锤子真机原版包

已取得 `original_apks/quicksearch_phone_reference/base.apk`。当前连接设备仍是 vivo X21A，无法从当前 ADB 会话复核其拉取过程，但 APK 本身的身份已经由二进制元数据和原厂签名确认：

| 项目 | 真机 `base.apk` |
| --- | --- |
| SHA256 | `EDF915A1CA745276F07538ABEDBBF43711B20426697E45A83A4C076ED0562D66` |
| 文件大小 | 6,339,498 bytes |
| package | `com.smartisanos.quicksearch` |
| versionCode / versionName | `101` / `3.0.0` |
| compileSdk / minSdk / targetSdk | `28` / `24` / `28` |
| launchable Activity | `com.android.quicksearchbox.SearchActivity` |
| Activity / Provider / Service / Receiver | 5 / 5 / 0 / 1 |
| DEX | 1 个 `classes.dex`，3,619,040 bytes |
| ZIP / res / layout / drawable 条目 | 2092 / 1748 / 196 / 1449 |
| native libs | 0 |
| APK Signature | v2、v3 验证通过 |
| 签名主体 | `O=Smartisan`，`EMAILADDRESS=smartisancm@smartisan.com` |
| 证书 SHA256 | `99CB9A0ECE39C4301E22150E5D7238EE9B4073042054C60BAAFD68F3A7C57574` |

这足以确认该文件是原版 Smartisan QuickSearch，而不是当前项目重打包产物。

### 2.3 真机原版与历史反编译目录差异

两者版本号相同，但内容不同，不能把历史 `quicksearch_decode/` 当作未修改原版：

- 真机重新反编译目录：6050 文件、3829 smali；历史目录：4890 文件、3863 smali。
- 按相对路径和 Git blob 比较：4847 个文件相同；历史独有 34 个；真机独有 1194 个；同路径内容不同 9 个。
- 真机包 `minSdkVersion=24`，历史目录被改为 23。
- 历史独有的 34 个 smali 主要是 `smartisanos.api.*`/T9/Settings stub，以及项目新增的 `LauncherIconBridge`，它们不在真机原版 DEX 中。
- 历史目录在多个图标路径注入 `LauncherIconBridge -> launcher.exportprovider/get_launcher_icon_method`；真机原版直接使用 `PackageManager.getApplicationIcon()`。
- 历史目录把一条原版 `SurfaceControl.screenshot + RenderScript blur` 路径替换成 1×1 透明 Bitmap，说明其背景代码已被兼容性修改。
- 历史目录删除了输入法 `focusIn()`，并在 `SearchActivity.f()` 开头插入立即 `return-void`；真机原版没有这些禁用修改。

因此从本节起，以 `quicksearch_phone_reference/decoded/` 为原版行为主证据；`quicksearch_decode/` 只用于研究旧移植修改。

## 3. 当前实现与原版入口差异

原版 `clean_launcher` 的 `e/e.Q(boolean)` 会检查 `Constants.FLING_DOWN_FOR_SEARCH`，做约 60 ms 的重复触发门控，取得 `ContentResolver` 后把 `e/d` 投递到后台线程；`e/d` 构造包含 `canScreenshot` 的 Bundle，并调用：

```text
content://com.smartisanos.quicksearch.provider.extra
method = request_show
extras.canScreenshot = boolean
```

当前 `launcher/e/e.Q()` 保留前置门控，但末端已经改为调用 `MaintainedLauncherSettingsHost.openLauncherSearch(context)`。因此下面的 Provider/Window/Activity 分析是原版参考链，不是当前正式搜索运行链。

## 4. 原版完整调用链

```text
Launcher gesture/system call
  -> com.smartisanos.launcher.e.e.Q(canScreenshot)
  -> background Runnable com.smartisanos.launcher.e.d
  -> ContentResolver.call(content://com.smartisanos.quicksearch.provider.extra,
                          "request_show", null, Bundle)
  -> com.android.quicksearchbox.animation.LauncherCallProvider.call()
  -> posted Runnable LauncherCallProvider$a
  -> b.a.a.c1.a（AnimationExecutor/静态窗口控制器）
  -> WindowManager.addView(ContainerView)
  -> BackgroundView + ForegroundView 过渡窗口
  -> 下拉进度动画到 300 px
  -> 启动 com.android.quicksearchbox.SearchActivity
  -> SearchActivity.setContentView(search_activity)
  -> SearchActivityViewSinglePane / SearchBar / Suggestions List
```

Provider 的真实类是 `com.android.quicksearchbox.animation.LauncherCallProvider`。其 `call()` 只识别字符串 `request_show`，还会检查 Smartisan PC/TNT 相关状态，然后把显示工作投递出去。

- `request_show`：进入静态窗口控制器，创建或复用全屏 `ContainerView`，准备截图背景并开始过渡动画，动画完成后启动 `SearchActivity`。
- `request_hide`：整个反编译目录和 Launcher 协议中均未找到对应 Provider 方法，**未实现/未确认**。
- `request_update`：未找到，**未实现/未确认**。
- `canScreenshot`：Launcher 确实写入 Bundle，但真机 v101 的 `LauncherCallProvider.call()` 没有读取 Bundle。可确认的结果是该参数在这份原版包的 Provider 路径中不起控制作用。

## 5. 页面承载、创建、预热和复用

原版不是单一承载方式，而是“两段式”：

1. 过渡阶段是 `TYPE_APPLICATION_OVERLAY`（数值 2038）的全屏 Window，根 View 为 `ContainerView`；通过 `WindowManager.addView()` 加入。
2. 真正搜索页面是 `SearchActivity`，Manifest 为 `singleTask`、竖屏，调用 `setContentView(@layout/search_activity)`，根搜索 View 是 `SearchActivityViewSinglePane`。

`BootReceiver` 在开机广播后调用窗口控制器的预创建分支：inflate `ContainerView`、设为 GONE、加入 WindowManager。因此预创建的是搜索过渡 Window，不是完整 `SearchActivity` 页面。

- 同一进程、字体缩放和语言不变时，静态 `ContainerView` 会复用，只更新状态、截图和动画，不会每次重新 inflate。
- 字体缩放或语言变化时会重新 inflate。反编译代码中该分支在把静态引用置空前未明确看到移除旧 View，存在重复 Window 风险，需真机验证。
- `SearchActivity` 首次实例化时会 inflate；由于 `singleTask`，热启动可能走 `onNewIntent` 复用 Activity。是否每次手势都触发新的 Activity 实例取决于任务栈状态，不能仅由静态代码绝对化。
- 设计上通过 `BOOT_COMPLETED` 和静态对象进行预热/复用，但 Android 随时可杀进程，所以“进程常驻”不能确认，只能确认其有驻留优化意图。
- 窗口控制器存在 `removeView -> reset -> GONE -> addView` 的隐藏/重挂逻辑；不是 Provider 的 `request_hide` 协议。

## 6. 应用数据加载和缓存

`ApplicationsProvider.onCreate()` 创建优先级 10 的 `HandlerThread("ApplicationsProviderUpdater")`，并用 `SQLiteDatabase.create(null)` 创建内存数据库：

```sql
applications(_id, name, alias, description, package, class, icon,
             launch_count DEFAULT 0, last_resume_time DEFAULT 0)
searchkey(_id, appid, keyword)
```

首次建立时后台执行全量扫描：

- `ACTION_MAIN + CATEGORY_LAUNCHER`；
- `PackageManager.queryIntentActivities()` 获取可启动 Activity；
- 读取 label、英文 alias、package/class、图标资源 URI；
- 为名称生成 `searchkey`；
- 在事务中写入内存 SQLite。

因此应用数据不是每次打开 `SearchActivity` 才全量从 PackageManager 读取。只要进程和 Provider 数据库仍在，查询直接走已有内存数据库。进程死亡后数据库消失，下次 Provider 创建时重建。

包变更通过动态 Receiver 监听 `PACKAGE_ADDED`、`PACKAGE_REMOVED`、`PACKAGE_REPLACED`，把包名提交给同一后台线程，执行按包删除并重新扫描该包；不是每次变更都做全量扫描。语言/配置相关重建路径存在，但具体所有触发条件尚未逐项真机确认。

限制：表中没有 `UserHandle`、user serial、profile 或 shortcut identity。扫描使用传统 `PackageManager`，没有找到 `LauncherApps` 的按用户枚举。这套实现不能直接满足现代多用户、应用分身和跨 Profile 正确性。

## 7. 图标加载和缓存

应用索引的 `icon` 字段保存由 Activity 图标资源生成的 URI，而不是在建库时把所有位图写入数据库。搜索展示层可从标准 QuickSearch `Source/IconLoader` 管线异步取得图标。

真机原版 `ForegroundContentView`、`SearchActivityView` 和相关 application helper 直接调用 `PackageManager.getApplicationIcon()`；没有 `LauncherIconBridge`、`get_launcher_icon_method` 或 `key_icon_png`。历史目录中的 Launcher 图标桥是后续移植修改，不能再作为“原版图标来源”证据。

真机原版仍会调用 Launcher ExportProvider 的 `get_folder_title_method`，用途是补充文件夹标题，不是取得应用图标。标准 QuickSearch `Source/IconLoader` 管线及进程内 Drawable 缓存仍存在，但其全部淘汰策略需要继续逐类确认。

## 8. 搜索、拼音、高亮和排序

应用搜索在 `ApplicationsProvider` 中使用 `applications` 与 `searchkey` 联查。建库时由中文转写/搜索键 helper 预计算关键词；代码包含模糊音设置 Provider。可以确认支持名称/alias 和预计算拼音关键词路径。

以下粒度在没有 Java 符号和原机运行输入/输出样例的情况下不能可靠断言：全拼与首字母各自的精确 token 编码、包含匹配与前缀匹配的全部优先级、模糊音每一条替换规则，均标记 **未确认**，不得提前写成 Q6 规格。

可确认的 SQL 排序片段是：

```text
MIN(token_index) != 0,
[启用历史时] last_resume_time DESC,
name
```

即先把 token 起始位置为 0 的结果放前，再按最近启动时间倒序（启用相应历史条件时），最后按本地化名称稳定排序。空查询的历史应用过滤包含 `last_resume_time > 0`。

结果高亮通过 QuickSearch 的 Suggestion formatter/UI span 管线实现；高亮最终落在 suggestion 文本 View，而不是改数据库内容。精确 span 类型和多 token 边界规则仍为 **未确认**。

## 9. 历史机制

包内保留 AOSP QuickSearchBox 风格的 `ShortcutRepository`、`ShortcutsProvider`、`ShortcutRefresher`：点击 suggestion 后会向 repository 报告，历史 suggestion 可被删除；应用表另有 `launch_count` 与 `last_resume_time` 用于应用历史/排序。

可以确认“suggestion shortcut 历史”和“应用最近启动字段”是两个相关但不完全相同的层次。历史数据库文件名、最大条数、淘汰期限及所有写入时机没有在本次静态审计中形成足够证据，标记 **未确认**。

## 10. 背景截图和模糊

真机原版确认过渡 Window 显示前会抓取 Launcher/当前屏幕背景：

- 旧路径反射调用 `SurfaceControl.screenshot(...)`；
- Android P/Q 路径依赖私有 `IWindowManager.screenShotAppWindows`、`GraphicBuffer`/硬件 Bitmap；
- 使用 `WindowManagerSmt.getThumbModeCrop()` 处理 Smartisan 单手模式区域；
- 其中一条快速路径按屏幕宽高的 1/10 调用 `SurfaceControl.screenshot()`，再以半径 25 执行模糊；其他路径还会生成缩小缓存供背景处理；
- 模糊使用 `RenderScript` + `ScriptIntrinsicBlur`，复用静态 RenderScript/Allocation 相关对象。

历史 `quicksearch_decode/` 已把上述 1/10 截图模糊路径替换为 1×1 透明 Bitmap；这属于旧兼容修改，不是原版行为。真机原版未找到 PixelCopy 等公开现代替代，上述隐藏截图 API、GraphicBuffer 和 RenderScript 在现代 Android 上都需要兼容层或替换，不能直接内置。

## 11. 键盘、HOME、BACK 和点击关闭

- 键盘：`search_activity.xml` 中 Smartisan `SearchBar` 配置初始可聚焦，Activity/View 管理焦点和输入法类型；实际首次 showSoftInput 的稳定时序及不同 ROM 行为为 **未确认**。
- BACK：`SearchActivity.onBackPressed()` 会先清理当前搜索/子状态；无可清理状态时交给 Activity 默认返回并结束页面。过渡 `ContainerView` 也拦截 BACK，但其反编译 runnable 的有效隐藏动作不完整，行为 **未确认**。
- HOME：Activity 注册 `CLOSE_SYSTEM_DIALOGS`/屏幕相关 Receiver，并受正常 Activity `onStop`/任务栈管理；按 HOME 后是否显式 `finish()`、仅进入后台还是同时重置 Window，静态证据不足，标记 **未确认**。
- 点击应用：SearchActivity 根据 suggestion 构造/启动 Intent，并报告点击历史；启动目标 Activity 后搜索 Activity 因任务栈切换进入后台。是否在每一种 suggestion 类型都显式 `finish()` 未完全确认。

## 12. 动画 Timeline

过渡 `ContainerView` 的主要进度范围是 0 到 300 px：

- 从 0 完整进入：首次/初始化路径 350 ms，复用路径 300 ms；
- Interpolator：`AccelerateInterpolator`；
- 从中间进度继续/回弹：duration 依据剩余像素差计算，代码中阈值为 150 px；短时快速手势（约 200 ms 内）可越过距离条件完成；
- 到达 300 后启动 `SearchActivity`，使用 `ActivityOptions`/自定义 0/0 Activity 动画，把视觉连续性交给截图过渡 Window；
- 退出动画的完整 Timeline、Activity 与 Window 的逐帧交接需要原机录屏/trace，当前为 **未确认**。

## 13. Smartisan 私有依赖

不能直接搬入普通 Android 的依赖包括：

- `smartisanos.api.WindowManagerSmt`、`ViewSmt`、`SmtPCUtils`、Smartisan NavigationBar/Settings API；
- `TYPE_APPLICATION_OVERLAY` 与 `INTERNAL_SYSTEM_WINDOW`、私有 Window flags、`setSystemUiDecoration`；
- 隐藏 `SurfaceControl.screenshot`、`IWindowManager.screenShotAppWindows`、`GraphicBuffer`；
- `RenderScript/ScriptIntrinsicBlur`；
- Smartisan `SearchBar` 等 framework/widget 资源；
- Launcher `exportprovider` 私有 call 协议；
- `SIDEBAR_SERVICE`、PC/TNT、跨用户、写 secure settings、start-any-activity 等系统/签名权限；
- 开机预热和老式 PackageManager 单用户模型。

## 14. 复用边界（仅审计结论，不是 Q1/Q8 方案）

可作为后续直接参考或小范围移植的部分：

- 原版 layouts、drawables、文案和搜索 View 层级；
- `ApplicationsProvider` 的后台初始化、内存快照、按包增量更新思想；
- 名称/alias/searchkey 数据模型与经验证后的匹配、排序规则；
- suggestion 历史接口与点击报告语义；
- 0..300 进度和 300/350 ms 动画参数；
- 现代内置搜索可以评估复用 Launcher 图标缓存，但这只能称为“现代一体化性能优化”，不能称为“恢复原版图标逻辑”。真机原版的主要路径是 `PackageManager.getApplicationIcon()` 与标准 QuickSearch `Source/IconLoader` 管线及缓存。

必须现代兼容或重写边界的部分：

- 独立 APK/跨进程 Provider 架构（最终目标是单 Launcher APK）；
- overlay Window 与私有系统权限；
- 截图、模糊、导航栏和单手模式私有 API；
- Smartisan framework widgets；
- 用户/profile/分身/shortcut 身份模型；
- 图标缓存键、主题失效、内存和生命周期；
- BootReceiver 常驻假设。

这不是对 Q8 最终承载方式的选择。原版证明真实搜索页是 Activity、过渡是 Window，但内置后选 Activity 还是 Launcher 内 View，必须等后续性能和兼容 Gate，Q0 不提前决定。

## 15. Q0 验收矩阵

| 项目 | 状态 |
| --- | --- |
| 文档、Git 状态、分支检查 | 通过 |
| 恢复并校验 `quicksearch_decode/` | 通过（4890/4890 blob 完全一致） |
| 恢复旧原始 QuickSearch APK | 非阻塞：旧路径原始二进制缺失，但已有同版本、原厂签名真机 `base.apk` |
| 取得原锤子手机参考 APK | 通过：`quicksearch_phone_reference/base.apk`，Smartisan 原厂签名确认 |
| 真机 APK SHA256/组件/DEX/资源 | 通过 |
| 两份 APK 的 SHA256 二进制对比 | 非阻塞且不可执行：旧 APK 二进制缺失 |
| 真机 APK 与历史 decode 源级差异 | 通过：4847 相同、34 历史独有、1194 真机独有、9 个同路径修改 |
| 原版 Launcher -> Provider -> Window -> Activity 链 | 静态审计完成 |
| 数据、图标、缓存、搜索、排序、历史、背景、动画 | 静态审计完成；细项未证实处已标“未确认” |
| 正式搜索代码改动 | 无 |
| 构建/安装/真机运行 | Q0 不要求；Q1-A 已另行构建、安装和测量 |
| Q0 总状态 | **PASS** |
| Q1 | 已执行 Q1-A；Q1-B 等待 Smartisan 真机，详见性能基线文档 |

历史旧路径 `com.smartisanos.quicksearch-101.apk` 的可信原始副本仍缺失，因此无法做两份 APK 的 SHA256 二进制比较；该缺口不再阻塞 Q0。真机 `base.apk` 已确认，后续原版行为以其和 `quicksearch_phone_reference/decoded/` 为主基线。
