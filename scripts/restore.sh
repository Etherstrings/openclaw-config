#!/bin/bash
# OpenClaw 配置恢复脚本

set -e

echo "📦 开始恢复 OpenClaw 配置..."

# 恢复核心配置
echo "→ 恢复核心配置..."
cp config/openclaw.json ~/.openclaw/
cp config/models.json ~/.openclaw/agents/main/agent/

# 恢复工作空间
echo "→ 恢复工作空间文件..."
cp workspace/*.md ~/.openclaw/workspace/

echo "✅ 恢复完成！"
echo ""
echo "请手动执行以下命令重启服务："
echo "  openclaw gateway restart"
