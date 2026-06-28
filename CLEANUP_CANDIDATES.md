# 项目清理候选记录

记录时间：2026-06-26

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
