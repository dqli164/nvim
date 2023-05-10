-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- This file is automatically loaded by plugins.config
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

local opt = vim.opt

-- Enable highlighting of the current line
opt.cursorline = true
opt.modifiable = true

-- char display
opt.list = true
opt.listchars="tab:>-,trail:-,nbsp:+,extends:→,precedes:←"

-- indent
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.smartindent = true

-- spell
opt.spelllang = {"en"}

-- window
opt.splitbelow = true
opt.splitright = true

-- 右侧参考线,超过表示代码太长了
-- opt.colorcolumn = "80"

-- encoding
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
