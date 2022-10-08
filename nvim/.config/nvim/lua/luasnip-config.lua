local has_luasnip, luasnip = pcall(require, "luasnip.loaders.from_vscode")
if not has_luasnip then
  vim.notify("Could not require luasnip.loaders.from_vscode. " ..
    "Exiting luasnip-config.lua")
  return
end

luasnip.lazy_load()
