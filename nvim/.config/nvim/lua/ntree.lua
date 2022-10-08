local has_nvim_tree, nvim_tree = pcall(require, "nvim-tree")
if not has_nvim_tree then
  vim.notify("Could not require nvim-tree. Exiting ntree.lua")
  return
end

nvim_tree.setup()
