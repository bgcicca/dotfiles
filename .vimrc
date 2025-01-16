syntax on
set number          
set expandtab        
set shiftwidth=4     
set tabstop=4        
set autoindent       
set smartindent
set mouse=a 
set background=dark

call plug#begin('~/.vim/plugged')

Plug 'neko-night/Vim'

call plug#end()

let mapleader = "\\"

nnoremap <C-s> :w<CR>
inoremap jk <ESC>
nnoremap <C-c> :%y+<CR>
nnoremap <Leader>t :terminal<CR>
colorscheme nekonight-night

