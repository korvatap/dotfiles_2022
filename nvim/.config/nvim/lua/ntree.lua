local has_nvim_tree, nvim_tree = pcall(require, "nvim-tree")
if not has_nvim_tree then
    return
end

nvim_tree.setup()
