# GitHub Pages 部署指南

## 部署步骤

### 1. 启用 GitHub Pages

1. 进入您的 GitHub 仓库
2. 点击 **Settings** 标签
3. 在左侧菜单中找到 **Pages**
4. 在 **Source** 部分选择 **GitHub Actions**
5. 保存设置

### 2. 自动部署

项目已配置 GitHub Actions 工作流，当您推送代码到 `main` 分支时会自动部署。

### 3. 访问您的网站

部署成功后，您可以通过以下URL访问：
- `https://[您的用户名].github.io/abtest-calculator`

## 文件结构

```
abtest-calculator/
├── .github/
│   └── workflows/
│       └── deploy.yml          # GitHub Actions 部署配置
├── index.html                  # 主页面
├── abtestcalculator_2025-0919-1631.html  # 备用页面
├── README.md                   # 项目说明
└── DEPLOYMENT.md              # 部署指南
```

## 技术栈

- **前端**: HTML5 + CSS3 + JavaScript
- **样式框架**: Tailwind CSS (CDN)
- **统计库**: jStat (CDN)
- **图表库**: Chart.js (CDN)

## 功能特性

- ✅ 智能数据识别 - 自动解析多种格式的AB实验数据
- ✅ 统计分析 - 精确计算P值、置信区间、绝对/相对提升
- ✅ 智能分组 - 自动识别对照组和实验组
- ✅ 预测分析 - 全量同步实验组策略的增量效果预测
- ✅ 一键复制 - 结果可直接复制到报告

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

## 故障排除

如果部署失败，请检查：

1. **GitHub Actions 权限**
   - 确保仓库的 Actions 权限已启用
   - 检查 Pages 权限设置

2. **工作流文件**
   - 确保 `.github/workflows/deploy.yml` 文件存在且语法正确

3. **分支设置**
   - 确保代码在 `main` 分支上
   - 检查分支保护规则

4. **文件路径**
   - 确保 `index.html` 在仓库根目录

## 更新网站

要更新网站内容：

1. 修改 `index.html` 文件
2. 提交更改到 `main` 分支
3. GitHub Actions 会自动重新部署
4. 等待几分钟后访问更新后的网站
