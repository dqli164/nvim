return {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
        require("indent_blankline").setup {
            enabled = true,
            space_char_blankline = " ",
            show_trailing_blankline_indent = false,
            use_treesitter_scope = false,
            char_highlight_list = {
                "IndentBlanklineIndent1",
            },
            space_char_highlight_list = {
                "IndentBlanklineIndent1",
            },
            -- context_patterns = { 'class', 'function', 'method'},
            show_current_context = true,
            show_current_context_start = true
        }
    end
}
