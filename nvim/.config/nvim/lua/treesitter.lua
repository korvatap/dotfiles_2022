local has_tsconfig, tsconfigs = pcall(require, "nvim-treesitter.configs")
if not has_tsconfig then
  vim.notify("Could not load nvim-treesitter.config. Exiting treesitter.lua")
  return
end

local has_install_config, install_config = pcall(require, "nvim-treesitter.install")
if not has_install_config then
  vim.notify("Could not load nvim-treesitter.install. Existing treesitter.lua")
  return
end

if not vim.fn.has('unix') then
  install_config.compilers = { 'zig' }
end


tsconfigs.setup {
  highlight = { enable = true },
  incremental_selection = { enable = true },
  locals = { enable = true },
  textobjects = { enable = true },
  indent = { enable = true },
  ensure_installed = {
    "lua", "rust", "c_sharp", "json", "css",
    "dockerfile", "javascript", "help",
    "html", "markdown", "yaml"
  }
}

-- vim.cmd[[let g:nvim_tree_show_icons = { 'git': 1, 'folders': 1, 'files': 1 }]]

vim.cmd [[highlight IncludedC guibg=#373b41]]
