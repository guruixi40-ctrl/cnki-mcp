# 项目 Skills

本目录下的每个子目录是一个 Claude Code skill（入口为各自的 `SKILL.md`），在本仓库中启动 Claude Code 时会自动加载。

| Skill | 来源 | 版本 | 用途 |
|---|---|---|---|
| [paper-write-4ss](./paper-write-4ss/SKILL.md) | [JingYangYuan/paper-write-4ss](https://github.com/JingYangYuan/paper-write-4ss) | `8f33bd4` | 中文社会科学论文章节写作、润色、语言扫描 |

## 添加新 skill

1. 将 skill 目录（含 `SKILL.md`，不含 `.git`）复制到 `.claude/skills/<skill-name>/`
2. 在上表中登记来源与版本
