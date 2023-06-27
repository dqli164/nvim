local opt = {noremap = true, silent = true}
local map = vim.api.nvim_set_keymap

-- move more quickly
map("n", "J", "9j", opt)
map("n", "K", "9k", opt)
map("n", "H", "^", opt)
map("n", "L", "g_", opt)

