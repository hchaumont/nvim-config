return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    -- Treesitter setup
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      -- see :TSInstallInfo for the list of languages supported
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "java", "zig", "markdown", "toml"},
      sync_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        disable = {"latex"},
      },
      indent = { enable = true },
      -- Maybe enable textobjects module in the future
    })
  end
}
