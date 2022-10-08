local has_harpoon, harpoon = pcall(require, "harpoon")
if not has_harpoon then
  vim.notify("Could not load harpoon. Exiting harpoon-config.lua")
  return
end

harpoon.setup {}

