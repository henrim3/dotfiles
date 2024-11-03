-- return {
--     "drewtempelmeyer/palenight.vim",
--     lazy = false,
-- }

-- return {
--     "rebelot/kanagawa.nvim",
--     lazy = false,
-- }

return {
    "neanias/everforest-nvim",
    lazy = false,
    config = function ()
        require("everforest").setup()
    end
}
