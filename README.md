# OpenClaw 配置备份 ⭐

本项目用于备份和恢复 OpenClaw 的核心配置文件，确保每次"崩溃"后能快速恢复。

---

## 📁 项目结构

```
openclaw-config/
├── README.md              # 项目说明
├── config/                # ⭐ 当前最新配置
│   ├── openclaw.json     # 主配置
│   └── models.json       # 模型配置
├── workspace/             # ⭐ 当前最新工作空间
│   ├── SOUL.md           # Agent 人格
│   ├── AGENTS.md         # 工作规范
│   └── ...
├── scripts/
│   └── restore.sh        # 恢复脚本
├── daily-briefings/       # 科技简报
└── versions/              # 📦 版本历史备份（完整副本）
    ├── 2026-02-27-v1/    # 第1个版本
    │   ├── VERSION.md    # 版本描述
    │   ├── config/       # 完整配置副本
    │   ├── workspace/    # 完整工作空间副本
    │   └── daily-briefings/
    └── ...
```

---

## 🔍 快速理解（给未来的 AI）

### 这是什么？
OpenClaw（AI 助手框架）的配置备份仓库，含完整版本历史。

### 关键文件
| 文件 | 作用 |
|------|------|
| `config/openclaw.json` | 最核心：Telegram、模型、Gateway |
| `versions/*/VERSION.md` | 每个版本的详细说明 |

### 如何查看历史版本？

**加载 2026年2月27日的第1个版本：**
```bash
cd ~/Projects/openclaw-config
ls versions/        # 查看所有版本
cat versions/2026-02-27-v1/VERSION.md  # 查看版本详情
```

**恢复指定版本：**
```bash
cp versions/2026-02-27-v1/config/* ~/.openclaw/
cp versions/2026-02-27-v1/workspace/* ~/.openclaw/workspace/
```

---

## 📝 版本规则

- **命名格式**: `YYYY-MM-DD-vN`（日期-版本号）
- **版本类型**: 
  - `v1`, `v2`... 同一天多个版本
  - 每次重要更新创建新版本
- **每个版本都是完整副本**，可独立恢复

---

## 🚀 更新流程

1. 修改 `config/` 或 `workspace/` 或添加 `daily-briefings/`
2. 本地验证（JSON 格式、脚本语法）
3. 创建新版本目录：`versions/YYYY-MM-DD-vN/`
4. 复制完整文件到版本目录
5. 填写 `VERSION.md`
6. 提交 + 打标签 + 推送

---

## 📦 当前版本

**最新**: `2026-02-27-v1`
- 包含：核心配置 + 工作空间 + 首日科技简报
- 查看详情：`cat versions/2026-02-27-v1/VERSION.md`
