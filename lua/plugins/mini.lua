return {
  "echasnovski/mini.nvim",
  version = "*",
  config = function()
    require("mini.pairs").setup()
    require("mini.ai").setup({ n_lines = 500 })
  end,
}
