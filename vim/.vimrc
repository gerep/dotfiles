execute pathogen#infect()

filetype plugin indent on
syntax on

" remap esc
inoremap jk <ESC>

set encoding=utf-8
set autoindent " automatically set indent of new line
set smartindent
set number " show line numbers 
set tabstop=2
set shiftwidth=2 " space characters for identation
set expandtab " tab to space
set hlsearch " highlight search resultsk
set noswapfile " do not create swap file
set laststatus=2
" set mapleader for combo
let mapleader = ";"

" shortcut to save
nmap <leader>. :w<cr>

" make arrow keys useless, habit breaking
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
