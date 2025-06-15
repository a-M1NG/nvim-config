-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- 只在 Windows 系统下执行
if vim.fn.has("win32") == 1 then
  -- 设置 shell 为 powershell
  vim.o.shell = "powershell"

  -- 清空 shellquote 和 shellxquote，因为 powershell 的引用处理方式不同
  vim.o.shellquote = ""
  vim.o.shellxquote = ""

  -- 设置用于执行命令的参数
  -- -NoLogo: 启动时不显示版权标志
  -- -NoProfile: 不加载 PowerShell 配置文件
  -- -ExecutionPolicy Bypass: 绕过执行策略限制
  -- -Command: 执行后面的命令
  vim.o.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy Bypass -Command "

  -- 设置如何格式化重定向命令
  vim.o.shellredir = "-join($Input) | Out-File -Encoding UTF8 %s"

  -- 告诉 Neovim 如何引用命令以进行 shell 执行
  -- 这里使用单引号来包裹整个命令
  vim.opt.shellxquote = "'"
end