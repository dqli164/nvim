local opt = vim.opt

-- use system clipboard
opt.clipboard:prepend("unnamedplus")
opt.completeopt = {'menu', 'menuone', 'noselect'}
opt.mouse = 'a'
opt.number = true
opt.relativenumber = true

-- enable highlighting of current line
opt.cursorline = true
opt.cursorcolumn = false

opt.autoread = true
opt.autowrite = true
opt.showmatch = true

-- indent
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
-- opt.autoindent = true
-- opt.smartindent = true
opt.expandtab = true
-- opt.smarttab = true

-- char display
opt.list = true
-- opt.listchars:append "tab:>-,trail:-,nbsp:.,extends:>,precedes:<,space:."
opt.listchars:append "tab:>-,trail:-,nbsp:.,extends:>,precedes:<"

-- highlight
opt.hlsearch = true

-- background
opt.background = "dark"
-- load the colorschema here
vim.cmd([[colorscheme  gruvbox]])

-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#363636 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#4F4F4F gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#696969 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineContextChar guifg=#B5B5B5 gui=nocombine]]

-- spell
opt.spelllang = { "en" }

-- window
opt.splitbelow = true
opt.splitright = true

opt.termguicolors = true

opt.encoding = 'utf-8'
