# OpenClaw 配置备份 ⭐

本项目用于备份和恢复 OpenClaw 的核心配置文件。

---

## 📁 项目结构

```
openclaw-config/
├── README.md                    # 项目说明（你当前看的）
├── config/                      # 🔴 当前最新配置
│   └── openclaw.json           # 主配置
├── workspace/                   # 🔴 当前最新工作空间
│   ├── SOUL.md                 # Agent 人格
│   ├── AGENTS.md              # 工作规范
│   ├── USER.md                # 用户信息
│   └── ...
├── daily-briefings/             # 科技简报
│   ├── TEMPLATE.md            # 简报模板
│   └── YYYY-MM-DD.md          # 每日简报
├── github-trending/             # GitHub热门
│   ├── TEMPLATE.md            # 模板
│   └── YYYY-MM-DD.md          # 每日热门
├── scripts/
│   └── restore.sh             # 恢复脚本
└── versions/                   # 📦 版本历史（完整副本）
    ├── 2026-02-27-v1/        # 第1个版本
    └── 2026-02-28-v2/        # 第2个版本（含A/B路由）
```

---

## 🚀 快速初始化指南（下一次启动时）

### 步骤 1：加载 A/B 路由协议
```bash
cat ~/.openclaw/instructions.md
```
这个文件定义了：
- A = 大总管（JusticeHelper），非投资问题自己回答
- B = 股票专家（JusticeStockHelper），投资问题用 B 的 Token 发送
- Token: `8708792117:AAFpFTDDbn0iFHZa6dp2NQZlyPFDP_Oqa30`
- 群ID: `-1003762251026`

### 步骤 2：检查定时任务
```bash
openclaw cron list
```
确认以下任务已启用：
- 每日科技简报（每天 9:00）
- GitHub热门项目（每天 9:00）

### 步骤 3：查看日报模板
```bash
cat ~/Projects/openclaw-config/daily-briefings/TEMPLATE.md
cat ~/Projects/openclaw-config/github-trending/TEMPLATE.md
```

### 步骤 4：如需恢复版本
```bash
# 查看所有版本
cd ~/Projects/openclaw-config
ls versions/

# 查看版本详情
cat versions/2026-02-28-v2/VERSION.md

# 恢复配置
cp versions/2026-02-28-v2/config/* ~/.openclaw/
cp versions/2026-02-28-v2/workspace/* ~/.openclaw/workspace/
```

---

## 🔍 如何加载指定版本

**比如你说"加载2026年2月28日的2号版本"**

```bash
cd ~/Projects/openclaw-config
cat versions/2026-02-28-v2/VERSION.md
cp versions/2026-02-28-v2/config/* ~/.openclaw/
cp versions/2026-02-28-v2/workspace/* ~/.openclaw/workspace/
```

---

## 📋 版本清单

| 版本 | 日期 | 说明 | 状态 |
|------|------|------|------|
| v1 | 2026-02-27 | 初始版本，15条科技简报+深度点评 | ✅ |
| v2 | 2026-02-28 | A/B路由协议+定时任务+格式优化 | ✅ 最新 |

---

## 🧠 给未来 AI 的说明

如果需要恢复或理解某个版本：
1. 先读 `versions/YYYY-MM-DD-vN/VERSION.md` - 了解这个版本有什么
2. 再看对应的 `config/`、`workspace/` - 取需要的文件
3. 每个版本都是完整副本，可以独立使用
