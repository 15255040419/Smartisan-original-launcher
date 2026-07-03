<p align="center">
  <img src="clean_launcher/res/drawable/ic_launcher.png" width="108" alt="Smartisan Launcher">
</p>

<h1 align="center">Smartisan Launcher Original Port</h1>

<p align="center">
  <strong>天  生  骄  傲</strong>
</p>

<p align="center">
  <span>原版体验</span> ·
  <span>普通 Android 兼容</span> ·
  <span>跨 ROM 适配</span> ·
  <span>持续维护</span>
</p>

<p align="center">
  <img alt="Android" src="https://img.shields.io/badge/Android-6.0%2B-brightgreen?style=flat-square">
  <img alt="Version" src="https://img.shields.io/badge/version-v1.5.3-blue?style=flat-square">
  <img alt="Build" src="https://img.shields.io/badge/build-27-orange?style=flat-square">
  <img alt="Status" src="https://img.shields.io/badge/status-active-success?style=flat-square">
</p>

---

## 项目简介

**Smartisan Launcher Original Port** 是一个基于原版 Smartisan Launcher 的兼容性移植项目。

项目保留了 12 / 20 宫格、Dock、主题、文件夹、翻页动画、桌面设置、动态图标、通知角标、解锁动画等核心体验，并针对现代 Android 系统补齐必要的系统接口、权限逻辑、图标适配、应用分身、多用户环境和在线资源更新能力。

这个项目想做的，不只是让原版 Smartisan Launcher 重新运行起来，而是希望在今天越来越复杂、花哨的 Android 系统上，让人们重新看见 Smartisan OS 那套简洁、精致、统一，并始终认真对待细节的设计美学。

> 有些设计不会再流行，但它依然值得被重新点亮一次。

## 当前状态

当前版本：**v1.5.3 / versionCode 28**
支持系统：**Android 6.0 及以上**
测试环境：已在 **Android 12 / Android 15 / Android 16** 环境开展兼容测试。

不同厂商 ROM 在应用分身、后台限制、主题行为、解锁广播和系统入口暴露方式上仍可能存在差异，本项目会持续针对真实设备反馈进行适配。

## 核心特性

* **原版桌面体验**：保留 12 / 20 宫格、Dock、文件夹、多分辨率布局和经典交互逻辑。
* **原版多点手势**：支持四指横滑切换主题、双指捏合进入或退出多页总览/编辑状态、单指横滑翻页和桌面下滑搜索。
* **经典翻页动画**：支持默认、立体翻转、百叶窗、切牌等 Smartisan 风格动画。
* **主题与图标系统**：支持本地主题、在线主题、毛玻璃主题、透明主题兼容包、图标包和自定义图标。
* **在线图标库**：支持 GitHub / Gitee 在线图标资源，后台下载、本地缓存、自动刷新桌面。
* **图标适配**：针对相机、联系人、短信、文件管理、天气、应用商店、手机管家等系统应用进行图标映射。
* **通知角标与动态天气、日历**：支持动态天气、日历、通知角标、文件夹角标汇总和横扫清除。
* **应用分身与多用户**：识别厂商应用分身与多用户应用，并使用原版风格面具标记。
* **隐私板块与桌面设置**：支持页面隐藏、页面锁定和 Launcher 内置隐私密码。
* **解锁动画**：复用 Smartisan Launcher 内置动画引擎，兼容标准 Android 锁屏与主流 ROM 生命周期。
* **内置搜索页**：保留 Launcher 自绘搜索页，仅由桌面下滑手势触发。
* **在线更新机制**：通过 Gitee Release 提供更新资源，使用系统下载管理器完成安装。
