# 版本信息 - 2026-02-28-todo

**版本**: todo  
**日期**: 2026-02-28  
**创建时间**: 2026-02-28 20:54 GMT+8  
**推送状态**: ✅ 已推送

---

## 这个版本是做什么的？

今天（2026-02-28）的主要更新：**新增晚间TODO提醒功能**

---

## 这次改了什么？（今日更新）

| # | 变更 | 说明 |
|---|------|------|
| 1 | 晚间TODO提醒 | 新增定时任务，每天20:00自动推送TODO清单到群里 |
| 2 | TODO内容 | 包含自媒体选题、金融知识、科技技能、副业方向 |

---

## 和之前版本的区别

| 版本 | 日期 | 主要内容 |
|------|------|----------|
| v1 | 2026-02-27 | 初始版本，科技简报+GitHub热门 |
| v2 | 2026-02-28 | A/B路由协议+日报格式优化 |
| **todo** | **2026-02-28** | **新增晚间TODO提醒（20:00）** |

---

## 定时任务现状

```json
{
  "jobs": [
    {
      "id": "daily-tech-briefing",
      "schedule": "0 9 * * *",
      "name": "每日科技简报",
      "enabled": true
    },
    {
      "id": "github-trending",
      "schedule": "0 9 * * *",
      "name": "GitHub热门项目",
      "enabled": true
    },
    {
      "id": "晚间TODO提醒",
      "schedule": "0 20 * * *",
      "name": "晚间TODO提醒",
      "enabled": true
    }
  ]
}
```

---

## A/B 路由协议（无变化）

- **A** = 大总管（JusticeHelper），非投资问题自己回答
- **B** = 股票专家（JusticeStockHelper），投资问题用 B 的 Token 发送
- **Token**: `8708792117:AAFpFTDDbn0iFHZa6dp2NQZlyPFDP_Oqa30`
- **群ID**: `-1003762251026`

---

## 恢复命令

```bash
cp versions/2026-02-28-todo/openclaw.json ~/.openclaw/
```
