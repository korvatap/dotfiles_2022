local has_telescope, telescope = pcall(require, "telescope")
if not has_telescope then
  vim.notify("Could not load telescope. Exiting telescope-config.lua")
  return
end

telescope.setup {
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    }
  }
}

telescope.load_extension("file_browser")
telescope.load_extension("fzf")
telescope.load_extension("harpoon")
telescope.load_extension("notify")

