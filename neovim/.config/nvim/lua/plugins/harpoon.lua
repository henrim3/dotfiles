return {
    "ThePrimeagen/harpoon",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function ()
        vim.keymap.set("n", "<leader>hm", function ()
            require("harpoon.mark").add_file()
        end)

        vim.keymap.set("n", "<leader>hh", function ()
            require("harpoon.ui").toggle_quick_menu()
        end)

        vim.keymap.set("n", "<leader>;", function ()
            require("harpoon.ui").nav_next()
        end)

        vim.keymap.set("n", "<leader>,", function ()
            require("harpoon.ui").nav_prev()
        end)
    end
}
