set runtimepath+=C:\Users\Usuario\.vim\bundle\Vundle.vim

syntax on
set nocompatible
set number
set expandtab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set mouse=a
set cursorline
set guicursor=n-v-c:block,i:block,r-cr:hor20,o:hor50

call vundle#begin('C:\Users\Usuario\.vim\bundle\')
Plugin 'VundleVim/Vundle.vim'
Plugin 'neko-night/Vim'
call vundle#end()

let mapleader = "\\"

set backspace=indent,eol,start
set termguicolors

nnoremap <C-s> :w<CR>
inoremap jk <ESC>
nnoremap <C-c> :%y+<CR>
nnoremap <Leader>t :terminal<CR>

colorscheme nekonight-night
