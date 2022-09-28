local has_telescope, telescope = pcall(require, "telescope")
if not has_telescope then
    return
end

telescope.setup {}

--telescope.load_extension('harpoon')
telescope.load_extension("notify")
