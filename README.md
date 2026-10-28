# 蛙鸣网站

中国科学技术大学学生数学杂志《蛙鸣》的静态网站。

- 首页：https://ustcluo.github.io/Waming-WebPage/
- 刊物页面：https://ustcluo.github.io/Waming-WebPage/Waming/waming.html
- GitHub Pages 从 `main` 分支发布。根目录 `index.html` 跳转至原有刊物页面。

## 文件分类与新增期刊

沿用现有目录和命名格式：

| 内容 | 位置与命名 | 第68期示例 |
| --- | --- | --- |
| 网站正文、分期文章目录 | `Waming/waming.html` | 最新一期排在第67期之前，目录锚点为 `content68` |
| 整期电子版 | `Waming/pu/pdf/Warming_期号(年份.月份).pdf` | `Warming_68(2026.07).pdf` |
| 封面图片 | `Waming/pu/image/期号.jpg` | `68.jpg` |
| 征稿说明、投稿模板 | `Waming/pu/file/` | `蛙鸣69征稿启事.pdf` |
| 样式表 | `Waming/pu/css/star.css` | 页面使用相对路径 `pu/css/star.css` |

第68期出版月份按正式刊物封面记录为2026年7月，电子版共109页。文章目录按正式刊物分为“初阳”（2篇）、“蛙声一片”（6篇）、“笔墨文篇”（2篇），另有致谢和第69期征稿启事。

整期 PDF 和第69期征稿启事均直接使用编辑部提供的正式文件，封面从整期 PDF 首页导出。排版辅助文件、PSD、临时文件和稿件统计表无需上传到网站。

## 本地预览

在仓库根目录运行 `python -m http.server 8000`，访问 `http://localhost:8000/`。页面使用 Bootstrap、jQuery 和 MathJax 的公共 CDN，交互及公式显示需要网络连接。
