#!/bin/bash

# AB实验P值计算工具 - GitHub Pages 部署脚本

echo "🚀 开始部署AB实验P值计算工具到GitHub Pages..."

# 检查是否在Git仓库中
if [ ! -d ".git" ]; then
    echo "❌ 错误：当前目录不是Git仓库"
    echo "请先运行: git init"
    exit 1
fi

# 检查是否有未提交的更改
if [ -n "$(git status --porcelain)" ]; then
    echo "📝 发现未提交的更改，正在提交..."
    git add .
    git commit -m "feat: 更新AB实验P值计算工具"
fi

# 推送到GitHub
echo "📤 推送到GitHub..."
git push origin main

echo "✅ 部署完成！"
echo "🌐 您的网站将在几分钟后可用："
echo "   https://[您的用户名].github.io/abtest-calculator"
echo ""
echo "💡 提示："
echo "   - 如果这是第一次部署，请确保在GitHub仓库设置中启用了Pages"
echo "   - 选择Source为'GitHub Actions'"
echo "   - 部署通常需要2-5分钟完成"
