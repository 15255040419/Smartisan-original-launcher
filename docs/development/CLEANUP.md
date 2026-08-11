# 项目清理候选记录

记录时间：2026-08-10

本文只记录“看起来可以清理或归档”的候选项，不代表已经删除。删除前建议先确认当前构建、对比、回滚和发布流程是否还依赖这些文件。

## 优先可清理候选

| 路径 | 约占用 | 判断 | 建议 |
| --- | ---: | --- | --- |
| `scratch/` | 1555.86 MB | 大体量临时工作目录，已在 `.gitignore` 中忽略。 | 若当前没有正在进行的实验产物需要保留，可删除或移到外部归档盘。 |
| `build/` | 1163.17 MB | 构建产物目录，已在 `.gitignore` 中忽略。 | 可删除；下次执行 `build.bat` 会重新生成。保留最新 `build/launcher-signed.apk` 时需先复制到发布目录。 |
| `decoded_desktop/` | 26.15 MB | 反编译中间目录，已忽略。 | 如果不再用于对照，可删除。 |
| `desktop_orig/` | 18.99 MB | 反编译/原始对照目录，已忽略。 | 如已有 `original_apks/` 或外部备份，可删除。 |
| `desktop_orig_norsc/` | 26.15 MB | 反编译对照目录，已忽略。 | 如不再调试资源表，可删除。 |
| `manifest_decode_keep/` | 32.76 MB | Manifest 调试反编译目录，已忽略。 | 当前 Manifest 问题收敛后可删除。 |
| `manifest_decode_test/` | 34.91 MB | Manifest 调试反编译目录，已忽略。 | 当前 Manifest 问题收敛后可删除。 |
| `clean_launcher_raw/` | 74.95 MB | 原始清理/反编译副本，已忽略。 | 确认没有作为当前 patch 参考后可删除。 |
| `quicksearch_decode/` | 约 27 MB | 历史独立 QuickSearch 的旧移植反编译目录；当前构建不引用，且 `APK_STRUCTURE.md` 已记录其应删除。 | 保留 `original_apks/quicksearch_phone_reference/` 后可删除；不要把它作为 pristine 来源。 |
| `build/q1*`、`build/q2*`、`build/q4*`、`build/q5*`、`build/q6*`、`build/q7*`、`build/q8d*` | 约数十 MB | 各阶段临时截图、XML、logcat 和设备 APK 副本；正式文档已记录结论，当前构建不引用。 | 建议先外部归档需要的证据，再按阶段批量删除；保留 `build/quicksearch_final/`。 |
| `build/q3_test_app_v1/`、`build/q3_test_app_v2/`、`build/q3-test-*.apk`、`build/q3-test.keystore` | 约几十 KB | 已结束的 `com.smartisanos.qstest` 测试 App 和测试签名材料；不属于生产源码，且用户已要求停止 Q3 安装测试。 | 优先删除；删除前可保留 Q3 文档中的静态/历史结论。 |

## 谨慎处理

| 路径 | 约占用 | 判断 | 建议 |
| --- | ---: | --- | --- |
| `release/` | 228.92 MB | 发布产物目录。 | 不建议直接删；先确认里面的 APK 是否已外部归档。 |
| `original_apks/` | 178.16 MB | 原始 APK 归档，已忽略。 | 不建议直接删；这是回溯和重新反编译的重要来源。 |
| `theme_raven_orig/` | 47.62 MB | 主题/资源对照目录，已忽略。 | 若近期仍需对照主题资源则保留，否则可外部归档。 |
| `clean_launcher/` | 36.82 MB | 清理后的对照目录，未在 `.gitignore` 中列出。 | 先确认来源和用途；若只是临时对照，可加入忽略并删除。 |
| `launcher-startup.png` | 4.79 MB | 截图/视觉记录，代码和构建均无引用。 | 已于 2026-06-28 删除，不影响 Launcher 启动。 |
| `tools/` | 14.76 MB | 顶层工具目录。 | 先确认脚本用途，不建议仅按大小删除。 |
| `.idea/` | 0.01 MB | IDE 本地配置。 | 通常不需要提交；可保留本机使用，或只清理 `workspace.xml`。 |
| `build/quicksearch_final/` | 当前最终运行证据 | Q8-C.2→Q11 的最终 emulator 日志、截图、PSS 和 installed APK 校验。 | 在最终报告需要回溯前保留；确认外部归档后再删除。 |

## 本轮 QuickSearch 文档结论

