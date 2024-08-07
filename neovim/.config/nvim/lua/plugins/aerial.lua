return {
    "stevearc/aerial.nvim",
    config = function()
        require("aerial").setup({
            on_attach = function(bufnr)
                -- Jump forwards/backwards with '{' and '}'
                -- vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
                -- vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
            end,
        })
    end,
    keys = {
        { "<leader>o", "<cmd>AerialToggle!<cr>", desc = "Aerial Toggle" },
    },
}
