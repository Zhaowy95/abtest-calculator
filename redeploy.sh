#!/bin/bash

echo "🚀 开始重新部署AB实验P值计算工具到GitHub Pages..."

# 检查是否在Git仓库中
if [ ! -d ".git" ]; then
    echo "❌ 错误：当前目录不是Git仓库"
    echo "请先运行: git init"
    exit 1
fi

# 检查是否有远程仓库
if ! git remote get-url origin >/dev/null 2>&1; then
    echo "❌ 错误：没有配置远程仓库"
    echo "请先运行: git remote add origin https://github.com/Zhaowy95/abtest-calculator.git"
    exit 1
fi

echo "📋 当前Git状态："
git status --short

# 添加所有文件
echo "📝 添加所有文件到Git..."
git add .

# 提交更改
echo "💾 提交更改..."
git commit -m "feat: 重新部署AB实验P值计算工具到GitHub Pages

- 更新GitHub Actions工作流配置
- 优化部署流程
- 添加备用部署方案
- 修复Pages访问问题"

# 推送到GitHub
echo "📤 推送到GitHub..."
git push origin main

echo ""
echo "✅ 重新部署完成！"
echo ""
echo "🔍 请按以下步骤验证部署："
echo "1. 进入GitHub仓库：https://github.com/Zhaowy95/abtest-calculator"
echo "2. 点击 Actions 标签查看部署状态"
echo "3. 进入 Settings → Pages 检查Pages设置"
echo "4. 等待2-5分钟后访问：https://zhaowy95.github.io/abtest-calculator"
echo ""
echo "🛠️ 如果部署失败，请检查："
echo "- 仓库是否为公开（Public）"
echo "- Pages设置中Source是否为GitHub Actions"
echo "- Actions权限是否已启用"
echo ""
echo "📞 如果问题仍然存在，请查看TROUBLESHOOTING.md文件"
