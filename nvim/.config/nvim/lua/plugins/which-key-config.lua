return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function(_)
    local wk = require("which-key")
    wk.setup {}
    wk.register({
      ["<A-<>"] = { "<CMD> BufferPrevious<CR>", "Previous buffer" },
      ["<A->>"] = { "<CMD> BufferNext<CR>", "Next buffer" },
      ["<C-n>"] = { ":NvimTreeToggle<CR>", "Toggle NvimTree" },
      ["<C-g><C-h>"] = { "<CMD>Lspsaga lsp_finder<CR>", "LspSaga Lsp Finder" },
      ["<C-h><C-m>"] = { "<CMD>lua require('harpoon.mark').add_file()<CR>", "Add file to harpoon" },
      ["<C-h><C-l>"] = { "<CMD>lua require('harpoon.ui').toggle_quick_menu()<CR>", "Toggle harpoon menu" },
      ["<Leader><CR>"] = { ":so $MYVIMRC<CR>", "Source init.lua file" },
      ["<Leader>r"] = { ":NvimTreeRefresh<CR>", "Refres NvimTree" },
      ["<Leader>n"] = { ":NvimTreeFindFile<CR>", "Find file in NvimTree" },
      ["<Leader>gg"] = { ":LazyGit<CR>", "Open LazyGit" },
      ["<Leader>orc"] = { ":e $MYVIMRC<CR>", "Open init.lua file" },
      ["<Leader>ff"] = { "<CMD>Telescope find_files<CR>", "Telescope Find files" },
      ["<Leader>fg"] = { "<CMD>Telescope live_grep<CR>", "Telescope Live grep" },
      ["<Leader>fb"] = { "<CMD>Telescope buffers<CR>", "Telescope Buffers" },
      ["<Leader>fh"] = { "<CMD>Telescope help_tags<CR>", "Telescope help_tags" },
      ["<Leader>fm"] = { "<CMD>Telescope harpoon marks<CR>", "Telescope harpoon marks" },
      ["<Leader>ft"] = { "<CMD>Telescope file_browser<CR>", "Telescope File Browser" },
      ["<Leader>ftc"] = { "<CMD>Telescope file_browser path=%:p:h select_buffer=true<CR>", "Telescope File Browser - Current Buffer" },
      ["<Leader>fc"] = { "<CMD> Telescope current_buffer_fuzzy_find fuzzy=false case_mode=ignore_case<CR>", "Telescope current buffer"},
      ["<Leader>fr"] = { "<CMD>lua vim.lsp.buf.format {async = true}<CR>", "Format file" },
    })
  end
}
