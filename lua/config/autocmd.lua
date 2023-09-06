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

-- format after save
