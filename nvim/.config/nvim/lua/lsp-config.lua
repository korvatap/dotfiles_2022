local has_lspconfig, lspconfig = pcall(require, "lspconfig")
if not has_lspconfig then
    return
end
local has_keybinds, on_attach = pcall(require, "lsp-default-keybinds")
if not has_keybinds then
    return
end

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

local has_lspcolors, lspcolors = pcall(require, "lsp-colors")
if not has_lspcolors then
    return
end

lspcolors.setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})

local has_lightbulb, lightbulb = pcall(require, "nvim-lightbulb")
if not has_lightbulb then
    return
end

lightbulb.setup({autocmd = {enabled = true}})

