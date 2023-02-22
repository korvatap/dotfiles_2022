return {
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
      local saga = require("lspsaga")

      saga.setup({
        symbol_in_winbar = {
          in_custom = true
        }
      })

    -- Lsp finder
    --vim.keymap.set("n", "<C-g><C-h>", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })

    -- Code action
    vim.keymap.set("n", "<C-c><C-a>", "<cmd>Lspsaga code_action<CR>", { silent = true })
    vim.keymap.set("v", "<C-c><C-a>", "<cmd><C-U>Lspsaga range_code_action<CR>", { silent = true })

    -- Preview definition
    vim.keymap.set("n", "<C-g><C-d>", "<cmd>Lspsaga preview_definition<CR>", { silent = true })

    -- Show line diagnostics
    vim.keymap.set("n", "<C-c><C-d>", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })
    vim.keymap.set("n", "<C-c><C-d><C-n>", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })
    vim.keymap.set("n", "<C-c><C-d><C-p>", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })

    -- Floatterm
    vim.keymap.set("n", "<A-d>", "<cmd>Lspsaga open_floaterm<CR>", { silent = true })
    vim.keymap.set("t", "<A-d>", "<C-\\><C-n><cmd>Lspsaga close_floaterm<CR>", { silent = true })

    -- Signature help
    vim.keymap.set("n", "<C-s><C-h>", "<Cmd>Lspsaga signature_help<CR>", { silent = true })

    -- Rename
    vim.keymap.set("n", "<C-r><C-r>", "<cmd>Lspsaga rename<CR>", { silent = true })

    -- Preview definition
    vim.keymap.set("n", "<C-p><C-d>", "<cmd>Lspsaga preview_definition<CR>", { silent = true })

    -- Docs
    vim.keymap.set("n", "<C-h><C-d>", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

    end,
  }