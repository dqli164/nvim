-- https://github.com/nvim-treesitter/nvim-treesitter
return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require('nvim-treesitter.configs').setup {
				-- A list of parser names, or "all" (the five listed parsers should always be installed)
				ensure_installed = { "lua", "typescript", "vue", "css" },
				-- Install parsers synchronously (only applied to `ensure_installed`)
				sync_install = true,
				-- Automatically install missing parsers when entering buffer
				-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
				auto_install = true,
				highlight = {
					enable = true,
					-- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
					-- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
					-- the name of the parser)
					-- list of language that will be disabled
                    -- disable = { "c", "rust" },
                    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
                    disable = function(lang, buf)
                        local max_filesize = 100 * 1024 -- 100 KB
                        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                        if ok and stats and stats.size > max_filesize then
                            return true
                        end
                    end,
                    additional_vim_regex_highlighting = false,
				},
                -- incremental selection
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = '<CR>',
                        node_incremental = '<CR>',
                        node_decremental = '<BS>',
                        scope_incremental = '<TAB>',
                    }
                },
                -- code format. NOTE: This is an experimental feature.
				indent = {
					enable = true,
				}
			}
		end,
	}
}
