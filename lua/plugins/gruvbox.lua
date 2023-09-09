return {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 10000,
    config = function()
        -- load the colorschema here
        vim.cmd([[colorscheme  gruvbox]])
        require("gruvbox").setup({})
    end
}
