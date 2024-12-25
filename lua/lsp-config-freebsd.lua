local servers = {
  asm_lsp = {},
  zls = {},
  clangd = { cmd = { "clangd19" }},
  gopls = {},
}

-- nvim-cmp supports additional completion capabilities, so broadcast that to servers
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities(capabilities))

for key, val in pairs(servers) do
  val.capabilities = vim.tbl_deep_extend('force', {}, capabilities, val.capabilities or {})
  require('lspconfig')[key].setup(val)
end
