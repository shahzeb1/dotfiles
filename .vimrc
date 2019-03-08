set encoding=utf-8

set nocompatible
set autoindent
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set so=999
set smartcase "ignore case when searching

set number relativenumber
syntax on
set guifont=Fira\ Code:h18

"cursor shape:
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set softtabstop=4   " number of spaces in tab when editing
set tabstop=4       " number of visual spaces per TAB
set expandtab       " tabs are spaces
set lazyredraw          " redraw only when we need to.
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set colorcolumn=80      " draw a line on the 80th column
" show whitespaces:
set list listchars=tab:»·,trail:·,nbsp:·


" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
autocmd InsertEnter,InsertLeave * set cul!
augroup END

"aliases:
let mapleader = ","
map <Esc><Esc> :w<CR>
map <Leader>l :NERDTreeToggle<CR>
map <C-d> :color dracula<CR>
map <C-p> :CtrlP<CR>
map <Leader>z :Goyo 100<CR>
map <Leader>p o<ESC>p
map <Leader>n :set number relativenumber<CR>
nnoremap <Space> i

"for Goyo
function! s:goyo_enter()
    set number relativenumber
endfunction
autocmd! User GoyoEnter nested call <SID>goyo_enter()

"plugins:
call plug#begin()
Plug 'junegunn/goyo.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } 
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tpope/vim-rails'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'posva/vim-vue'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
call plug#end()
