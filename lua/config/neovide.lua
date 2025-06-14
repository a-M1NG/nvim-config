-- 文件路径: ~/.config/nvim/lua/config/neovide.lua

if vim.g.neovide then
  -- 设置 Neovide 使用的图形界面字体
  -- 格式为 "字体名称:h字号"
  -- 请确保这里的 "FiraCode Nerd Font" 与你在终端中设置的字体名称完全一致
  vim.o.guifont = "FiraCode Nerd Font:h16"
  vim.cmd("echom '[BRUTEFORCE TEST]: Attempting to set font from init.lua!'")
  -- 其他 Neovide 相关设置可以放在这里
  -- vim.g.neovide_scale_factor = 1.0
  -- vim.g.neovide_padding_top = 10
  -- vim.g.neovide_padding_bottom = 10
  -- vim.g.neovide_padding_right = 10
  -- vim.g.neovide_padding_left = 10
end

-- 返回一个空的 table 是好习惯
return {}