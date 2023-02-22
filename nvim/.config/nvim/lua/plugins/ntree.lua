return {
  'kyazdani42/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  tag = 'nightly',
  cmd = "NvimTreeToggle",
  config = function(_)
    require('nvim-tree').setup{}
  end
}
