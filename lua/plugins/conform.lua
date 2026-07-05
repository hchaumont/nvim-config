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
      format_on_save = { lsp_format = "fallback", timeout_ms = 500 },
      formatters_by_ft = {
        lua = { "stylua" },
        zig = { "zigfmt" },
        python = { "ruff_organize_imports", "ruff_format" },
        c = { "clang_format" },
        go = { "goimports", "gofmt" },
      },
    },
  },
}
