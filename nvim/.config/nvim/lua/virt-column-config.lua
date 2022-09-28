local has_virt_column, virt_column = pcall(require, "virt-column")
if not has_virt_column then
    return
end

virt_column.setup()
