return {
        "mhartington/formatter.nvim",
        config = function()
            require('formatter').setup {
                -- Enable or disable logging
                logging = true,
                -- Set the log level
                log_level = vim.log.levels.WARN,
                -- All formatter configurations are opt-in
                filetype = {
                    -- Formatter configurations for filetype "lua" go here
                    -- and will be executed in order
                    lua = {
                        -- "formatter.filetypes.lua" defines default configurations for the
                        -- "lua" filetype
                        require("formatter.filetypes.lua").stylua,

                        -- You can also define your own configuration
                        function()
                            -- Supports conditional formatting
                            local util = require("formatter.util")
                            if util.get_current_buffer_file_name() == "special.lua" then
                               return nil
                            end

                            -- Full specification of configurations is down below and in Vim help
                            -- files
                            return {
                                exe = "stylua",
                                args = {
                                    "--search-parent-directories",
                                    "--stdin-filepath",
                                    util.escape_path(util.get_current_buffer_file_path()),
                                    "--",
                                    "-",
                                },
                                stdin = true,
                            }
                        end
                    },
                    go = {
                        require("formatter.filetypes.go").gofmt,
                    function()
                        local util = require("formatter.util")
                        return {
                            exe = "gofmt",
                            args = {
                                "-w",
                                "-s",
                                util.escape_path(util.get_current_buffer_file_path()),
                            }
                        }
                    end
                }
                }
            }
            -- keymap
            local keymap = vim.keymap.set
            local opts = { noremap = true }
            keymap("n", "<leader>f", "<cmd>Format<CR>", opts)
            keymap("n", "<leader>F", "<cmd>FormatWrite<CR>", opts)
        end,
}
