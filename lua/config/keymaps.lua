vim.g.mapleader = " "

local keymap = vim.keymap


---- insert mode  ------
keymap.set("i", "jk", "<ESC>")


---- visual mode -------
-- move multiple line
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")


---- normal mode ------
-- add window in vertical direction
keymap.set("n", "<leader>sv", "<C-w>v")
-- add window in horizontal direction
keymap.set("n", "<leader>sh", "<C-w>s")

-- cancel highlight
keymap.set("n","<leader>nh", ":nohl<CR>")
