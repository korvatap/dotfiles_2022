local has_telescope, telescope = pcall(require, "telescope")
if not has_telescope then
  vim.notify("Could not load telescope. Exiting telescope-config.lua")
  return
end

telescope.setup {}

telescope.load_extension("harpoon")
telescope.load_extension("notify")

