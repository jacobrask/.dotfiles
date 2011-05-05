" GENERAL
set nocompatible
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
set autochdir
filetype on

" INDENTATION
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
syntax on

" INTERFACE
set nu
set showcmd
set nocp
set laststatus=2
set ruler
set wildmenu
set wildmode=list:longest
set foldmethod=indent
set hlsearch
set visualbell t_vb=
colo candy
set viewoptions=cursor,folds,options

" SHORTCUTS
command W w
command Q q
set pastetoggle=<F11>
map Y y$

" Caps Lock to insert mode
imap <F10> <ESC>
nmap <F10> i
imap <F2> <ESC>:w<CR>
nmap <F2> :w<CR>

" Alt -> switches split (for Kinesis keyboard)
map <Esc>[1;3C <C-W><C-w>
