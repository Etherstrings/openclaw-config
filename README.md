# OpenClaw 配置备份 ⭐

本项目用于备份和恢复 OpenClaw 的核心配置文件。

---

## 📁 项目结构

```
openclaw-config/
├── README.md                    # 项目说明
├── config/                      # 🔴 当前最新配置
│   └── openclaw.json           # 主配置
├── workspace/                   # Agent工作空间
├── daily-briefings/             # 科技简报
│   ├── TEMPLATE.md            # 简报模板
│   └── YYYY-MM-DD.md          # 每日简报
├── github-trending/             # GitHub热门
│   ├── TEMPLATE.md            # 模板
│   └── YYYY-MM-DD.md          # 每日热门
├── scripts/
│   └── restore.sh             # 恢复脚本
└── versions/                   # 📦 版本历史
    ├── 2026-02-27-v1/        # 初始版本
    ├── 2026-02-28-v2/        # A/B路由+日报优化
    └── 2026-02-28-todo/      # 晚间TODO提醒
```

---

## 📋 版本清单

| 版本 | 日期 | 说明 | 状态 |
|------|------|------|------|
| v1 | 2026-02-27 | 初始版本，15条科技简报+深度点评 | ✅ |
| v2 | 2026-02-28 | A/B路由协议+日报格式优化 | ✅ |
| **todo** | **2026-02-28** | **新增晚间TODO提醒（20:00）** | ✅ 最新 |

---

## 🚀 快速初始化指南（下一次启动时）

### 步骤 1：加载 A/B 路由协议
```bash
cat ~/.openclaw/instructions.md
```

### 步骤 2：检查定时任务
```bash
openclaw cron list
```
确认任务：
- 每日科技简报（9:00）
- GitHub热门项目（9:00）
- 晚间TODO提醒（20:00）← 新增

### 步骤 3：查看日报模板
```bash
cat ~/Projects/openclaw-config/daily-briefings/TEMPLATE.md
```

---

## 🔍 恢复指定版本

```bash
cd ~/Projects/openclaw-config
cat versions/2026-02-28-todo/VERSION.md
cp versions/2026-02-28-todo/openclaw.json ~/.openclaw/
```

---

## 🧠 给未来 AI 的说明

1. 先读 `versions/日期-名称/VERSION.md` - 了解版本更新内容
2. 关注 README.md 的版本清单 - 快速找到最新版本
3. 检查 cron 任务 - 确认定时任务状态
