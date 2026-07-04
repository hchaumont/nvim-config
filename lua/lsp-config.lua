-- [[ Configure LSP ]]
--
-- Language servers are expected to be installed and available on the PATH.
--
-- Enable the following language servers. Add any server-specific settings in
-- the table below; the value is passed to `vim.lsp.config`. See `:help lsp-config`.
--
-- If you want to override the default filetypes that a server attaches to, set
-- the `filetypes` key (see `html` below).
local servers = {
  clangd = {},
  gopls = {},
  zls = {},
  pyright = {},
  rust_analyzer = {},
  ts_ls = {},
  html = { filetypes = { "html", "twig", "hbs" } },
  jdtls = {},
  svelte = {},

  lua_ls = {
    settings = {
      Lua = {
        workspace = { checkThirdParty = false },
        telemetry = { enable = false },
        -- NOTE: toggle below to ignore Lua_LS's noisy `missing-fields` warnings
        diagnostics = { disable = { "missing-fields" } },
      },
    },
  },
}

-- blink.cmp adds additional completion capabilities, so broadcast that to
-- every server via the `*` wildcard config.
local capabilities = require("blink.cmp").get_lsp_capabilities()
vim.lsp.config("*", { capabilities = capabilities })

-- Apply per-server settings, then enable them all. Server defaults (cmd,
-- root markers, filetypes) come from the `lsp/` configs shipped by nvim-lspconfig.
for name, config in pairs(servers) do
  vim.lsp.config(name, config)
end
vim.lsp.enable(vim.tbl_keys(servers))
