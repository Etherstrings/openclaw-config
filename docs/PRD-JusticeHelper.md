# JusticeHelper PRD - 投资问答分流系统

> 本文档描述了让 OpenClaw 实现投资问答分流功能的完整方案

---

## 📋 需求概述

### 背景
- 用户有一个「大总管」机器人 A (JusticeHelper)
- 用户有一个「股票专家」机器人 B (JusticeStockHelper)
- A 和 B 都在同一个群组里
- Gateway 只支持注册一个机器人，所以需要在 A 的配置中维护 B 的 token

### 目标
- A（我）作为大管家，判断问题类型
- 投资类问题 → 转发给 B 回答
- 非投资类问题 → A 自己回答

---

## 🔧 角色分工

| 机器人 | Token | 角色 | 职责 |
|--------|-------|------|------|
| A | 8207709005:AAHNtQ2Q9B4lnluZyB8Aw2y_xlt_Nacv0yY | 大总管 | 回答非投资问题 |
| B | 8708792117:AAFpFTDDbn0iFHZa6dp2NQZlyPFDP_Oqa30 | 股票专家 | 回答投资问题 |

---

## 📝 实现步骤

### 步骤 1：更新配置文件

在 `~/.openclaw/openclaw.json` 中添加：

```json
{
  "justiceHelper": {
    "enabled": true,
    "stockBotToken": "8708792117:AAFpFTDDbn0iFHZa6dp2NQZlyPFDP_Oqa30",
    "groupId": "需要获取并填入"
  }
}
```

### 步骤 2：获取群组 ID

需要在群组中发送一条消息，然后通过 Telegram API 获取群组 ID。

### 步骤 3：编写转发逻辑

编写一个 Skill 或 Hook，实现：

1. **监听群组消息**
   - 检测是否被艾特（@JusticeHelper）
   
2. **判断问题类型**
   - 投资关键词：股票、基金、A股、港股、美股、ETF、加密货币、理财、收益率、持仓、买入、卖出、财报、大盘、指数、IPO、北向资金、南向资金、量化、债券等
   - 如果匹配 → 转发给 B
   - 如果不匹配 → A 自己回答

3. **转发给 B**
   - 调用 Telegram API：
   ```
   POST https://api.telegram.org/bot<BOT_TOKEN>/sendMessage
   {
     "chat_id": "<群组ID>",
     "text": "<原始问题>",
     "reply_to_message_id": "<原始消息ID>"
   }
   ```

---

## 📁 需要修改的文件

| 文件 | 操作 |
|------|------|
| `~/.openclaw/openclaw.json` | 添加 justiceHelper 配置 |
| 创建 `skills/justice-helper/SKILL.md` | 编写转发逻辑 |

---

## ⚠️ 注意事项

1. **Gateway 限制**：一个 Gateway 只能注册一个机器人，所以 B 的 token 需要手动维护在配置中
2. **API 频率限制**：注意 Telegram API 的发送频率限制
3. **错误处理**：转发失败时要有降级处理

---

## 📌 回溯信息

**如果我崩溃了，按照以下步骤继续：**

1. **打开仓库**: https://github.com/Etherstrings/openclaw-config
2. **找到版本**: `v2026-02-28-prd-001` 或查看 `docs/PRD-JusticeHelper.md`
3. **继续执行**:
   - 阅读 PRD 文档
   - 按「实现步骤」操作
   - 先在测试环境验证

---

**创建时间**: 2026-02-28 00:19 GMT+8
**版本**: v2026-02-28-prd-001
