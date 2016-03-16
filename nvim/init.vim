
" GENERAL
let mapleader="\<Space>"

" INTERFACE
set cursorline
set number
set ruler
set showcmd
set showmatch
set scrolloff=3

set ignorecase
set smartcase

" SHORTCUTS
set pastetoggle=<F9>
imap <F2> <ESC>:w<CR>
nmap <F2> :w<CR>
map Y y$
nnoremap <leader>b :bn<CR>
nnoremap <leader>l :ls<CR>
nnoremap <leader>n :nohl<CR>
nnoremap <leader>e :e
nnoremap <leader>w :w!<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>a :Ag 
vnoremap <leader>s :sort i<CR>

" PLUGINS
call plug#begin('./plugged')
Plug 'benekastah/neomake'
Plug 'mxw/vim-jsx' " JSX Syntax Highlighting

call plug#end()

" Run Neomake on each save
autocmd! BufWritePost * Neomake
" Open the Error window on errors
let g:neomake_open_list = 2
