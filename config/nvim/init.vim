" Set indentation
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Set NERDTree shortcut
map <C-n> :NERDTreeToggle<CR>

" Set better split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Set more natural split positions
set splitbelow
set splitright

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
Plug 'scrooloose/nerdtree'

call plug#end()
" --- -------- --- "


" Set syntax highlighting
syntax on
colorscheme default
let g:lightline = {
  \ 'colorscheme': 'jellybeans',
  \ }
