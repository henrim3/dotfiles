-- line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- netrw
vim.cmd([[let g:netrw_bufsettings = 'nu']])

-- theme
vim.opt.termguicolors = true

-- indentation
vim.opt.smartindent = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- ruler (see virtcolumn plugin)
vim.opt.colorcolumn = "80"

-- I think this is so every buffer has relative line numbers
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = "*",
    callback = function(_)
        vim.wo.number = true
        vim.wo.relativenumber = true
    end
})

vim.diagnostic.config({
  signs = true,
  numhl = true,
  linehl = true,
  virtual_text = true,
  underline = true,
})
