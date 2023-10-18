local opt = {noremap = true, silent = true}
local map = vim.api.nvim_set_keymap

-- move more quickly
map("n", "J", "9j", opt)
map("n", "K", "9k", opt)
map("n", "H", "^", opt)
map("n", "L", "g_", opt)

-- window
map("n", "sv", ":vsp<CR>", opt)   -- split vertical
map("n", "sh", ":sp<CR>",  opt)   -- split horizontal
map("n", "sc", "<C-w>c",   opt)   -- close current window
map("n", "so", "<C-w>o",   opt)   -- close other windows

-- jump between windows
map("n", "<leader>h", "<C-w>h", opt)
map("n", "<leader>j", "<C-w>j", opt)
map("n", "<leader>k", "<C-w>k", opt)
map("n", "<leader>l", "<C-w>l", opt)

-- jump between buffer
map("n", "<S-Tab>", ":bnext<CR>", opt)
map("n", "<Tab>", ":bprevious<CR>", opt)
-- <C-6> jump between two buffer

-- move line of text using ALT+[jk]
map("n", "<M-k>", "mz:m-2<cr>`z", opt)
map("n", "<M-j>", "mz:m+<cr>`z",  opt)
map("v", "<M-j>", ":m'>+<cr>`<my`>mzgv`yo`z", opt)
map("v", "<M-k>", ":m'<-2<cr>`>my`<mzgv`yo`z", opt)

-- quick quit & save
map("i", "<leader>q",  "<ESC>:q<CR>",  opt)
map("i", "<leader>wq", "<ESC>:wq<CR>", opt)
map("i", "<leader>w",  "<ESC>:w<CR>",  opt)

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)

-- better indenting
-- map("v", "<", "<gv", opt)
-- map("v", ">", ">gv", opt)

-- highlights under cursor


-- cancel highlight
-- map("n", "<esc>", ":noh<cr><esc>", opt)
-- map("i", "<esc>", ":noh<cr><esc>", opt)

-- search words under cursor
map("n", "gw", "*N", opt)

-- vim-floaterm
map("n", "<F7>", ":FloatermNew<CR>", opt)
