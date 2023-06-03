local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}
local os = vim.loop.os_uname()

-- move
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
map("n", "<C-l>", ":bnext<CR>", opt)
map("n", "<C-h>", ":bprevious<CR>", opt)


-- move line of text using ALT+[jk]
map("n", "<M-k>", "mz:m-2<cr>`z", opt)
map("n", "<M-j>", "mz:m+<cr>`z",  opt)
map("v", "<M-j>", ":m'>+<cr>`<my`>mzgv`yo`z", opt)
map("v", "<M-k>", ":m'<-2<cr>`>my`<mzgv`yo`z", opt)

-- quick quit & save
map("i", "<leader>q",  "<ESC>:q<CR>",  opt)
map("i", "<leader>wq", "<ESC>:wq<CR>", opt)
map("i", "<leader>w",  "<ESC>:w<CR>",  opt)

-- move to the start or end of line
map("i", "<C-a>", "<ESC>I", opt)
map("i", "<C-e>", "<ESC>A", opt)
map("i", "<C-o>", "<ESC>o", opt)
map("i", "<C-h>", "<Left>", opt)
map("i", "<C-j>", "<Down>", opt)
map("i", "<C-k>", "<Up>",   opt)
map("i", "<C-l>", "<Right>",opt)
map("i", "<C-d>", "<Delete>",opt)
