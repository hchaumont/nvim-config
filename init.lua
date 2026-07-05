vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- My vim options
require("options")

-- My keymaps
require("keymaps")

-- vim.pack build steps
require("pack")

-- My plugins
require("plugins")

-- Configure LSP
require("lsp-autocmd")
require("lsp-config")
