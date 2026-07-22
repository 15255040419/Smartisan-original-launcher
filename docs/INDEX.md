# Smartisan Launcher 文档索引

这里集中放置项目专项文档。根目录只保留项目入口和 AI 工作规则，详细资料按职责归档。

## 必读入口

1. [README.md](../README.md)：项目介绍、当前能力、版本和兼容基线。
2. [AGENTS.md](../AGENTS.md)：Codex / AI 修改项目时必须遵守的工作规则。
3. [MEMORY.md](../MEMORY.md)：长期有效的项目事实、稳定决策和兼容性结论。

## 开发

- [DEVELOPMENT_LOG.md](development/DEVELOPMENT_LOG.md)：BUG 根因、修复方式、验证过程、回归注意和倒序每日记录。
- [LAUNCHER_FIX_AND_OPTIMIZATION_PLAN.md](development/LAUNCHER_FIX_AND_OPTIMIZATION_PLAN.md)：Launcher 启动、重载、宫格和主题专项的阶段计划与验收条件。
- [SETTINGS_MODERNIZATION_PLAN.md](development/SETTINGS_MODERNIZATION_PLAN.md)：设置系统现代化的分阶段施工计划、依赖、验证和回退条件。
- [ORIGINAL_SETTINGS_BEHAVIOR_MATRIX.md](development/ORIGINAL_SETTINGS_BEHAVIOR_MATRIX.md)：设置项当前链路、原版行为、Launcher 接收入口与 UNKNOWN 清单。
- [CLEANUP.md](development/CLEANUP.md)：清理和归档候选项。记录候选，不代表可以直接删除。

## 构建

- [BUILD_GUIDE.md](build/BUILD_GUIDE.md)：Windows / PowerShell 构建、JDK / SDK、版本写入、Manifest 注入、签名和产物验证。

## 架构与资源

- [APK_STRUCTURE.md](architecture/APK_STRUCTURE.md)：原版 APK、反编译目录、主题包身份、构建产物和 Release 资产规则。
- [SETTINGS_ARCHITECTURE.md](architecture/SETTINGS_ARCHITECTURE.md)：设置 UI、原版 Bridge、Launcher Core 与平台兼容层的稳定边界。
- [icons/README.md](../icons/README.md)：在线图标命名、资源要求、加载顺序和索引生成规则。

## 参考目录

- `launcher/`：当前可编辑构建源码。
- `clean_launcher/`：原版干净参考目录。
- `clean_launcher_raw/`：原始 raw 反编译参考目录。
- `build/decompiled_theme_check/com.smartisanos.launcher-3/`：原始 APK 反编译缓存。
- `E:\FANG\smartisan\smartisan-launcher-maintained`：设置页和兼容实现参考项目，不是当前构建源码。

## 预留分类

`compatibility/`、`theme/`、`icon/`、`reference/` 已建立为后续专项资料的归档位置。新增文档时优先放入对应目录，并在本索引登记；不要再把专项文档直接放到根目录。
