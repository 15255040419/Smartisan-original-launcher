# Smartisan QuickSearch Final Status

## Final Status

`QUICKSEARCH_FEATURE_FROZEN / EMULATOR_FULL_PASS / VIVO_RUNTIME_PASS`

QuickSearch 主功能在 2026-08-11 冻结。后续只处理已复现的生产回归；不新开 Q13/Q14，
不启动 Q8-E，也不为不可证明的原版可选字段继续考古。

## Production Architecture

```text
Desktop gesture
  -> OriginalSearchTransitionHost
  -> OriginalQuickSearchActivity
  -> SearchIndexRepository / SearchSnapshot
  -> SharedSearchMatchModel
  -> SearchIconBackend

Contacts opt-in
  -> ContactSearchRepository / ContactSearchSnapshot
```

正式入口始终在 Launcher 同 APK 内；没有独立 QuickSearch APK、第二进程或系统 overlay。

## Production Features

- 应用搜索：literal、拼音、首字母和多 token 匹配，使用共享不可变 `SearchSnapshot`。
- 原版视觉层：SearchBar、应用/联系人结果行、History、Top Apps、菜单确认框与 Q9 进出场。
- 增量查询：non-empty -> non-empty 保持 `QUERY -> QUERY`，只原子替换最新 generation 的 rows；
  不允许 clear -> blank -> results 闪动。
- 联系人：默认关闭；用户 opt-in 后才申请 `READ_CONTACTS`，后台建立 Snapshot，按键过程不查询
  `ContactsContract`。联系人无照片时复用当前 `com.android.contacts` 桌面图标。
- 图标：图标来源 generation 变化后必须重新 hydration，并重绑 Top Apps 与结果 Adapter。
- 手势：正常方向为上滑搜索、反转方向为下滑搜索；1000ms completion window 与镜像位置门槛是
  vivo 真机可靠性修复，不能恢复为原版 500ms 的拒绝阈值。

## Production Disabled

`SCREENSHOT_BACKGROUND=DISABLED_BY_DESIGN`

- `PixelCopy=0`、`capture=0`、`blur=0`、`screenshot bitmap=0`。
- 不恢复 Screenshot/Blur 异步交接；该实验会产生可见亮度闪动。
- 不恢复 per-key Provider/PackageManager/DB 扫描或 legacy full scan。

## Runtime Evidence

- Android 16 / API 36 模拟器：应用搜索语义、增量查询、History、IME/Back、结果启动、重开与
  生命周期稳定性通过；目标 FATAL/ANR/CME 为 0。
- vivo X21A / Android 9 / API 28：正式桌面主体 800ms 上滑可进入搜索，返回后连续 3/3 轮进入；
  ContactsContract opt-in 索引实际发布 `count=414`，查询有联系人结果；图标 hydration 完成，
  采集窗口未见 FATAL/ANR/CME/AndroidRuntime。
- 用户已确认当前真机 UI/交互基本没有问题。此结论是 `VIVO_RUNTIME_PASS`，不等同于全 ROM 或
  全 Android 版本通过。

## Compatibility

- API 23+：已实现。
- API 28：vivo X21A 运行时验证。
- API 36：模拟器运行时验证。
- 其他 API/ROM：`NOT_EXHAUSTIVELY_VALIDATED`。

## Non-blocking Reference Gaps

- Q1-B 原 Smartisan 真机性能对照：`REFERENCE_BENCHMARK_NOT_REQUIRED_FOR_RELEASE`。
- Q3 压力测试：`NON_BLOCKING`；不为关闭项目重新创建测试 App。
- `token_index`、`last_resume_time` 外部 writer、alias producer、FuzzyTones、Top Apps predictor
  producer/final ordering：`PRISTINE_OPTIONAL_UNCONFIRMED`。
- 未来更多来源（短信、便签、设置项等）：`OPTIONAL_FUTURE_EXTENSION`，不属于当前 QuickSearch。

## Frozen Rules

- 不恢复 Screenshot、PixelCopy 或 Blur 背景链路。
- 不恢复每次输入时的 Provider/PM/DB 扫描。
- 不恢复 non-empty 查询清空页面的中间帧。
- 不删除 Contacts opt-in、图标 generation hydration、共享 Snapshot/matcher 或手势可靠性修复。
- 原版行为依据继续查阅 `QUICK_SEARCH_AUDIT.md` 和
  `original_apks/quicksearch_phone_reference/`；阶段过程保留在 `DEVELOPMENT_LOG.md`。

## Final Artifact

2026-08-11 冻结构建：`v1.5.5 / 30`，SHA256
`C64FFE3493CC36D4EBE18F6B76BF4C41467556B67C47EC05F75CBF3DEC6853E6`；
`apksigner` 的 v1/v2/v3 均为 true。二进制 Manifest 已确认包含非导出的
`OriginalQuickSearchActivity` 与 `READ_CONTACTS`。
