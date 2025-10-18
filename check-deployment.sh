#!/bin/bash

echo "🔍 检查GitHub Pages部署状态..."

# 检查工作流文件
echo "📁 检查工作流文件..."
if [ -f ".github/workflows/pages.yml" ]; then
    echo "✅ pages.yml 存在"
else
    echo "❌ pages.yml 不存在"
fi

if [ -f ".github/workflows/gh-pages-deploy.yml" ]; then
    echo "✅ gh-pages-deploy.yml 存在"
else
    echo "❌ gh-pages-deploy.yml 不存在"
fi

# 检查Git状态
echo ""
echo "📋 Git状态："
git status --short

# 检查远程仓库
echo ""
echo "🌐 远程仓库："
git remote -v

# 检查分支
echo ""
echo "🌿 当前分支："
git branch

# 检查最近的提交
echo ""
echo "📝 最近提交："
git log --oneline -5

echo ""
echo "🔧 如果Actions仍然没有记录，请检查："
echo "1. 仓库是否为公开（Public）"
echo "2. Settings → Actions → General 是否启用了Actions"
echo "3. Settings → Pages 是否设置为GitHub Actions"
echo "4. 是否有推送权限"