- `QUICK_SEARCH_AUDIT.md`、`QUICK_SEARCH_PERFORMANCE_BASELINE.md`、`QUICK_SEARCH_Q2...Q11` 和 `QUICK_SEARCH_FINAL_STATUS.md` 都是阶段审计/验收记录，不是重复临时文件，本轮不建议删除。
- 旧阶段文档中的 `UNVERIFIED`、安装失败和早期 SHA256 是历史快照；不能删掉，否则会丢失为什么后来修复的证据。最终状态以 `QUICK_SEARCH_FINAL_STATUS.md` 和 `DEVELOPMENT_LOG.md` 顶部为准。
- `QUICK_SEARCH_Q8C_SEARCH_SEMANTICS.md` 中 Q8-C.1 的“Q9 不启动”属于历史段落，已由末尾 Q8-C.2 runtime closure supersede；阅读时以顶部状态和第 12 节为准。

## 2026-08-10 清理结果

已将上述 154 个阶段临时目标移出项目目录，放入：

```text
E:\FANG\smartisan\quicksearch_cleanup_20260810
```

其中包括旧 `quicksearch_decode/`、Q3 测试 App/keystore、Q1-Q8D 截图/XML/logcat/中间 APK，以及历史采集脚本。由于当前执行环境禁止物理递归删除，归档目录仍可恢复；确认不需要后可在资源管理器中删除该归档目录。当时项目内保留了 `build/quicksearch_final/`、最终 APK、原版 APK、生产源码和全部文档；其后的冻结清理结果见下一节。

## 2026-08-11 QuickSearch FINAL FREEZE + CLEANUP

QuickSearch 已按 `QUICKSEARCH_FEATURE_FROZEN / EMULATOR_FULL_PASS / VIVO_RUNTIME_PASS`
冻结。`build/quicksearch_final/` 的 1,595 个阶段证据、重复截图/录像/XML/logcat、旧 APK
副本和视频分析依赖已删除，释放 294.51 MiB；最终设备、结果、APK SHA 与防回归边界收口到
`QUICK_SEARCH_FINAL_STATUS.md`，不在仓库强行保留二进制截图。

保留的 QuickSearch 文档只有：

- `QUICK_SEARCH_FINAL_STATUS.md`：当前生产架构、功能、验证、冻结规则和最终 APK。
- `QUICK_SEARCH_AUDIT.md`：原版调用链与资源/行为基线。
- `DEVELOPMENT_LOG.md`：完整历史过程和阶段结论。

已删除 15 份被 `DEVELOPMENT_LOG.md` 与最终状态覆盖的 Q1-Q12 阶段流水文档。生产可达性审计后，
删除零引用的 `OriginalSearchBackgroundSession`，并移除设置宿主中没有 Intent/Manifest/反射生产者
的 `launcher_original_qs_preview` 诊断跳转。未删除原版参考 APK、
`original_apks/quicksearch_phone_reference/`、`build/decompiled_theme_check/`、生产 Contacts/图标
水合/增量查询/手势代码，或其他专项 build 产物。

## 已明确忽略但需要注意的新资源

`.gitignore` 当前忽略 `*.png`，所以以下新增资源不会自动出现在 `git status` 中，但它们已经参与 `build.bat` 的资源构建：

- `launcher/tools/maintained_settings_res/res/drawable-xxhdpi-v4/privacy_password_lock_icon.png`
- `launcher/tools/maintained_settings_res/res/drawable-xxhdpi-v4/btn_0_classic_dark.9.png`
- `launcher/tools/maintained_settings_res/res/drawable-xxhdpi-v4/btn_1_classic_dark.9.png`
- `launcher/tools/maintained_settings_res/res/drawable-xxhdpi-v4/btn_2_classic_dark.9.png`
- `launcher/tools/maintained_settings_res/res/drawable-xxhdpi-v4/btn_3_classic_dark.9.png`
- `launcher/tools/maintained_settings_res/res/drawable-xxhdpi-v4/btn_4_classic_dark.9.png`
- `launcher/tools/maintained_settings_res/res/drawable-xxhdpi-v4/btn_5_classic_dark.9.png`
- `launcher/tools/maintained_settings_res/res/drawable-xxhdpi-v4/btn_6_classic_dark.9.png`
- `launcher/tools/maintained_settings_res/res/drawable-xxhdpi-v4/btn_7_classic_dark.9.png`
- `launcher/tools/maintained_settings_res/res/drawable-xxhdpi-v4/btn_8_classic_dark.9.png`
- `launcher/tools/maintained_settings_res/res/drawable-xxhdpi-v4/btn_9_classic_dark.9.png`
- `launcher/tools/maintained_settings_res/res/drawable-xxhdpi-v4/btn_delete_classic_dark.9.png`
- `launcher/tools/maintained_settings_res/res/drawable-xxhdpi-v4/btn_down_classic_dark.9.png`

如果要提交这些资源，需要使用 `git add -f`。

## 建议清理顺序

1. 先保留 `release/` 和 `original_apks/`，删除或外部归档 `scratch/`、旧反编译目录和 Manifest 测试目录。
2. 删除 `build/` 前先确认最新签名 APK 已复制到需要的位置。
3. 新增 PNG 资源如果确认要长期保留，应先 `git add -f`，再考虑修改 `.gitignore` 规则。
