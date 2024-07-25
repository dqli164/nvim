return {
	{
		"max397574/better-escape.nvim",
		config = function()
			require("better_escape").setup({
				timeout = vim.o.timeoutlen, -- the time in which the keys must be hit in ms. Use option timeoutlen by default
				k = function()
					vim.api.nvim_input("<esc>")
					local current_line = vim.api.nvim_get_current_line()
					if current_line:match("^%s+j$") then
						vim.api.nvim_set_current_line("")
					end
				end
			})
		end,
	}
}
