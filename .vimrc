set tabstop=2
set shiftwidth=2
set expandtab
set number
syntax on
set hlsearch

" nnoremap ' <Esc>
" vnoremap ' <Esc>gV
" onoremap ' <Esc>
" cnoremap ' <C-C><Esc>
" inoremap ' <Esc>`^
" inoremap <Leader>' '

call plug#begin('~/.vim/plugged')
  Plug 'morhetz/gruvbox'
  Plug 'crusoexia/vim-monokai'
  Plug 'pangloss/vim-javascript'
  Plug 'ayu-theme/ayu-vim' " or other package manager
  Plug 'itchyny/lightline.vim'
call plug#end()

set termguicolors

" colorscheme monokai

" let ayucolor="light"
let ayucolor="dark"
" let ayucolor="mirage"
colorscheme ayu

if !has('gui_running')
  set t_Co=256
endif
set laststatus=2
