local has_wk, wk = pcall(require, "which-key")
if not has_wk then
  vim.notify("Could not require which-key. Exiting which-key-config.lua")
  return
end

wk.register({
  ["<C-n>"] = { ":NvimTreeToggle<CR>", "Toggle NvimTree"},
  ["<C-g><C-h>"] = { "<CMD>Lspsaga lsp_finder<CR>", "LspSaga Lsp Finder" },
  ["<C-h><C-m>"] = { ":lua require('harpoon.mark').add_file()<CR>"},
  ["<C-h><C-l>"] = { ":lua require('harpoon.ui').toggle_quick_menu()<CR>"},
  ["<Leader><CR>"] = { ":so $MYVIMRC<CR>", "Source init.lua file"},
  ["<Leader>r"] = { ":NvimTreeRefresh<CR>", "Refres NvimTree"},
  ["<Leader>n"] = { ":NvimTreeFindFile<CR>", "Find file in NvimTree"},
  ["<Leader>orc"] = { ":e $MYVIMRC<CR>", "Open init.lua file"},
  ["<Leader>ff"] = { "<CMD>Telescope find_files<CR>", "Telescope Find files" },
  ["<Leader>fg"] = { "<CMD>Telescope live_grep<CR>", "Telescope Live grep" },
  ["<Leader>fb"] = { "<CMD>Telescope buffers<CR>", "Telescope Buffers" },
  ["<Leader>fh"] = { "<CMD>Telescope help_tags<CR>", "Telescope help_tags" },
  ["<Leader>fm"] = { "<CMD>Telescope harpoon marks<CR>", "Telescope harpoon marks" },
})

vim.api.nvim_set_keymap('n', '<Leader><CR>', ':so $MYVIMRC<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>orc', ':e $MYVIMRC<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>r', ':NvimTreeRefresh<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>n', ':NvimTreeFindFile<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>gg', ':LazyGit<CR>', { noremap = true, silent = true })
