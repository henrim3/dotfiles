return {
    "akinsho/flutter-tools.nvim",
    dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim',
    },
    config = function ()
        vim.keymap.set("n", "<leader>fe", ":FlutterEmulators<CR>")
        vim.keymap.set("n", "<leader>fs", ":FlutterRun<CR>")
    end,
}
