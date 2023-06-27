local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

-- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.mapleader = ","
vim.g.maplocalleader = ","

require("lazy").setup({
    spec = {
        { import = "plugins" },
    },
    checker = { enable = true },
})


-- add config
require("config.options")
require("config.keymaps")
require("config.autocmd")
require("lsp.setup")
