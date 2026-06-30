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

1. Gitee `main` 分支镜像。
2. GitHub `main` 分支镜像。
3. 两个镜像都失败时使用应用原图。

成功下载后写入桌面本地缓存；失败记录保留七天，避免每次启动重复请求。
更新同名图片后，如需立即让已下载用户刷新，应递增代码中的缓存目录版本，
例如从 `online_icon_cache_v1` 改为 `online_icon_cache_v2`。
