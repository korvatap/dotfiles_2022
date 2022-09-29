-- settings.lua

local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- global options
vim.g.python_3_host_prog = '/usr/local/bin/python3'
o.mouse = 'a'
o.hidden = true
o.showmatch = false
o.relativenumber = true
o.hlsearch = false
o.errorbells = false
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
bo.smartindent = true
o.nu = true
o.wrap = false
o.smartcase = true
o.swapfile = false
o.backup = false
o.undodir = '~/.config/nvim/undodir'
o.undofile = true
o.incsearch = true
o.termguicolors = true
o.scrolloff = 8
o.cmdheight = 2
o.updatetime = 50

local has_notify, notify = pcall(require, "notify")
if has_notify then
    vim.notify = notify
    notify.setup({
        background_colour = "#123123"
    })
end
vim.cmd [[set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,space:·]]
vim.cmd [[set shortmess+=c]]
vim.cmd [[set background=dark]]
local has_xcode, result = pcall(vim.cmd, "colorscheme xcodedarkhc")
if not has_xcode then
    vim.cmd [[colorscheme desert]]
end
vim.cmd [[set colorcolumn=80]]

vim.cmd[[let mapleader=" "]]

vim.api.nvim_set_keymap('n', '<Leader><CR>', ':so $MYVIMRC<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>orc', ':e $MYVIMRC<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>r', ':NvimTreeRefresh<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>n', ':NvimTreeFindFile<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ff', '<CMD>Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fg', '<CMD>Telescope live_grep<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fb', '<CMD>Telescope buffers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fh', '<CMD>Telescope help_tags<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>gg', ':LazyGit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-h><M-m>', ':lua require("harpoon.mark").add_file()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-h><M-l>', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { noremap = true, silent = true })

vim.api.nvim_exec(
[[
if &compatible
    set nocompatible			" Be iMproved
endif
]],
true)

vim.api.nvim_exec(
[[
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" "Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" "Block in normal mode
endif
]],
true)

vim.api.nvim_set_hl(0, 'ColorColumn', {fg=52, bg=184})


