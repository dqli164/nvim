require("config.lazy")

-- add config
require("config.options")
require("config.keymaps")
require("config.autocmd")
require("config.coc")
require("config.which-key")
-- -- To get fzf loaded and working with telescope, you need to call
-- -- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')
