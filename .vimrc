syntax on
set number
set expandtab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set mouse=a
set background=dark
set clipboard=unnamedplus
set guicursor=n-v-c:block,i:block,r-cr:hor20,o:hor50
set history=500
set termguicolors

set runtimepath+=~/.vim/bundle/Vundle.vim
set runtimepath+=~/.vim/bundle/YouCompleteMe

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'neko-night/Vim'
Plugin 'tpope/vim-commentary'
Plugin 'preservim/nerdtree'
Plugin 'jiangmiao/auto-pairs'
call vundle#end()

filetype plugin indent on

let mapleader = "\\"

nnoremap <C-s> :w<CR>
inoremap jk <ESC>
nnoremap <C-c> :%y+<CR>
nnoremap <Leader>t :terminal<CR>
nnoremap <C-v> "+p
nnoremap <C-z> u
vnoremap <C-v> "+p
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
inoremap <C-v> <Esc>"+pa
inoremap <A-Up> <Esc>:m-2<CR>a
inoremap <A-Down> <Esc>:m+<CR>a
inoremap <C-Up> <Esc>v<Up>
inoremap <C-Down> <Esc>v<Down>

colorscheme nekonight-night

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/ycm_extra_conf.py'
set completeopt=menuone,noinsert,noselect
