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
set history=500

call vundle#begin('C:\Users\Usuario\.vim\bundle\')
Plugin 'VundleVim/Vundle.vim'
Plugin 'neko-night/Vim'
Plugin 'tpope/vim-commentary'
Plugin 'preservim/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx' 
Plugin 'dense-analysis/ale' 
Plugin 'prettier/vim-prettier', {'do': 'npm install'}
call vundle#end()

let mapleader = "\\"

set backspace=indent,eol,start
set termguicolors

inoremap jk <ESC>
nnoremap <C-c> :%y+<CR>
nnoremap <C-s> :w<CR>
nnoremap <Leader>t :terminal<CR>
nnoremap <C-v> "+p
nnoremap <C-z> u
vnoremap <C-v> "+p
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <Leader>p :Prettier<CR>
inoremap <C-v> <Esc>"+pa
inoremap <A-Up> <Esc>:m-2<CR>a
inoremap <A-Down> <Esc>:m+<CR>a
inoremap <C-Up> <Esc>v<Up>
inoremap <C-Down> <Esc>v<Down>

colorscheme nekonight-night

let g:ycm_global_ycm_extra_conf = '%USERPROFILE%\.vim\bundle\YouCompleteMe\third_party\ycmd\examples\ycm_extra_conf.py'
set completeopt=menuone,noinsert,noselect

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'javascriptreact': ['eslint'],
\}
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'javascriptreact': ['prettier'],
\}
let g:ale_fix_on_save = 1

let g:prettier#exec_cmd_async = 1
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0