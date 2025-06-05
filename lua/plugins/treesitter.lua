return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    -- Treesitter setup
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      -- see :TSInstallInfo for the list of languages supported
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "typescript", "html", "java", "zig", "markdown", "latex" , "toml", "svelte"},
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
      -- Maybe enable textobjects module in the future
    })
  end
}
