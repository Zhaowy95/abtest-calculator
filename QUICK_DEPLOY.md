# 🚀 快速部署指南

## 一键部署到GitHub Pages

### 方法一：使用部署脚本（推荐）

1. **给脚本执行权限**
   ```bash
   chmod +x deploy.sh
   ```

2. **运行部署脚本**
   ```bash
   ./deploy.sh
   ```

### 方法二：手动部署

1. **提交所有更改**
   ```bash
   git add .
   git commit -m "feat: 部署AB实验P值计算工具到GitHub Pages"
   ```

2. **推送到GitHub**
   ```bash
   git push origin main
   ```

3. **在GitHub上启用Pages**
   - 进入仓库的 **Settings** 页面
   - 找到左侧的 **Pages** 选项
   - 在 **Source** 部分选择 **GitHub Actions**
   - 保存设置

### 方法三：使用GitHub CLI（如果已安装）

```bash
# 推送代码
git push origin main

# 启用Pages（需要GitHub CLI）
gh api repos/:owner/:repo/pages -X POST -f source[type]=actions
```

## 验证部署

### 检查部署状态

1. 进入GitHub仓库
2. 点击 **Actions** 标签
3. 查看最新的工作流运行状态
4. 如果显示绿色✅，说明部署成功

### 访问您的网站

部署成功后，访问：
- `https://[您的GitHub用户名].github.io/abtest-calculator`

## 常见问题

### Q: 部署失败怎么办？
A: 检查以下几点：
- 确保仓库是公开的
- 检查GitHub Actions权限设置
- 确保`.github/workflows/deploy.yml`文件存在

### Q: 网站显示404？
A: 可能的原因：
- 部署还在进行中（等待2-5分钟）
- 检查仓库名称是否正确
- 确保`index.html`在根目录

### Q: 如何更新网站？
A: 简单修改代码后：
```bash
git add .
git commit -m "更新网站内容"
git push origin main
```

## 项目结构

```
abtest-calculator/
├── .github/
│   └── workflows/
│       └── deploy.yml          # 自动部署配置
├── index.html                  # 主页面
├── README.md                   # 项目说明
├── DEPLOYMENT.md              # 详细部署指南
├── QUICK_DEPLOY.md            # 快速部署指南
├── deploy.sh                  # 部署脚本
├── _headers                    # 安全头配置
└── _redirects                  # 重定向配置
```

## 技术特性

- ✅ **自动部署** - 推送代码即自动部署
- ✅ **CDN加速** - 使用GitHub的全球CDN
- ✅ **HTTPS** - 自动启用HTTPS
- ✅ **自定义域名** - 支持绑定自定义域名
- ✅ **版本控制** - 完整的Git历史记录

## 下一步

1. **自定义域名**（可选）
   - 在仓库Settings > Pages中添加自定义域名
   - 配置DNS记录指向GitHub Pages

2. **SEO优化**
   - 添加meta标签
   - 配置sitemap.xml
   - 设置robots.txt

3. **性能优化**
   - 压缩静态资源
   - 启用浏览器缓存
   - 使用CDN加速

---

🎉 **恭喜！您的AB实验P值计算工具已成功部署到GitHub Pages！**
