local autoGroup = vim.api.nvim_create_augroup("autoGroup", {
  clear = true,
})

local autocmd = vim.api.nvim_create_autocmd


-- Highlight on yank
autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = autoGroup,
  pattern = "*",
})

-- 用o换行不要延续注释
autocmd("BufEnter", {
  group = autoGroup,
  pattern = "*",
  callback = function()
    vim.opt.formatoptions = vim.opt.formatoptions
      - "o" -- O and o, don't continue comments
      + "r" -- But do continue when pressing enter.
  end,
})
