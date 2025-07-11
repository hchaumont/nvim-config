return {
  { -- Autoformat
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
      {
        "<leader>cf",
        function()
          require("conform").format({ async = true, lsp_format = "fallback" })
        end,
        mode = "",
        desc = "[C]onform [F]ormat buffer",
      },
    },
    opts = {
      notify_on_error = false,
      format_on_save = {},
      formatters_by_ft = {
        lua = { "stylua" },
        zig = { "zig fmt" },

        -- Conform can also run multiple formatters sequentially
        python = { "isort", "black" },
        --
        -- You can use 'stop_after_first' to run the first available formatter from the list
        javascript = { "npm run format" },
        c = { "clang_format" },
      },
    },
  },
}
