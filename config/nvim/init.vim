" No compatibility with vi
set nocompatible

" Set indentation
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Leader key configuration
let mapleader = "\\"
map <Space> <leader>
set showcmd

" Set better split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Set more natural split positions
set splitbelow
set splitright

" Syntax highlighting
colorscheme default
syntax on

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

Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'vimwiki/vimwiki'

call plug#end()
" --- -------- --- "

" Lightline configuration
let g:lightline = {
  \ 'colorscheme': 'jellybeans',
  \ }

" Vimwiki configuration
let g:vimwiki_list = [{'path': '~/Documents/wiki/',
                      \ 'path_html': '~/Documents/wiki/html'}]

