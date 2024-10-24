return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    -- Adapters
    "lawrence-laz/neotest-zig",
  },
  config = function()
    require("neotest").setup({
      adapters = {
        -- Adapter registration
        require("neotest-zig")({}),
      }
    })
  end,
  keys = {
    { "<leader>tt", "<cmd>lua require('neotest').run.run()<cr>", desc = "Run nearest test" },
    { "<leader>to", "<cmd>lua require('neotest').output_panel.toggle()<cr>", desc = "Toggle test output panel" },
    { "<leader>tO", function() require("neotest").output.open({ enter = true, auto_close = true }) end, desc = "Show test output" },
    { "<leader>tT", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", desc = "Run tests for file" },
    { "<leader>th", "<cmd>lua require('neotest').run.stop()", desc = "Halt tests" },
    { "<leader>ts", "<cmd>lua require('neotest').summary.toggle()<cr>", desc = "Toggle Test Summary" },
  }
}
