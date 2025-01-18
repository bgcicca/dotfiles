set runtimepath+=C:\Users\Usuario\.vim\bundle\Vundle.vim
set runtimepath+=%USERPROFILE%\.vim\bundle\YouCompleteMe

syntax on
set nocompatible
set number
set expandtab
set shiftwidth=4
set tabstop=4
set nobackup
set autoindent
set smartindent
set mouse=a
set cursorline
set clipboard=unnamedplus
set guicursor=n-v-c:block,i:block,r-cr:hor20,o:hor50
set history=500
set autoread

call vundle#begin('C:\Users\Usuario\.vim\bundle\')
Plugin 'VundleVim/Vundle.vim'
Plugin 'neko-night/Vim'
Plugin 'tpope/vim-commentary'
Plugin 'preservim/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx' 
Plugin 'prettier/vim-prettier', {'do': 'npm install'}
Plugin 'dense-analysis/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'
Plugin 'ap/vim-css-color'
Plugin 'easymotion/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'fatih/vim-go'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'Yggdroot/indentLine'

" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Html & Css
Plugin 'hail2u/vim-css3-syntax'
Plugin 'gko/vim-coloresque'
Plugin 'tpope/vim-haml'
Plugin 'mattn/emmet-vim'

" javascript
Plugin 'jelera/vim-javascript-syntax'

" lua
Plugin 'xolox/vim-lua-ftplugin'
Plugin 'xolox/vim-lua-inspect'
Plugin 'xolox/vim-misc'

" typescript
Plugin 'leafgarland/typescript-vim'
Plugin 'HerringtonDarkholme/yats.vim'

" completion
Plugin 'girishji/vimcomplete'
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
nnoremap <Leader>n :NERDTreeFocus<CR>
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
\   'typescript': ['prettier'],
\   'typescriptreact': ['prettier'],
\   'css': ['prettier'],
\   'scss': ['prettier'],
\   'less': ['prettier'],
\   'json': ['prettier'],
\   'graphql': ['prettier'],
\   'markdown': ['prettier'],
\   'yaml': ['prettier'],
\   'html': ['prettier'],
\   'vue': ['prettier']
\}

let g:ale_fix_on_save = 1

let g:ale_fix_on_save = 1
let g:prettier#exec_cmd_async = 1
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#enabled = 1

let g:airline_theme='molokai'

let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
nmap f <Plug>(easymotion-s)

let g:fzf_layout = { 'down': '~40%' }
let g:fzf_colors = {
\ 'fg':      ['fg', 'Normal'],
\ 'bg':      ['bg', 'Normal'],
\ 'hl':      ['fg', 'Comment'],
\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
\ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
\ 'hl+':     ['fg', 'Statement'],
\ 'info':    ['fg', 'PreProc'],
\ 'border':  ['fg', 'Ignore'],
\ 'prompt':  ['fg', 'Conditional'],
\ 'pointer': ['fg', 'Exception'],
\ 'marker':  ['fg', 'Keyword'],
\ 'spinner': ['fg', 'Label'],
\ 'header':  ['fg', 'Comment'] }

nnoremap <C-p> :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>g :Rg<CR>

if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

if executable('rg')
  let g:fzf_command_prefix = 'Fzf'
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob "!.git/*"'
endif

nnoremap <Leader>/ :BLines<CR>
nnoremap <Leader>* :Rg <C-r><C-w><CR>

if executable('rg')
  command! -bang -nargs=* Rg
        \ call fzf#vim#grep(
        \   'rg --hidden --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
        \   fzf#vim#with_preview(), <bang>0)
endif


let g:indentLine_enabled = 1
let g:indentLine_concealcursor = ''
let g:indentLine_char = '|'
let g:indentLine_faster = 1


" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"

autocmd Filetype html setlocal ts=2 sw=2 expandtab

" javascript
let g:javascript_enable_domhtmlcss = 1

" vim-javascript
augroup vimrc-javascript
  autocmd!
  autocmd FileType javascript setl tabstop=4|setl shiftwidth=4|setl expandtab softtabstop=4
augroup END

" typescript
let g:yats_host_keyword = 1

let g:vimcomplete_languages = ['javascript', 'typescript', 'html', 'css', 'cpp']

autocmd FileType javascript,typescript setlocal ts=2 sw=2 expandtab
let g:vimcomplete_js_complete_keywords = 1
let g:vimcomplete_ts_complete_keywords = 1
let g:vimcomplete_ts_auto_import = 1

" HTML e CSS
autocmd FileType html,css setlocal ts=2 sw=2 expandtab
let g:vimcomplete_html_complete_tags = 1
let g:vimcomplete_css_complete_properties = 1

" C/C++
autocmd FileType c,cpp setlocal ts=4 sw=4 expandtab
let g:vimcomplete_cpp_complete_keywords = 1
let g:vimcomplete_cpp_auto_include = 1

inoremap <C-Space> <Plug>(vimcomplete-complete)
inoremap <C-n> <Plug>(vimcomplete-next)
inoremap <C-p> <Plug>(vimcomplete-prev)
inoremap <C-y> <Plug>(vimcomplete-accept)

autocmd FileType astro setlocal ts=2 sw=2 expandtab
let g:vimcomplete_languages += ['astro']
let g:vimcomplete_astro_complete_tags = 1
let g:vimcomplete_astro_auto_import = 1

inoremap <C-Space> <Plug>(vimcomplete-complete)
inoremap <C-n> <Plug>(vimcomplete-next)
inoremap <C-p> <Plug>(vimcomplete-prev)
inoremap <C-y> <Plug>(vimcomplete-accept)
