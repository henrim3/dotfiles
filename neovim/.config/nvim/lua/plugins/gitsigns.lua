return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup {
            signs = {
                add          = { text = "+" },
                change       = { text = "~" },
                delete       = { text = "_" },
                topdelete    = { text = "‾" },
                changedelete = { text = "~" },
                untracked    = { text = "+" },
            },
            on_attach = function(bufnr)
                local gitsigns = require('gitsigns')

                local function map(mode, l, r, opts)
                    opts = opts or {}
                    opts.buffer = bufnr
                    vim.keymap.set(mode, l, r, opts)
                end

                map('n', '<leader>tb', gitsigns.toggle_current_line_blame)
                map('n', '<leader>tw', gitsigns.toggle_word_diff)
            end,
            attach_to_untracked = true,
        }
    end
}
