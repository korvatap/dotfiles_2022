local has_luasnip, luasnip = pcall(require, "luasnip.loaders.from_vscode")
if not has_luasnip then
    return
end

luasnip.lazy_load()
