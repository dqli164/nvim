return {
    {
        "williamboman/mason.nvim",
        run = ":MasonUpdate", -- :MasonUpdate updates registry contents
        config = function()
            require("mason").setup({})
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "gopls" },
                -- Whether servers that are set up (via lspconfig) should be automatically installed if they're not already installed.
                -- This setting has no relation with the `ensure_installed` setting.
                -- Can either be:
                --   - false: Servers are not automatically installed.
                --   - true: All servers set up via lspconfig are automatically installed.
                --   - { exclude: string[] }: All servers set up via lspconfig, except the ones provided in the list, are automatically installed.
                --       Example: automatic_installation = { exclude = { "rust_analyzer", "solargraph" } }
                ---@type boolean
                automatic_installation = true,

                -- See `:h mason-lspconfig.setup_handlers()`
                ---@type table<string, fun(server_name: string)>?
                handlers = nil,
            })

            local lspconfig = require('lspconfig')
            require("mason-lspconfig").setup_handlers({
                function (server_name)
                    require("lspconfig")[server_name].setup{}
                end,
                -- Next, you can provide targeted overrides for specific servers.
                ["lua_ls"] = function ()
                    lspconfig.lua_ls.setup {
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { "vim" }
                                }
                            }
                        }
                    }
                end,
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
    }
}
