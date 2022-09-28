local has_wk, wk = pcall(require, "which-key")
if not has_wk then
    return
end

wk.register({
    ["<C-g><C-h>"] = {"<cmd>Lspsaga lsp_finder<CR>", "Lsp Finder"}
})
