# AB实验P值计算工具

🚀 **全网最高效的AB实验P值计算工具！**

## 功能特色

- ✅ **智能数据识别** - 自动解析多种格式的AB实验数据
- ✅ **统计分析** - 精确计算P值、置信区间、绝对/相对提升
- ✅ **智能分组** - 自动识别对照组和实验组
- ✅ **预测分析** - 全量同步实验组策略的增量效果预测
- ✅ **一键复制** - 结果可直接复制到报告

## 使用方法

1. 在数据输入框中粘贴您的AB实验数据（4个数字）
2. 系统会自动识别并分组
3. 查看详细的统计分析结果
4. 一键复制结果到剪贴板

## 支持的数据格式

- 空格分隔：`1500 100 1489 89`
- 换行分隔：
  ```
  1500
  100
  1489
  89
  ```
- 制表符分隔：`1500	100	1489	89`
- 逗号分隔：`1500,100,1489,89`

## 在线访问

🌐 **立即使用：** https://zhaowy95.github.io/abtest-calculator

## 部署到GitHub Pages

### 🚀 快速重新部署

#### 方法一：使用部署脚本（推荐）
```bash
# 给脚本执行权限
chmod +x redeploy.sh

# 运行重新部署脚本
./redeploy.sh
```

#### 方法二：手动部署
```bash
# 添加所有文件
git add .

# 提交更改
git commit -m "feat: 重新部署AB实验P值计算工具"

# 推送到GitHub
git push origin main
```

### 📋 部署验证步骤
1. 进入GitHub仓库：https://github.com/Zhaowy95/abtest-calculator
2. 点击 **Actions** 标签查看部署状态
3. 进入 **Settings** → **Pages** 检查设置
4. 等待2-5分钟后访问网站

### 🌐 访问您的网站
部署成功后，您可以通过以下URL访问：
- **主网站**：https://zhaowy95.github.io/abtest-calculator
- **备用页面**：https://zhaowy95.github.io/abtest-calculator/abtestcalculator_2025-0919-1631.html

### 🔧 故障排除
如果网站无法访问，请查看：
- `TROUBLESHOOTING.md` - 详细故障排除指南
- `MANUAL_DEPLOY.md` - 手动部署指南

## 技术栈

- HTML5 + CSS3 + JavaScript
- Tailwind CSS (样式框架)
- jStat (统计分析库)
- Chart.js (图表库)

## 开发信息

- **开发者：** 独立产品者阿文
- **版本：** v1.0
- **更新时间：** 2025年1月

---

*愿每个打工人效率拉满，早点下班！* 🎯
