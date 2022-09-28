local has_lsp_installer, lsp_installer = pcall(require, "nvim-lsp-installer")
if not has_lsp_installer then
    return
end

lsp_installer.setup {}
