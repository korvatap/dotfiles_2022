local on_attach = function(_, bufnr)
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)

    local smallIndendFts = { "json", "jsonc", "javascript", "javascriptreact", "html", "css", "javascript.jsx",
        "typescript", "typescriptreact", "typescript.tsx", "vue" }

    if smallIndendFts[vim.bo.filetype] then
        vim.api.nvim_command('set tabstop=4');
        vim.api.nvim_command('set softtabstop=4');
        vim.api.nvim_command('set shiftwidth=4');
    end
end

return on_attach
