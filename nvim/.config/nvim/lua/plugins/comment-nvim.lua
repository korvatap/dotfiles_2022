return {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup {
        opleader = {
            line = "gc",
            block = "gb",
          },
          mappings = {
            basic = true,
            extra = true,
          },
          toggler = {
            line = "gcc",
            block = "gcb"
          },
          pre_hook = nil,
          post_hook = nil,
          ignore = nil,
      }
    end,
  event = "VeryLazy"
}
