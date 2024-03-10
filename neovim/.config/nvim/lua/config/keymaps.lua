vim.g.mapleader = " "

vim.keymap.set('n', '<leader>pv', ':Ex<CR>', { noremap = true })
vim.keymap.set('i', '<M-BS>', '<C-w>', { noremap = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")
