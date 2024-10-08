return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup({
            sort_by = "case_sensitive",
            view = {
                width = 25,
            },
            renderer = {
                group_empty = true,
                icons = {
                    webdev_colors = false,
                    git_placement = "before",
                    modified_placement = "after",
                    padding = " ",
                    symlink_arrow = " ➛ ",
                    show = {
                        file = false,
                        folder = false,
                        folder_arrow = false,
                        git = true,
                        modified = true,
                    },
                },
            },
            filters = {
                dotfiles = true,
            },
            actions = {
                open_file = {
                    resize_window = true,
                    -- quit_on_open = true
                }
            }
        })
    end,
}
