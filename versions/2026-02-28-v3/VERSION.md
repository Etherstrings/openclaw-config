# 版本信息 - 2026-02-28-v3

**版本**: v3  
**日期**: 2026-02-28  
**创建时间**: 2026-02-28 20:52 GMT+8  
**推送状态**: ✅ 已推送

---

## 这个版本是做什么的？

包含：
- 核心配置文件
- Agent 工作空间文件（含 A/B 路由协议）
- 科技简报 + GitHub 热门项目日报模板
- 定时任务配置（每天 9:00 自动推送）
- 晚间TODO提醒（每天 20:00）

---

## 这次改了什么？（变更日志）

| # | 变更 | 说明 |
|---|------|------|
| 1 | A/B 路由协议 | instructions.md 配置，投资问题用 B 的 Token 发送 |
| 2 | 定时任务 | 每日 9:00 自动生成并推送简报（已启用） |
| 3 | 日报格式优化 | 每条新闻含一句话+详细+点评，标注信源 |
| 4 | 晚间TODO提醒 | 每天 20:00 推送TODO清单 |
| 5 | 版本管理 | 创建 v3 版本，方便回滚 |

---

## 定时任务说明

```json
{
  "jobs": [
    {
      "id": "daily-tech-briefing",
      "schedule": "0 9 * * *",  // 每天 9:00
      "name": "每日科技简报",
      "enabled": true
    },
    {
      "id": "github-trending",
      "schedule": "0 9 * * *",  // 每天 9:00
      "name": "GitHub热门项目",
      "enabled": true
    },
    {
      "id": "晚间TODO提醒",
      "schedule": "0 20 * * *",  // 每天 20:00
      "name": "晚间TODO提醒",
      "enabled": true
    }
  ]
}
```

---

## A/B 路由协议

- **A** = 大总管（JusticeHelper），非投资问题自己回答
- **B** = 股票专家（JusticeStockHelper），投资问题用 B 的 Token 发送
- **Token**: `8708792117:AAFpFTDDbn0iFHZa6dp2NQZlyPFDP_Oqa30`
- **群ID**: `-1003762251026`

---

## 包含的文件

```
versions/2026-02-28-v3/
├── VERSION.md
├── config/
│   └── openclaw.json
└── workspace/
    ├── SOUL.md
    ├── AGENTS.md
    ├── USER.md
    └── ... (其他工作空间文件)
```

---

## 恢复命令

```bash
cp versions/2026-02-28-v3/config/* ~/.openclaw/
cp versions/2026-02-28-v3/workspace/* ~/.openclaw/workspace/
```

---

## 下次启动初始化指南

1. **读取 instructions.md** - 了解 A/B 路由协议
2. **检查 cron 任务** - `openclaw cron list` 确认任务已启用
3. **检查 TEMPLATE.md** - 日报格式在 `~/Projects/openclaw-config/daily-briefings/TEMPLATE.md`
4. **如有需要恢复版本** - 参考 README.md 的版本回滚说明
