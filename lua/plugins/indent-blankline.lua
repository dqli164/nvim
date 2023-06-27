return {
    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("indent_blankline").setup {
                -- char = '┊',
                show_trailing_blankline_indent = false,
                -- char = "",
                char_highlight_list = {
                    "IndentBlanklineIndent1",
                },
                space_char_blankline = " ",
                show_current_context = true,
                show_current_context_start = true,
            }
        end
    }
}
