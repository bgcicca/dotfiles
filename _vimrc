set runtimepath+=C:\Users\Usuario\.vim\bundle\Vundle.vim

syntax on
set nocompatible
set number
set expandtab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set backspace=indent,eol,start
set mouse=a
set guicursor=

call vundle#begin('C:\Users\Usuario\.vim\bundle\')
Plugin 'VundleVim/Vundle.vim'
Plugin 'neko-night/Vim'
call vundle#end()

let mapleader = "\\"
let &t_SI = ""
let &t_EI = ""

set backspace=indent,eol,start
set termguicolors

nnoremap dd "_dd
nnoremap <C-s> :w<CR>
inoremap jk <ESC>
nnoremap <C-c> :%y+<CR>
nnoremap <Leader>t :terminal<CR>

colorscheme nekonight-night
