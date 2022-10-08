local has_virt_column, virt_column = pcall(require, "virt-column")
if not has_virt_column then
  vim.notify("Could not require virt-column. Exiting virt-column-config.lua")
  return
end

virt_column.setup()
