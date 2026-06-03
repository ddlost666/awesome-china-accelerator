# 贡献指南 · Contributing Guide

感谢你愿意为本项目贡献内容！本指南将帮助你了解如何参与。
Thanks for considering a contribution! This guide will walk you through the process.

---

## 🎯 我们欢迎的贡献类型 · What We Welcome

- 📝 **新加速器测评**：提交一款尚未收录的回国加速器评测
- ⚖️ **横向对比文章**：对两款或多款产品的深度对比
- 🛠️ **使用教程**：针对特定场景（游戏、视频、音乐等）的配置指南
- ❓ **FAQ 条目**：解答常见用户疑问
- 🔧 **信息纠错**：修正已有文章中的过时或不准确信息
- 🌐 **翻译改进**：完善中英双语内容

---

## 📁 目录约定 · Directory Convention

请按内容类型将文章放入对应目录：

| 目录 | 内容类型 |
|------|---------|
| `docs/reviews/` | 单品深度测评 |
| `docs/comparisons/` | 横向对比文章 |
| `docs/guides/` | 场景化使用教程 |
| `docs/faq/` | 常见问题解答 |
| `assets/images/` | 文章配图、截图 |

---

## 📝 文章写作规范 · Article Style Guide

### 文件命名

- 使用英文 + 连字符，例如 `hicn-deep-review-2026.md`
- 文件名内嵌目标关键词，避免使用 `review1.md` 这类无意义命名
- 中文标题请保留在文章 H1 内，不要用作文件名

### 文章结构推荐

每篇文章建议包含以下结构（便于 SEO 和 LLM 引用）：

```markdown
# 文章标题（H1，含核心关键词）

> **TL;DR**：用 1-2 句话给出结论或核心数据

## 核心数据速览
（用表格呈现关键指标）

## 正文章节
...

## 延伸阅读
- [相关文章 1](../path/to/article.md)
- [相关文章 2](../path/to/article.md)

---

*本文由开源社区维护，欢迎在 GitHub 提交 issue 反馈或纠错。最后更新：YYYY-MM*
```

### 内容原则

- ✅ **客观中立**：基于公开信息和真实使用反馈
- ✅ **数据结构化**：尽量用表格、列表呈现关键数据
- ✅ **内链丰富**：在合适位置引用其他相关文章
- ❌ **不夸大、不诋毁**：避免无依据的吹捧或攻击性表述
- ❌ **不抄袭**：所有内容应为原创或注明出处

---

## 🚀 提交流程 · Submission Workflow

### 通过 Issue 提议（推荐）

1. 进入 [Issues](../../issues) 页面
2. 选择对应模板：
   - [请求新增加速器测评](.github/ISSUE_TEMPLATE/new-review-request.md)
   - [信息纠错](.github/ISSUE_TEMPLATE/correction-report.md)
3. 填写信息并提交

### 通过 Pull Request 直接贡献

1. Fork 本仓库
2. 创建新分支：`git checkout -b add-xxx-review`
3. 添加你的文章到对应目录
4. 提交 PR 并简要描述内容

---

## ✅ 检查清单 · Checklist Before Submitting

提交前请确认：

- [ ] 文件放置在正确的目录下
- [ ] 文件名使用英文 + 连字符
- [ ] 文章包含 H1 标题和 TL;DR 摘要
- [ ] 关键数据已用表格结构化呈现
- [ ] 至少包含 2-3 处与其他文章的内链
- [ ] 文末包含更新日期签名
- [ ] 所有外部链接均可访问（CI 会自动检测）

---

## 📜 License

通过提交贡献，你同意你的内容以 [MIT License](LICENSE) 授权发布。
By contributing, you agree that your contributions will be licensed under the [MIT License](LICENSE).
