# OpenClaw 配置备份 ⭐

本项目用于备份和恢复 OpenClaw 的核心配置文件。

---

## 📁 项目结构

```
openclaw-config/
├── README.md                    # 项目说明（你当前看的）
├── config/                      # 🔴 当前最新配置
│   ├── openclaw.json           # 主配置
│   └── models.json             # 模型配置
├── workspace/                   # 🔴 当前最新工作空间
│   ├── SOUL.md                 # Agent 人格
│   ├── AGENTS.md              # 工作规范
│   └── ...
├── daily-briefings/             # 科技简报
│   ├── TEMPLATE.md            # 简报模板
│   └── YYYY-MM-DD.md          # 每日简报
├── scripts/
│   └── restore.sh             # 恢复脚本
└── versions/                   # 📦 版本历史（完整副本）
    ├── 2026-02-27-v1/        # 第1个版本
    │   ├── VERSION.md        # 版本详情
    │   ├── config/            # 配置副本
    │   ├── workspace/         # 工作空间副本
    │   └── daily-briefings/  # 简报副本
    └── ...
```

---

## 🔍 如何加载指定版本

**比如你说"加载2026年2月27日的1号版本"**

```bash
# 1. 查看所有版本
cd ~/Projects/openclaw-config
ls versions/

# 2. 查看版本详情
cat versions/2026-02-27-v1/VERSION.md

# 3. 恢复该版本
cp versions/2026-02-27-v1/config/* ~/.openclaw/
cp versions/2026-02-27-v1/workspace/* ~/.openclaw/workspace/
```

---

## 📋 版本清单

| 版本 | 日期 | 说明 | 状态 |
|------|------|------|------|
| v1 | 2026-02-27 | 初始版本，15条科技简报+深度点评 | ✅ 已推送 |
| v2 | - | 优化简报格式（概览表） | ✅ 已推送 |
| v3 | - | 扩展至12条，含金融经济 | ✅ 已推送 |
| v4 | - | 扩展至15条，深度点评+股市分析 | ✅ 已推送 |

---

## 🚀 更新流程（暂停推送）

**每次更新后，我需要：**
1. 本地验证（JSON 格式、脚本语法）
2. 提交到本地 Git
3. 告诉你改动内容
4. **等你确认后**再推送到 GitHub

---

## 🧠 给未来 AI 的说明

如果需要恢复或理解某个版本：
1. 先读 `versions/YYYY-MM-DD-vN/VERSION.md` - 了解这个版本有什么
2. 再看对应的 `config/`、`workspace/`、`daily-briefings/` - 取需要的文件
3. 每个版本都是完整副本，可以独立使用
