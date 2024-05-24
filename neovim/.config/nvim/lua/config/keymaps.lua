vim.g.mapleader = " "

--vim.keymap.set('n', '<leader>pv', ':Ex<CR>', { noremap = true })
vim.keymap.set('i', '<M-BS>', '<C-w>', { noremap = true })

-- move selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- window resizing
vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]])   -- make the window biger vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]])   -- make the window smaller vertically
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -

-- clear highlighting
vim.keymap.set("n", "<leader>ch", "<cmd>:noh<cr>", { noremap = true })
