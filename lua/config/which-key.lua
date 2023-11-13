local wk = require("which-key")
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1
wk.register({
    ["<leader>"] = {
        f = {
            name = "+file",
            f = { "<cmd>Telescope find_files<cr>", "Find File" },
            g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
            r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
            n = { "<cmd>enew<cr>", "New File" }
        },
        t = {
            name = "+tree",
            o = { "<cmd>NvimTreeToggle<cr>", "Open Directory Tree"},
            v = {"<cmd>FloatermNew<cr>", "Open A Terminal Window"},
            h = {"<cmd>FloatermToggle<cr>", "Hide Or Reopen Terminal Window"},
        }
    }
})
