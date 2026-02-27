# OpenClaw 配置备份

本项目用于备份和恢复 OpenClaw 的核心配置文件，确保每次"崩溃"后能快速恢复。

---

## 📁 项目结构

```
openclaw-config/
├── README.md          # 你现在看的文件
├── config/            # 核心配置文件
│   ├── openclaw.json # 主配置（通道、模型、Gateway等）
│   └── models.json   # 模型定义
├── workspace/         # Agent 工作空间文件
│   ├── AGENTS.md     # Agent 行为规范
│   ├── SOUL.md       # Agent 人格定义
│   ├── USER.md       # 用户信息
│   ├── TOOLS.md      # 工具配置
│   ├── IDENTITY.md   # Agent 身份
│   ├── HEARTBEAT.md  # 心跳任务
│   └── BOOTSTRAP.md  # 初始引导
└── scripts/           # 恢复脚本
    └── restore.sh    # 一键恢复脚本
```

---

## 🔍 快速理解（给未来的 AI）

### 这是什么？
这是一个 OpenClaw（AI 助手框架）的配置备份仓库。当主系统崩溃或需要重建时，可以从这里恢复。

### 关键文件作用
| 文件 | 作用 |
|------|------|
| `config/openclaw.json` | **最核心**：包含 Telegram 通道、模型供应商、Gateway 设置、认证等 |
| `config/models.json` | 定义了使用的 AI 模型（如 MiniMax M2.5） |
| `workspace/SOUL.md` | 定义了 AI 的人格、价值观、行为方式 |
| `workspace/AGENTS.md` | 定义了 AI 的工作规范（如何读文件、心跳机制等） |

### 恢复步骤
```bash
# 1. 进入项目目录
cd ~/Projects/openclaw-config

# 2. 一键恢复（推荐）
bash scripts/restore.sh

# 3. 重启服务
openclaw gateway restart
```

---

## 📝 更新日志

- **v2026-02-27**: 初始版本，包含核心配置和工作空间文件

---

## 🔧 手动恢复命令

如果不使用脚本：

```bash
# 恢复核心配置
cp config/openclaw.json ~/.openclaw/
cp config/models.json ~/.openclaw/agents/main/agent/

# 恢复工作空间
cp workspace/*.md ~/.openclaw/workspace/

# 重启
openclaw gateway restart
```

---

## ⚠️ 注意事项

- `credentials/` 目录（包含敏感凭据）未包含在此备份中
- 如有需要，手动备份 `~/.openclaw/credentials/`
