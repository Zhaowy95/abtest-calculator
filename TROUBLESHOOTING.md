# 🔧 GitHub Pages 故障排除指南

## 问题：无法访问 https://zhaowy95.github.io/abtest-calculator

### 1. 检查仓库设置

#### 步骤1：验证仓库可见性
- 进入仓库：https://github.com/Zhaowy95/abtest-calculator
- 确保仓库是 **Public**（公开的）
- 如果是私有的，请改为公开

#### 步骤2：检查Pages设置
1. 进入仓库 **Settings** 页面
2. 找到左侧的 **Pages** 选项
3. 检查 **Source** 设置：
   - 如果显示 "Deploy from a branch"，请改为 **GitHub Actions**
   - 如果显示 "None"，请选择 **GitHub Actions**

### 2. 检查GitHub Actions

#### 步骤1：查看Actions状态
1. 在仓库中点击 **Actions** 标签
2. 查看是否有工作流运行记录
3. 如果显示红色❌，点击查看错误详情

#### 步骤2：手动触发部署
如果Actions没有自动运行，可以手动触发：
1. 进入 **Actions** 页面
2. 选择 "Deploy to GitHub Pages" 工作流
3. 点击 **Run workflow** 按钮

### 3. 常见错误及解决方案

#### 错误A：Repository not found
**原因**：仓库不存在或权限不足
**解决方案**：
- 检查仓库URL是否正确
- 确保仓库是公开的
- 检查仓库名称拼写

#### 错误B：Actions permissions denied
**原因**：GitHub Actions权限不足
**解决方案**：
1. 进入仓库 Settings → Actions → General
2. 选择 "Allow all actions and reusable workflows"
3. 保存设置

#### 错误C：Workflow file not found
**原因**：工作流文件不存在或路径错误
**解决方案**：
- 确保 `.github/workflows/deploy.yml` 文件存在
- 检查文件内容是否正确

### 4. 替代部署方案

如果GitHub Actions有问题，可以使用传统的分支部署：

#### 方案1：使用gh-pages分支
```bash
# 创建gh-pages分支
git checkout --orphan gh-pages
git rm -rf .
git add index.html
git commit -m "Deploy to GitHub Pages"
git push origin gh-pages
```

#### 方案2：使用GitHub CLI
```bash
# 安装GitHub CLI后
gh repo create --public
gh pages deploy --source . --destination .
```

### 5. 验证部署

#### 检查部署状态
1. 进入仓库 Settings → Pages
2. 查看部署状态和URL
3. 等待2-5分钟让DNS生效

#### 测试访问
- 尝试访问：https://zhaowy95.github.io/abtest-calculator
- 如果还是无法访问，尝试：
  - 清除浏览器缓存
  - 使用无痕模式
  - 尝试不同的网络环境

### 6. 联系支持

如果以上方法都无法解决问题：

1. **GitHub支持**：
   - 访问：https://support.github.com
   - 提交支持请求

2. **社区帮助**：
   - GitHub Discussions
   - Stack Overflow

### 7. 快速修复脚本

创建一个快速修复脚本：

```bash
#!/bin/bash
echo "🔧 开始修复GitHub Pages部署..."

# 检查仓库状态
echo "📋 检查仓库状态..."
git status

# 提交所有更改
echo "📝 提交更改..."
git add .
git commit -m "fix: 修复GitHub Pages部署问题"

# 推送到GitHub
echo "📤 推送到GitHub..."
git push origin main

echo "✅ 修复完成！请等待2-5分钟后访问网站。"
echo "🌐 网站地址：https://zhaowy95.github.io/abtest-calculator"
```

### 8. 预防措施

为了避免将来出现类似问题：

1. **定期检查**：定期检查Pages设置和Actions状态
2. **监控部署**：设置部署通知
3. **备份方案**：准备多个部署方案
4. **文档记录**：记录部署过程和问题解决方案

---

💡 **提示**：如果问题仍然存在，请提供以下信息：
- 仓库的Actions运行日志
- Pages设置截图
- 具体的错误信息
