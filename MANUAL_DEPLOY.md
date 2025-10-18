# 🔄 手动重新部署指南

## 方法一：使用重新部署脚本（推荐）

### 1. 给脚本执行权限
```bash
chmod +x redeploy.sh
```

### 2. 运行重新部署脚本
```bash
./redeploy.sh
```

## 方法二：手动Git操作

### 1. 检查当前状态
```bash
git status
```

### 2. 添加所有文件
```bash
git add .
```

### 3. 提交更改
```bash
git commit -m "feat: 重新部署AB实验P值计算工具

- 更新GitHub Actions工作流
- 优化部署配置
- 修复Pages访问问题"
```

### 4. 推送到GitHub
```bash
git push origin main
```

## 方法三：使用GitHub CLI（如果已安装）

### 1. 推送代码
```bash
git push origin main
```

### 2. 手动触发部署
```bash
gh workflow run gh-pages-deploy.yml
```

## 验证部署

### 1. 检查GitHub Actions
1. 进入仓库：https://github.com/Zhaowy95/abtest-calculator
2. 点击 **Actions** 标签
3. 查看 "Deploy to GitHub Pages" 工作流状态
4. 如果显示绿色✅，说明部署成功

### 2. 检查Pages设置
1. 进入仓库 **Settings** → **Pages**
2. 确认 **Source** 设置为 **GitHub Actions**
3. 查看部署状态和URL

### 3. 访问网站
- 主网站：https://zhaowy95.github.io/abtest-calculator
- 备用页面：https://zhaowy95.github.io/abtest-calculator/abtestcalculator_2025-0919-1631.html

## 故障排除

### 如果部署失败

#### 1. 检查仓库设置
- 确保仓库是公开的（Public）
- 检查Pages设置中Source是否为GitHub Actions

#### 2. 检查Actions权限
- 进入 Settings → Actions → General
- 确保 "Allow all actions and reusable workflows" 被选中

#### 3. 手动触发部署
- 进入 Actions 页面
- 选择 "Deploy to GitHub Pages" 工作流
- 点击 "Run workflow" 按钮

#### 4. 使用备用部署方案
如果主部署方案失败，可以尝试：
- 进入 Actions 页面
- 选择 "Backup Deploy to GitHub Pages" 工作流
- 点击 "Run workflow" 按钮

### 如果网站仍然无法访问

#### 1. 等待DNS传播
- GitHub Pages部署后需要2-5分钟才能访问
- 尝试清除浏览器缓存
- 使用无痕模式访问

#### 2. 检查URL格式
- 确保URL格式正确：`https://zhaowy95.github.io/abtest-calculator`
- 注意大小写和拼写

#### 3. 尝试不同网络
- 使用移动数据网络
- 尝试不同的浏览器
- 使用VPN（如果在某些地区）

## 部署文件说明

### 主要部署文件
- `.github/workflows/gh-pages-deploy.yml` - 主部署工作流
- `.github/workflows/backup-deploy.yml` - 备用部署工作流
- `redeploy.sh` - 一键重新部署脚本

### 网站文件
- `index.html` - 主页面
- `abtestcalculator_2025-0919-1631.html` - 备用页面
- `README.md` - 项目说明

### 配置文件
- `_headers` - 安全头配置
- `_redirects` - 重定向配置

## 成功部署后的功能

✅ **自动部署** - 每次推送代码到main分支都会自动部署
✅ **HTTPS支持** - 自动启用HTTPS
✅ **CDN加速** - 使用GitHub的全球CDN
✅ **安全头** - 配置了安全响应头
✅ **重定向** - 支持URL重定向

---

🎉 **部署成功后，您的AB实验P值计算工具将可以通过GitHub Pages访问！**
