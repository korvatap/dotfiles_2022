-- plugins.lua

local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path
  }
  print "Intalling packer... close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end


-- not sure if this is needed. Disabling for now
-- vim.cmd [[packadd vimball]]

-- Reload plugins.lua on save
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

local has_packer, packer = pcall(require, "packer")
if not has_packer then
  vim.notify("Could not require packer. Exiting plugins.lua")
  return
end

-- Rounded border for packer commands
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

local use = packer.use

return packer.startup(function()
  use 'wbthomason/packer.nvim'

  -- My Plugins
  -- use 'tweekmonster/startuptime.vim'
  use {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
    cmd = "MarkdownPreview"
  }
  use {'arzg/vim-colors-xcode', config = "vim.cmd('colorscheme xcodedarkhc')"}
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'onsails/lspkind.nvim'
  use 'tjdevries/colorbuddy.nvim'
  use 'MaxMEllon/vim-jsx-pretty'
  use 'folke/lsp-colors.nvim'
  use 'pangloss/vim-javascript'
  use 'tjdevries/complextras.nvim'
  use 'tjdevries/express_line.nvim'
  use 'saadparwaiz1/cmp_luasnip'
  use { 'ionide/Ionide-vim', ft = {"fsharp"} }
  use 'rcarriga/nvim-notify'
  use 'lukas-reineke/virt-column.nvim'
  use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end,
    after = 'nvim-cmp'
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    event = "BufWinEnter",
    config = "require('treesitter')"
  }
  use { 'nvim-treesitter/playground', cmd = "TSPlaygroundToggle", after = 'nvim-treesitter'}
  use 'j-hui/fidget.nvim'
  use {
    'romgrk/barbar.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' }
  }
  use {
    'kosayoda/nvim-lightbulb',
    requires = 'antoinemadec/FixCursorHold.nvim'
  }
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } },
    cmd = "Telescope",
    config = "require('telescope-config')"
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' 
  }
  use {
    'ThePrimeagen/harpoon',
    require = { 'nvim-lua/plenary.nvim' }
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons'
    },
    tag = 'nightly',
    cmd = "NvimTreeToggle",
    config = "require('ntree')"
  }
  use 'glepnir/dashboard-nvim'
  use { 'kdheepak/lazygit.nvim', cmd = "LazyGit" }
  use {
    "folke/which-key.nvim",
    event = "BufWinEnter",
    config = "require('which-key-config')"
  }
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
      local saga = require("lspsaga")

      saga.init_lsp_saga({
        symbol_in_winbar = {
          in_custom = true
        }
      })
    end,
  })
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
