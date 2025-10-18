#!/bin/bash

echo "🚀 强制触发GitHub Pages部署..."

# 检查Git状态
echo "📋 检查Git状态..."
git status

# 添加所有文件
echo "📝 添加所有文件..."
git add .

# 提交更改
echo "💾 提交更改..."
git commit -m "feat: 强制触发GitHub Pages部署

- 添加新的工作流文件
- 修复Actions无记录问题
- 确保部署正常工作"

# 推送到GitHub
echo "📤 推送到GitHub..."
git push origin main

echo ""
echo "✅ 代码已推送到GitHub！"
echo ""
echo "🔍 请按以下步骤检查："
echo "1. 进入GitHub仓库：https://github.com/Zhaowy95/abtest-calculator"
echo "2. 点击 Actions 标签"
echo "3. 查看是否有新的工作流运行"
echo "4. 如果没有，请检查："
echo "   - 仓库是否为公开（Public）"
echo "   - Settings → Actions → General 是否启用了Actions"
echo "   - Settings → Pages 是否设置为GitHub Actions"
echo ""
echo "🛠️ 如果仍然没有工作流运行，请："
echo "1. 进入 Actions 页面"
echo "2. 点击 'Get started with GitHub Actions' 下方的链接"
echo "3. 或者手动点击 'pages.yml' 工作流并点击 'Run workflow'"
