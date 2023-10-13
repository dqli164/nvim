local myAutoGroup = vim.api.nvim_create_augroup("myAutoGroup", {
    clear = true,
})

local autocmd = vim.api.nvim_create_autocmd

-- highlight on yank
autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = myAutoGroup,
    pattern = "*",
})

-- close new line comment when return
autocmd("BufEnter", {
    group = myAutoGroup,
    pattern = "*",
    callback = function()
        vim.opt.formatoptions = vim.opt.formatoptions - { "c", "r", "o" }
    end,
})

vim.cmd([[
  autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]])

-- back to last position
vim.cmd [[au BufReadPost * if line("'\"") > 1 && line ("'\"") <= line("$") | exe "normal! g'\"" | endif]]

autocmd({'BufEnter','BufAdd','BufNew','BufNewFile','BufWinEnter'}, {
  group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
  callback = function()
    vim.opt.foldmethod     = 'expr'
    vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
  end
})

autocmd("BufWritePre", {
	group = vim.api.nvim_create_augroup('fmt', {}),
	pattern = "*.go",
	callback = function()
		vim.cmd([[ Format ]])
	end,
})
