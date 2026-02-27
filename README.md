# OpenClaw 配置备份

这个项目用于备份和恢复 OpenClaw 的核心配置文件。

## 包含的文件

| 文件 | 说明 |
|------|------|
| `openclaw.json` | 主配置文件，包含所有核心配置 |
| `models.json` | 模型配置 |
| `AGENTS.md` | Agent 工作空间配置 |
| `SOUL.md` | Agent 人格定义 |
| `USER.md` | 用户信息 |
| `TOOLS.md` | 工具配置 |
| `IDENTITY.md` | Agent 身份 |
| `HEARTBEAT.md` | 心跳任务配置 |
| `BOOTSTRAP.md` | 初始引导配置 |

## 恢复方法

当 OpenClaw 需要恢复时：

1. 将文件复制到对应位置：
```bash
cp openclaw.json ~/.openclaw/
cp models.json ~/.openclaw/agents/main/agent/
cp *.md ~/.openclaw/workspace/
```

2. 重启 OpenClaw 服务：
```bash
openclaw gateway restart
```

## 注意事项

- `credentials/` 目录包含敏感凭据，未包含在此备份中
- 日志文件未包含
- 根据需要可以添加更多文件
