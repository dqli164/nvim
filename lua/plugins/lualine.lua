return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
    config = function ()
        require("lualine").setup({
            options = {
                icons_enabled = false,
                theme = 'auto',
            }
        })
    end
}
