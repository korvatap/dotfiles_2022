local has_lspconfig, lspconfig = pcall(require, "lspconfig")
if not has_lspconfig then
  vim.notify("Could not require lspconfig. Exiting lsp-config.lua")
  return
end

local has_keybinds, on_attach = pcall(require, "lsp-default-keybinds")
if not has_keybinds then
  vim.notify("Could not require lsp-default-keybinds. Exiting lsp-config.lua")
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

lspconfig.pyright.setup {
  on_attach = on_attach
}

local omnisharp_bin = "~/.local/share/nvim/lsp_servers/omnisharp/omnisharp/OmniSharp"

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
  on_attach = on_attach
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

local has_lspcolors, lspcolors = pcall(require, "lsp-colors")
if not has_lspcolors then
  vim.notify("Could not require lsp-colors. Exiting lsp-config.lua")
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
  vim.notify("Could not require nvim-lightbulb. Exiting lsp-config.lua")
  return
end

lightbulb.setup({ autocmd = { enabled = true } })
