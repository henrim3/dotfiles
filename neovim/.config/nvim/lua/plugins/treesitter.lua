return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        vim.treesitter.language.register("html", "heex") -- optional

        require("nvim-treesitter").install({
            "c",
            "lua",
            "vim",
            "vimdoc",
            "query",
            "elixir",
            "heex",
            "javascript",
            "html",
        })

        -- vim.api.nvim_create_autocmd("FileType", {
        --   callback = function(args)
        --     local ft = vim.bo[args.buf].filetype
        --
        --     if vim.treesitter.language.get_lang(ft) then
        --       vim.treesitter.start(args.buf)
        --       vim.bo[args.buf].indentexpr =
        --         "v:lua.require'nvim-treesitter'.indentexpr()"
        --     end
        --   end,
        -- })
    end,
}
