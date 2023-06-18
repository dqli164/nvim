-- https://github.com/nvim-treesitter/nvim-treesitter
return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require('nvim-treesitter.configs').setup{
				-- A list of parser names, or "all" (the five listed parsers should always be installed)
				ensure_installed = {"lua"},
				-- Install parsers synchronously (only applied to `ensure_installed`)
				sync_install = true,
				-- Automatically install missing parsers when entering buffer
				-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
				auto_install = true,
				highlight = {
					enable = false,
					-- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
					-- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
					-- the name of the parser)
					-- list of language that will be disabled
					additional_vim_regex_highlighting = false,
				},
				indent = {
					enable = false,
				}
			}
		end,
	}
}
