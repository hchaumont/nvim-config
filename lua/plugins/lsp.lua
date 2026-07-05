vim.pack.add({
  "https://github.com/neovim/nvim-lspconfig",
  -- Useful status updates for LSP
  "https://github.com/j-hui/fidget.nvim",
  -- Types and completion for editing Neovim Lua config
  "https://github.com/folke/lazydev.nvim",
})

require("fidget").setup({})

require("lazydev").setup({
  library = {
    -- Load luvit types when the `vim.uv` word is found
    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
  },
})

-- LSP keymaps (lsp-autocmd) and server configuration (lsp-config) are required
-- from init.lua, after all plugins are added.
