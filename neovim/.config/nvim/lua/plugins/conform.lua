return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            python = { "black" },
        },
    },
    keys = {
        {
            "<leader>s",
            function()
                require("conform").format({
                    lsp_fallback = true,
                    timeout_ms = 500,
                })
            end,
            mode = "n",
            desc = "Format",
        },
    },
}
