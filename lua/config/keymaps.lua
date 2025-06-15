-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.g.mapleader = " "
local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
-- close windows leader sx
keymap.set("n", "<leader>sx", ":close<CR>")
-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 全选（Normal 模式）
keymap.set("n", "<leader>sa", "ggVG", { desc = "Select all" })

-- 全选并复制到系统剪贴板
keymap.set("n", "<leader>sy", 'ggVG"+y', { desc = "Select all and copy to clipboard" })
