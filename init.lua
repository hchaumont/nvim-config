vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Make sure lazy is installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- My plugins
require("lazy").setup("plugins")

-- My vim options
require("options")

-- My keymaps
require("keymaps")

-- Configure LSP
require("lsp-autocmd")
-- require("lsp-config")

require("cmp-config")
