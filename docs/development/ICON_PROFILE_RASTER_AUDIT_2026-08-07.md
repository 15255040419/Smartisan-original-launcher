# Icon, Profile and Backup Audit (2026-08-07)

## 当前状态（2026-08-07）

**普通 Static Application Composer：已接入，1080P 首轮真机通过。** DEFAULT、IMPROVED、PACK、CUSTOM/RESOURCE 和缓存回退现在共用同一最终合成入口；来源解析只负责提供 RAW source，统一执行 alpha visible-bounds、物理 artwork、分身面具、原版阴影和最终纹理缓存。

**DEFAULT-only optical normalization：失败实验，待收敛。** 最新真机证据进一步证明 IMPROVED 也存在视觉大小不一致，且来源切换不会同步刷新已有分身最终纹理，IMPROVED 分身还会丢失面具。后续不再维护 DEFAULT/IMPROVED 两条最终 Composer，必须收敛到唯一普通应用 Static Application Composer。

DEFAULT-only 方案保留为“失败实验，待收敛”历史记录，不再作为黄金基线。`DoppelgangerCompat`、Backup/Restore、Shortcut、Desktop Settings、ActiveIcon、Folder、当前分身面具外观和 Backup schema 均保持冻结。

本轮已在 vivo X21A Android 9、1080P 真机覆盖安装并冷启动；主应用与分身微信均重新生成纹理，分身面具可见，桌面设置仍为齿轮。DEFAULT/IMPROVED 十次完整来源切换矩阵和 1440 真机风险验证尚未完成。

本轮冻结的运行时架构：

```text
Resource / LayoutProperty
    -> current logical artwork
    -> optical normalization（当前尚未完成，普通 DEFAULT 仍存在可见边界不一致）
    -> current physical raster
    -> current profile badge once
    -> original shadow / SMEngine texture
```

特殊图标不进入普通静态 Composer：

* `Ec.wz()` / `composeSettingButtonTexture()` 负责桌面设置齿轮。
* 天气、日历继续走原版 ActiveIcon。
* 文件夹继续走原版 Folder 链。
* Shortcut 保存 Portable Source，最终 texture 只在当前设备重新生成。

## Backup audit

当前备份入口为 `DesktopBackupController`，恢复入口为 `DesktopRestoreController`。

备份归档包含：

* `manifest.json`
* `layout.json`：`table_pageinfos` 与 `table_iteminfos` 的可移植布局字段
* `settings.json`：白名单桌面外观偏好
* `theme.json`
* `icons/redirects.json` 与 `icons/custom/*.png`
* `icons/shortcuts.json` 与 `icons/shortcuts/source_*.png`
* `pending_items.json`、校验和及完成标记

`table_icons` 不作为普通图标缓存导出。Shortcut 的新格式优先导出 `shortcut_sources` 中的 Provider Source；旧格式或 Source 不可用时，才使用标记为 legacy 的旧 Bitmap 兜底。

## Identity rules

`identityKind` 写入布局项：

* `PRIMARY_APP`
* `DOPPELGANGER_APP`
* `PRIMARY_SHORTCUT`
* `DOPPELGANGER_SHORTCUT`

`sourceUserId` 和 `sourceProfileSerial` 仅为诊断字段。恢复时：

* 主用户强制映射到当前主用户。
* 分身通过当前 `LauncherApps.getProfiles()`、`launcher_profile_apps` 启用记录及当前包/Activity 重新解析。
* 目标没有对应分身时跳过该项，记录 `RESTORE_PROFILE_UNRESOLVED`，绝不回退到主用户。
* `launcher_profile_apps` 不进入普通 Portable Preferences 备份。
* Shortcut 还必须通过当前 Profile 的真实 pinned Shortcut 校验，否则记录 `SHORTCUT_SOURCE_UNAVAILABLE` 并跳过。

## Cache rules

恢复会清空并重建 `table_icons` 的设备相关内容；普通最终纹理不从备份恢复。旧 raster key 不再命中，当前 key 为 `raster:v8`。Shortcut Source、CUSTOM 原始 PNG、IMPROVED 源文件和图标包原始数据保留；在线下载缓存和最终面具纹理不进入备份。

## Device evidence

本轮在 vivo X21A / Android 9 上覆盖安装并冷启动验证：

* APK 安装返回 `Success`，Launcher PID 存活且进入 `.Launcher`。
* 桌面设置显示原版齿轮。
* 当前设备 `UserInfo{999:DOBULE_APP:20000030}`、`serialNo=10` 的微信分身显示一次面具，主微信不显示面具。
* 未完成 Android 11/12+、跨分辨率和完整 Backup -> Restore 真机矩阵。
