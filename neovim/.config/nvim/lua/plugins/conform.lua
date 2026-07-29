return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            python = { "black" },
            ["_"] = { "trim_whitespace" },
        },
        default_format_opts = {
            lsp_format = "fallback",
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
