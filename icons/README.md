# 在线图标库

桌面按 Android 包名直接查找 PNG：

```text
icons/drawable/<packageName>.png
```

例如：

```text
icons/drawable/com.tencent.mm.png
icons/drawable/com.tencent.wework.png
```

## 图片要求

- PNG，建议 256×256 或 512×512。
- 必须保留透明背景；不要把截图背景、网格或白底一起放入图片。
- 单个文件不超过 512 KiB，边长 48–1024 px。
- 文件名必须使用应用的真实包名，区分大小写。

## 加载顺序

1. Gitee 下载镜像仓库 `Smartisan-original-launcher-download` 的 `master` 分支。
2. GitHub `main` 分支镜像。
3. 两个镜像都失败时使用应用原图。

首次识别使用 6 个有限并发后台任务下载，不阻塞 Launcher 模型和数据库初始化。成功下载后写入桌面本地缓存，并在缓存写入进入短暂静默期后合并刷新桌面；后续下载批次仍可再次触发刷新。失败记录保留七天，避免每次启动重复请求。
更新同名图片后，如需立即让已下载用户刷新，应递增代码中的缓存目录版本，
例如从 `online_icon_cache_v3` 改为 `online_icon_cache_v4`。

## 系统应用自适应

不同厂商的系统应用包名并不统一。Launcher 会先确认目标是系统应用或更新后的系统应用，再按包名、Activity 名称和系统应用标签识别相机、相册、浏览器、联系人、短信、邮件、计算器、文件管理、指南针、录音、音乐、视频、天气、便签、设置、安装器和 SIM 工具包，并映射到本目录中的锤子标准图标。电话与联系人可能来自同一包，最终按“桌面标题 > Activity > 包名”分流，不共享包级图标。第三方同名应用不会套用该映射。

日历和时钟继续使用 Launcher 已有的动态日期 / 指针实现，不会被静态在线图片覆盖。

新增或替换图片后执行：

```powershell
python tools/generate_icon_index.py
```
