return {
  {
    'neovim/nvim-lspconfig',
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    },
    config = function()
      local lspconfig = require("lspconfig")
      local on_attach = require("lsp-default-keybinds")
      local mason_lspconfig = require("mason-lspconfig")
  
      mason_lspconfig.setup({
        ensure_installed = {
          "lua_ls",
          "rust_analyzer",
          "tsserver",
          "jsonls",
          "omnisharp",
          "eslint",
          "yamlls",
          "pyright",
          "csharp_ls"
        }
      })
      
      lspconfig.lua_ls.setup {
        on_attach = on_attach,
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim' }
            }
          }
        }
      }
  
      lspconfig.tsserver.setup {
        on_attach = on_attach
      }

      local jsonCapabilities = vim.lsp.protocol.make_client_capabilities()
      jsonCapabilities.textDocument.completion.completionItem.snippetSupport = true
  
      lspconfig.jsonls.setup {
        on_attach = on_attach,
        capabilities = jsonCapabilities,
        root_dir = function(fname)
        vim.notify(nvim_lsp.util.find_git_ancestor(fname))
          return nvim_lsp.util.find_git_ancestor(fname) or vim.loop.os_homedir()
        end
      }
  
      lspconfig.pyright.setup {
        on_attach = on_attach
      }
  
      --local omnisharp_bin = "~/.local/share/nvim/lsp_servers/omnisharp/omnisharp/OmniSharp"
  
      --lspconfig.omnisharp.setup {
      -- cmd = { omnisharp_bin },
        --filetypes = { "cs", "vb" },
        --on_attach = on_attach
        --    use_mono = true
      --}
      --
      lspconfig.csharp_ls.setup {
        on_attach = on_attach
      }
  
      lspconfig.eslint.setup {
        on_attach = on_attach
      }
  
      lspconfig.yamlls.setup {
        filetypes = { "yml", "yaml" },
        on_attach = on_attach,
        root_dir = util.find_git_ancestor
      }
  
      lspconfig.hls.setup {
        on_attach = on_attach
      }
  
      lspconfig.rust_analyzer.setup {
        on_attach = on_attach,
        settings = {
          ["rust-analyzer"] = {
            imports = {
              granularity = {
                group = "module",
              },
              prefix = "self",
            },
            cargo = {
              buildScripts = {
                enable = true,
              },
            },
            procMacro = {
              enable = true
            },
          }
        }
      }
  
      -- local fsautocomplete_bin = vim.fn.expand("~/.local/share/nvim/mason/packages/fsautocomplete/fsautocomplete")
      -- lspconfig.fsautocomplete.setup {
      --  cmd = { fsautocomplete_bin },
      -- }
  
      vim.g['fsharp#backend'] = "nvim"
      vim.g['fsharp#fsautocomplete_command'] = {'fsautocomplete'}

    end
  },
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" }},
    opts = {
      ensure_installed = {
        "stylua",
        "ruff",
        "debugpy",
        "codelldb",
      },
    },
    config = function(_, opts)
      require("mason").setup()
      local mr = require "mason-registry"
      for _, tool in ipairs(opts.ensure_installed) do
        local p = mr.get_package(tool)
        if not p:is_installed() then
          p:install()
        end
      end
    end,
  }
}