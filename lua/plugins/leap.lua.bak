return {
    "ggandor/leap.nvim",
    lazy = true,
    keys = { "E", "R", "W", "dE", "dR", "yE", "yR", "cE", "cR" },
    config = function()
        require("leap").opts.highlight_unlabeled_phase_one_targets = true
        -- leap.add_default_mappings()
        vim.keymap.set({ "x", "o", "n" }, "E", "<Plug>(leap-forward-to)")
        vim.keymap.set({ "x", "o", "n" }, "R", "<Plug>(leap-backward-to)")
        vim.keymap.set({ "x", "o", "n" }, "W", "<Plug>(leap-from-window)")
    end,
}
