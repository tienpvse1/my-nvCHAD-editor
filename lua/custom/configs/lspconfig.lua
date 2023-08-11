local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "docker_compose_language_service",
  "dockerls",
  "tsserver",
  "gopls",
  "html",
  "cssls",
  "clangd",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
lspconfig.kotlin_language_server.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "kotlin" },
  cmd = { "kotlin-language-server" },
}
