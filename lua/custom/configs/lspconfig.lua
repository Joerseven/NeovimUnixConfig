local base = require("plugins.configs.lspconfig")
local to_attach = base.on_attach
local capabilities = base.capabilities
local lspconfig = require("lspconfig")
lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    to_attach(client, bufnr)
  end,
  capabilities = capabilities,
}
