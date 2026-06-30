<p align="center">
  <img src="clean_launcher/res/drawable/ic_launcher.png" width="96" alt="Smartisan Launcher">
</p>

<h1 align="center">Smartisan Launcher Original Port</h1>

<p align="center">
  将 Smartisan OS 经典桌面移植到普通 Android 设备，并持续完善新系统与主流 ROM 的兼容性。
</p>

## 项目简介

本项目以原版 Smartisan Launcher 为基础，保留 12 / 20 宫格、Dock、主题、文件夹、翻页动画和桌面设置等核心体验，同时补充普通 Android 环境缺失的系统接口与配套功能。

当前版本为 **v1.5.2（versionCode 27）**，支持 Android 6.0 及以上系统。已在 Android 12、Android 15 和 Android 16 环境开展兼容测试；不同厂商的应用分身、后台限制和主题行为仍可能存在差异。

## 主要功能

- 原版 12 / 20 宫格桌面、Dock、文件夹和多分辨率布局
- 本地与在线主题、毛玻璃主题及独立透明主题兼容包
- 默认、立体翻转、百叶窗、切牌等翻页动画
- 系统图标、改进版图标、图标包、自定义图标和 50%–150% 尺寸调节
- GitHub / Gitee 在线图标库，后台并发下载、本地缓存并自动刷新桌面
- 跨品牌系统应用图标适配，支持按包名、Activity 与桌面名称精确区分电话和联系人
- 动态日历、通知角标、文件夹角标汇总和横扫清除
- 多用户 / 应用分身发现、桌面显示与原版风格面具标记
- 页面隐藏与锁定、Launcher 内置隐私密码
- 原版 Smartisan 桌面解锁动画，兼容标准 Android 锁屏与解锁广播
- Launcher 内置自绘搜索页，仅由桌面下滑手势触发
- Gitee Release 在线更新和系统下载管理器安装

## 下载与安装

发行包通过 [Gitee 下载镜像](https://gitee.com/RANH-F/Smartisan-original-launcher-download/releases) 提供，源代码托管于 [GitHub](https://github.com/RANH-F/Smartisan-original-launcher)。

安装桌面主程序：

```powershell
adb install -r -d build\launcher-signed.apk
adb shell am start -n com.smartisanos.launcher/.Launcher
```

透明主题是独立 APK。需要使用透明主题时，再安装兼容包：

```powershell
adb install -r -d build\theme-trans-signed.apk
```

请勿在 Android 15 / 16 上安装 `original_apks/com.smartisanos.launcher.theme.trans.apk`。该文件仅用于原始资源研究；适配后的安装包是 `build/theme-trans-signed.apk`。

## 构建

### 环境要求

- Windows 10 / 11
- JDK 17
- Android SDK Platform 与 Build Tools
- Python 3（维护二进制 Manifest 时使用）

项目会优先读取 `JAVA_HOME`、`ANDROID_HOME` 和 `ANDROID_SDK_ROOT`，也支持 Android Studio 的常见安装路径。

执行：

```powershell
.\build.bat
```

主要产物：

| 文件 | 说明 |
| --- | --- |
| `build/launcher-signed.apk` | 已对齐并使用 v1/v2/v3 签名的桌面主程序 |
| `build/theme-trans-signed.apk` | 透明主题兼容包 |

当前桌面 APK 元数据：

| 项目 | 值 |
| --- | --- |
| applicationId | `com.smartisanos.launcher` |
| versionName | `v1.5.2` |
| versionCode | `27` |
| minSdkVersion | `23` |
| targetSdkVersion | `28` |
| compileSdkVersion | `36` |

构建后建议核对最终版本与签名：

```powershell
aapt2 dump badging build\launcher-signed.apk
apksigner verify --verbose build\launcher-signed.apk
```

## 在线资源

在线图标按 `icons/drawable/<packageName>.png` 组织。Launcher 优先访问 Gitee 下载镜像，失败时回退 GitHub；首次使用时采用有限并发后台下载，缓存写入完成后合并刷新桌面，不阻塞桌面初始化。普通应用以包名匹配；系统电话、联系人等同包多入口会继续结合 Activity 和桌面名称分流。在线图标缓存在应用私有目录，不会打入桌面 APK，因此不会增加安装包体积。维护说明见 [`icons/README.md`](icons/README.md)。

解锁动画复用原版 Launcher 内置动画引擎和宫格资源，无需安装额外锁屏 APK。开关位于“桌面设置 → 强迫症选项”，默认开启。普通 Android 通过 `SCREEN_OFF` / `USER_PRESENT` 接入原版动画状态机；针对部分 ColorOS、OriginOS 在 Launcher 成为默认 HOME 后跳过解锁广播的情况，另有基于 Activity 熄屏/恢复状态的兜底触发，并与原版广播握手去重，避免重复播放或把返回手势误判为解锁。

主题与软件更新同样由 Gitee 下载镜像提供。桌面更新只识别 `launcher-` 标签及主 APK，不会把主题包或透明主题包误作桌面更新。

## 已知限制

- 应用分身依赖厂商向 `LauncherApps` 暴露相应用户资料；不同 ROM 的用户 ID 和启动策略可能不同。
- 通知角标来自 Android 通知监听服务，无法读取应用私有未读数据库；未授权通知使用权时不会显示。
- 在线主题和软件更新需要用户在系统安装器中确认，普通应用无法静默安装。
- 天气相关资源仍保留原版线索，但尚未完成普通 Android 环境下的完整适配。

## 项目文档

- [`DEVELOPMENT_LOG.md`](DEVELOPMENT_LOG.md)：修复记录、实现决策与回归说明
- [`BUILD_AND_VERSION_NOTES.md`](BUILD_AND_VERSION_NOTES.md)：构建环境、签名和版本维护
- [`APK_INVENTORY.md`](APK_INVENTORY.md)：原始 APK、主题包与发布资产清单
- [`CLEANUP_CANDIDATES.md`](CLEANUP_CANDIDATES.md)：待清理文件和历史产物

## 版权说明

Smartisan、Smartisan OS 及相关图形资源的权利归其各自权利人所有。本项目用于兼容性研究与个人学习，不代表原厂官方发行。第三方应用图标的权利归对应开发者或权利人所有；发布和使用相关资源时请遵守适用的许可与法律要求。
