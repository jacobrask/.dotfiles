" GENERAL
set nocompatible
filetype off
set autochdir
let mapleader=","
set nowritebackup


" INDENTATION
filetype plugin indent on
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
nnoremap <leader>p p`[v`]=


" INTERFACE
set laststatus=2
set nocp
set nu
set ruler
set showcmd
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set visualbell t_vb=
set wildmenu
set wildmode=list:longest

" search
set hlsearch
set ignorecase
set smartcase

" PLUGINS
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" rainbow parentheses
Plugin 'kien/rainbow_parentheses.vim'
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" solarized theme
Plugin 'altercation/vim-colors-solarized'
set background=dark
let g:solarized_termcolors=256

" syntastic linting
Plugin 'scrooloose/syntastic'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" tern autocompletion
Plugin 'marijnh/tern_for_vim'
let g:tern_map_keys=1
let g:tern#is_show_argument_hints_enabled=1

call vundle#end()
filetype plugin on


" COLORS
syntax on
set t_Co=256
colorscheme solarized


" SHORTCUTS

" common typos
command Q q
command W w
imap <F2> <ESC>:w<CR>
nmap <F2> :w<CR>

set pastetoggle=<F9>

map Y y$

nnoremap <leader><space> :nohl<CR>
nnoremap <leader>w :w!<cr>
vnoremap <leader>s :sort i<CR>
