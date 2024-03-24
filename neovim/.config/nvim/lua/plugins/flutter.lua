return {
    "akinsho/flutter-tools.nvim",
    dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim',
    },
    config = function ()
        require("flutter-tools").setup()
        vim.keymap.set("n", "<leader>fe", ":FlutterEmulators<CR>")
        vim.keymap.set("n", "<leader>fs", ":FlutterRun<CR>")
        vim.keymap.set("n", "<leader>fd", ":FlutterDevices<CR>")
    end,
}
