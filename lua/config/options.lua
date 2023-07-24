local opt = vim.opt

-- use system clipboard
opt.clipboard:prepend("unnamedplus")
opt.completeopt = {'menu', 'menuone', 'noselect'}
-- opt.mouse = 'a'
opt.number = true
opt.relativenumber = true


-- enable highlighting of current line
opt.cursorline = true
opt.cursorcolumn = true

opt.autoread = true
opt.autowrite = true

-- indent
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.smartindent = true
opt.expandtab = true

-- char display
opt.list = true
-- opt.listchars:append "tab:>-,trail:-,nbsp:.,extends:>,precedes:<,space:."
opt.listchars:append "trail:-,nbsp:.,extends:>,precedes:<"

-- highlight
opt.hlsearch = true

-- background
opt.background = "dark"
vim.cmd([[colorscheme  gruvbox]])

-- spell
opt.spelllang = { "en" }

-- window
opt.splitbelow = true
opt.splitright = true

-- back to last position
vim.cmd [[au BufReadPost * if line("'\"") > 1 && line ("'\"") <= line("$") | exe "normal! g'\"" | endif]]

-- indent-blankline
opt.termguicolors = true
-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#363636 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#4F4F4F gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#696969 gui=nocombine]]

-- treesitter
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
vim.wo.foldlevel = 99 -- 默认不折叠

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


