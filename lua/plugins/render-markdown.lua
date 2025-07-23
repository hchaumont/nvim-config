return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
    opts = {},
    keys = {
      {
        "<leader>tm",
        function()
          require("render-markdown").toggle()
        end,
        desc = "Toggle Markdown ",
      },
    },
  },
}
