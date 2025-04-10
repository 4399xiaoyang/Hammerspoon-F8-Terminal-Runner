# Hammerspoon F8 终端执行器

[![GitHub stars](https://img.shields.io/github/stars/4399xiaoyang/Hammerspoon-F8-Terminal-Runner?style=social)](https://github.com/4399xiaoyang/Hammerspoon-F8-Terminal-Runner)
[![Gitee stars](https://gitee.com/lai-xu/hammerspoon-f8-terminal-runner/badge/star.svg?theme=dark)](https://gitee.com/lai-xu/hammerspoon-f8-terminal-runner)

## 简介

这是一个使用 Hammerspoon 实现的 VS Code 辅助工具，通过按下 F8 键，可以自动将选中的代码发送到终端并执行。

## 功能特点

- 🚀 一键执行：选中代码，按 F8，自动在终端执行
- 🔄 自动化流程：复制 → 切换终端 → 粘贴 → 执行
- 🔔 即时反馈：执行后提供视觉和声音反馈
- 🛡️ 安全检查：确保只在 VS Code 中触发
- 💻 跨平台：支持 macOS 系统

## 安装方法

1. 安装 [Hammerspoon](https://www.hammerspoon.org/)
2. 将 `f8_vscode_terminal_runner.lua` 文件内容复制到 `~/.hammerspoon/init.lua`
3. 重新加载 Hammerspoon 配置（点击菜单栏图标 → Reload Config）

## 使用方法

1. 在 VS Code 中选中要执行的代码
2. 按下 F8 键
3. 代码将自动在终端中执行

## 详细文档

查看 [F8快捷键功能说明.md](F8快捷键功能说明.md) 获取更详细的使用说明和技术细节。

## 许可证

MIT

## 贡献

欢迎提交 Issues 和 Pull Requests！
