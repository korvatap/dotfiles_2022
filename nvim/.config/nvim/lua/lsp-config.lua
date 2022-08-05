local lspconfig = require("lspconfig")
local on_attach = require("lsp-default-keybinds")

lspconfig.sumneko_lua.setup {
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

lspconfig.jsonls.setup {
    on_attach = on_attach
}

local omnisharp_bin = "~/.local/share/nvim/lsp_servers/omnisharp/omnisharp/OmniSharp"

lspconfig.omnisharp.setup {
    cmd = { omnisharp_bin },
    filetypes = { "cs", "vb" },
    on_attach = on_attach
--    use_mono = true
}

lspconfig.eslint.setup {
    on_attach = on_attach
}

lspconfig.yamlls.setup {
    filetypes = { "yml", "yaml" }
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

require("lsp-colors").setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})

require('nvim-lightbulb').setup({autocmd = {enabled = true}})
