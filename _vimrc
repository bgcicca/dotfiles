set runtimepath+=C:\Users\Usuario\.vim\bundle\Vundle.vim
set runtimepath+=%USERPROFILE%\.vim\bundle\YouCompleteMe

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
set clipboard=unnamedplus
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
nnoremap <C-v> "+p
vnoremap <C-v> "+p
inoremap <C-v> <Esc>"+pa
inoremap <A-Up> <Esc>:m-2<CR>a
inoremap <A-Down> <Esc>:m+<CR>a
inoremap <C-Up> <Esc>v<Up>
inoremap <C-Down> <Esc>v<Down>

colorscheme nekonight-night

let g:ycm_global_ycm_extra_conf = '%USERPROFILE%\.vim\bundle\YouCompleteMe\third_party\ycmd\examples\ycm_extra_conf.py'
set completeopt=menuone,noinsert,noselect

