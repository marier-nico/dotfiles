" No compatibility with vi
set nocompatible

" Set indentation
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Leader key configuration
let mapleader = "\\"
map <Space> <leader>
set showcmd

" Relative line numbering
set relativenumber

" Set better split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Set split resizing
nnoremap <Up>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

" Set more natural split positions
set splitbelow
set splitright

" Load plugins to handle specific files
filetype plugin on


" ====== Plugin Configurations ====== "

" Install vim-plug if it's not installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

" --- Vim Plug --- "
call plug#begin('~/.local/share/nvim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'arcticicestudio/nord-vim'

call plug#end()
" --- -------- --- "

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Tagbar
nmap <F8> :TagbarToggle<CR>

" CTRLP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'

" Syntax highlighting
colorscheme nord
syntax on

