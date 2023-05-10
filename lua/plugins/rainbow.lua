-- every spec file under config.plugins will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {
	{
		"HiPhish/nvim-ts-rainbow2",
		config = function()
			require('nvim-treesitter.configs').setup {
			rainbow = {
				enable = true,
				-- list of languages you want to disable the plugin for
				disable = { 'jsx', 'cpp' },
				-- Which query to use for finding delimiters
				query = 'rainbow-parens',
				-- Highlight the entire buffer all at once
				strategy = require('ts-rainbow').strategy.global,
			}
		}
	    end,
	}
}
