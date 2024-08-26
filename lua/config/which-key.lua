local wk = require("which-key")
wk.add({
	{ "<leader>f", group = "file" }, -- group
	{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
	{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep"},
	{ "<leader>fs", "<cmd>Telescope grep_string<cr>", desc = "Grep String"},
	{ "<leader>fn", "<cmd>enew<cr>", desc = "New File"},
    { "<leader>t", group = "tree" },
    { "<leader>th", "<cmd>FloatermToggle<cr>", desc = "Hide Or Reopen Terminal Window" },
    { "<leader>to", "<cmd>NvimTreeToggle<cr>", desc = "Open Directory Tree" },
    { "<leader>tv", "<cmd>FloatermNew<cr>", desc = "Open A Terminal Window" },
})
