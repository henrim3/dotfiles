return {
    'nvim-telescope/telescope.nvim',
    -- branch = '0.2.2',
    -- or                              , branch = '0.1.x',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader><leader>', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
        vim.keymap.set('n', '<leader>ds', builtin.lsp_document_symbols)
        vim.keymap.set('n', '<leader>ws', builtin.lsp_dynamic_workspace_symbols)
        vim.keymap.set('n', '<leader>fr', '<cmd>Telescope oldfiles<cr>')
        vim.keymap.set('n', '<leader>rr', builtin.resume)
    end,
}
