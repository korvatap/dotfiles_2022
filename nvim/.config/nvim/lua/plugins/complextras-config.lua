
return {
    'tjdevries/complextras.nvim',
    config = function()
        -- Complextras.nvim configuration
        vim.api.nvim_set_keymap(
            "i",
            "<C-x><C-m>",
            [[<c-r>=luaeval("require('complextras').complete_matching_line()")<CR>]],
            { noremap = true }
        )
        
        vim.api.nvim_set_keymap(
            "i",
            "<C-x><C-d>",
            [[<c-r>=luaeval("require('complextras').complete_line_from_cwd()")<CR>]],
            { noremap = true }
        )
        
    end
}
