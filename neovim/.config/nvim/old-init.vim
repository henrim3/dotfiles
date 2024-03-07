" settings
set number relativenumber
set noshowmode

" mappings
nmap ; :Files<CR>
imap <M-BS> <esc>dvbi

" lightline
let g:lightline = {
	\ 'colorscheme': 'one',
	\ }

" vimplug
call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'

call plug#end()
