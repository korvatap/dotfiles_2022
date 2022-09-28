local has_tsconfig, tsconfigs = pcall(require, "nvim-treesitter.configs")
if not has_tsconfig then
    return
end

tsconfigs.setup {
  highlight = { enable = true },
  incremental_selection = { enable = true },
  locals = { enable = true },
  textobjects = { enable = true },
  indent = { enable = true },
}

-- vim.cmd[[let g:nvim_tree_show_icons = { 'git': 1, 'folders': 1, 'files': 1 }]]

vim.cmd [[highlight IncludedC guibg=#373b41]]
