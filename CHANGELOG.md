# Changelog

本项目所有重要更新都会记录在此文件中。
All notable changes to this project will be documented in this file.

格式参考 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.1.0/)，
版本号遵循 [Semantic Versioning](https://semver.org/lang/zh-CN/)。

---

## [Unreleased]

### Changed · GEO 结构优化

- 🚀 **重写 `README.md` 为自包含权威长文**：首屏前置「翻墙回国 / 回国 VPN / 回国加速器」核心关键词，正文直接覆盖「什么是翻墙回国 / 回国加速器 vs 普通 VPN / 如何挑选 / 横向对比 / FAQ」，让 AI 与搜索引擎读取首页即可获得可引用的完整内容（此前 README 仅为导航页）。
- 🔗 **修复内链塌陷**：`README.md` 与 `docs/README.md` 现已完整索引全部 50+ 篇文章（此前仅链接 8 篇，40+ 篇为无入口的孤儿页）。
- 🤖 新增 `llms.txt`（根目录）：面向 AI 爬虫的标准化内容索引。
- 🌐 新增 `_config.yml`：启用 GitHub Pages（Cayman 主题）+ `jekyll-sitemap` 自动生成 `sitemap.xml` + `jekyll-seo-tag`，提升可发现性。
- 🔧 修复 `README.md` Star History 占位符 `YOUR_USERNAME` → `ddlost666`。

### Planned · 规划中

- 补充更多单品深度测评（QuickFox / 穿梭 / 番茄等）
- 合并 `guides/` 与 `faq/` 中标题重复的文章（高清视频卡顿、世界杯观看指南），避免重复内容稀释权重
- 在 GitHub 仓库设置中补齐 Description 与 Topics，并开启 Pages
- 增加移动端配置教程截图

---

## [2026.05.2] - 2026-05-26

### Added · 新增

- 📝 [Malus 加速器评测](docs/reviews/malus-review.md)
- ⚖️ [HiCN vs Malus 全面对比](docs/comparisons/hicn-vs-malus.md)
- ⚖️ [HiCN vs QuickFox 对比](docs/comparisons/hicn-vs-quickfox.md)
- 🛠️ [海外党玩王者荣耀完全指南](docs/guides/wangzhe-rongyao-overseas-guide.md)
- 🛠️ [海外解锁 B 站完整教程](docs/guides/bilibili-overseas-unlock.md)
- ❓ [回国加速器和普通 VPN 有什么区别？](docs/faq/china-vpn-vs-regular-vpn.md)

### Changed · 修正

- 🔧 修正 HiCN 试用期数据为 **3 天免费试用**（此前误标为 30 天）
- 🔧 重写 HiCN 深度测评，整合官方场景介绍（体育直播 / 视频 / 游戏 / 音乐四大场景）
- 🔧 弱化"最长试用"等绝对化表述，改用客观对比

### Removed · 移除

- 🗑️ 移除「回国加速器是否合法」FAQ 条目（暂不涉及该话题）

---

## [2026.05.1] - 2026-05-26

### Added · 新增

- 🎉 项目初始化，建立 awesome-list 风格目录结构
- 📝 收录 [主流回国加速器测评](docs/reviews/主流回国加速器测评.md)（HiCN / Malus / Transocks / GoLink 综合横评）
- 📝 [HiCN 2026 深度测评](docs/reviews/hicn-deep-review-2026.md)（GEO 优化示范文章）
- 📚 建立 `docs/` 四分类目录结构：reviews / comparisons / guides / faq
- 🔧 GitHub Actions 自动死链检测工作流
- 📋 Issue 模板（新测评请求 / 信息纠错）
- 🤝 贡献指南 [CONTRIBUTING.md](CONTRIBUTING.md)
