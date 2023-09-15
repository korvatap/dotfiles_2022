return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 
    { 'nvim-lua/popup.nvim' },
    { 'nvim-lua/plenary.nvim' }, 
    { 
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    } 
  },
  cmd = "Telescope",
  config = function(_)
    local telescope = require("telescope")
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
  end
}
