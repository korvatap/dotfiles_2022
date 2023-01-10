local has_mason, mason = pcall(require, "mason")
if not has_mason then
  vim.notify("Could not load mason. Exiting lsp-install-config")
  return
end

mason.setup()

local has_mason_lspconfig, mason_lspconfig = pcall(require, "mason-lspconfig")
if not has_mason_lspconfig then
  vim.notify("Could not load mason-lspconfig. Exiting lsp-install-config.lua")
  return
end

mason_lspconfig.setup({
  ensure_installed = {
    "sumneko_lua",
    "rust_analyzer",
    "tsserver",
    "jsonls",
    "omnisharp",
    "eslint",
    "yamlls",
    "pyright"
  }
})
