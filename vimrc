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
syntax on
set t_Co=256
set viewoptions=cursor,options
let base16colorspace=256


" PLUGINS
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-surround'

Plugin 'walm/jshint.vim'
nmap <C-j> :JSHint<CR>


" SHORTCUTS
command W w
command Q q
set pastetoggle=<F9>
map Y y$

imap <F2> <ESC>:w<CR>
nmap <F2> :w<CR>

" Alt -> switches split (for Kinesis keyboard)
map <Esc>[1;3C <C-W><C-w>
