return {
  'nvim-treesitter/nvim-treesitter',
  build = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  event = { "BufReadPost", "BufNewFile" },
  config = function(_)
    local install_config = require("nvim-treesitter.install")
    if not vim.fn.has('unix') then
      install_config.compilers = { 'zig' }
    end
    require("nvim-treesitter.configs").setup {
      highlight = { enable = true },
      incremental_selection = { enable = true },
      locals = { enable = true },
      textobjects = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "lua", "rust", "c_sharp", "json", "css",
        "dockerfile", "javascript", "vimdoc",
        "html", "markdown", "yaml"
      }
    }
    vim.cmd [[highlight IncludedC guibg=#373b41]]
  end
}
