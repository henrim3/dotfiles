return {
    "folke/trouble.nvim",
    opts = {
        auto_preview = false,
    },
    cmd = "Trouble",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
        {
            "<leader>xx",
            "<cmd>Trouble diagnostics toggle<cr>",
            desc = "Diagnostics (Trouble)",
        },
    },
}
