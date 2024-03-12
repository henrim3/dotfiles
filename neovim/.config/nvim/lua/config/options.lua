-- line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- netrw
vim.cmd([[let g:netrw_bufsettings = 'nu']])

-- theme
vim.opt.termguicolors = true

-- indentation
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true


vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = "*",
    callback = function(ev)
        vim.wo.number = true
        vim.wo.relativenumber = true
    end
})
