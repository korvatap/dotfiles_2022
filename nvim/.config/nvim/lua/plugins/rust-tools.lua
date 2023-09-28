return {
  'simrat39/rust-tools.nvim',
  ft = "rust",
  config = function()
    local tools = require("rust-tools")
    tools.setup {
      server = {
        onattach = function(_, bufnr)
          -- Hover actions
          vim.keymap.set("n", "<C-space>", tools.hover_actions.hover_actions, { buffer = bufnr })
          -- Code action groups
          vim.keymap.set("n", "<Leader>a", tools.code_action_group.code_action_group, { buffer = bufnr })
        end,
      }
    }
  end
}

