-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- This file is automatically loaded by plugins.config
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local opt = vim.opt

opt.filetype = "plugin"
opt.termguicolors = true
opt.clipboard:prepend("unnamed")
opt.syntax = on
opt.background = "dark"

vim.cmd([[colorscheme gruvbox]])

-- enable highlighting of the current line
opt.cursorline = true
opt.modifiable = true

-- char display
opt.list = true
opt.listchars="tab:>-,trail:-,nbsp:.,extends:>,precedes:<"

-- indent
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
-- opt.smartindent = true
-- opt.expandtab = true

-- spell
opt.spelllang = {"en"}

-- window
opt.splitbelow = true
opt.splitright = true

-- opt.colorcolumn = "80"

-- encoding
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
