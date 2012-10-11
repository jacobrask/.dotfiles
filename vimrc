" GENERAL
set nocompatible
filetype off
set autochdir
filetype on
let mapleader = ","
set nowritebackup


" INDENTATION
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
nnoremap <leader>p p`[v`]=


" INTERFACE
set nu
set showcmd
set nocp
set laststatus=2
set ruler
set wildmenu
set wildmode=list:longest
set hlsearch
set visualbell t_vb=

" Colors
set t_Co=256
set viewoptions=cursor,options

" SHORTCUTS
command W w
command Q q
set pastetoggle=<F9>
map Y y$

" Caps Lock to insert mode
imap <F10> <ESC>
nmap <F10> i
imap <F2> <ESC>:w<CR>
nmap <F2> :w<CR>

" Alt -> switches split (for Kinesis keyboard)
map <Esc>[1;3C <C-W><C-w>


" PLUGINS settings

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'cakebaker/scss-syntax.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'

Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
colorscheme Tomorrow-Night


" CoffeeScript
vmap <leader>c <esc>:'<,'>:CoffeeCompile<CR>
map <leader>c :CoffeeCompile<CR>
command -nargs=1 C CoffeeCompile | :<args>

" CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,.sass-cache
