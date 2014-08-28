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
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" Colors
syntax on
set t_Co=256
set viewoptions=cursor,options
let base16colorspace=256

" SHORTCUTS
command W w
command Q q
set pastetoggle=<F9>
map Y y$

imap <F2> <ESC>:w<CR>
nmap <F2> :w<CR>
nmap <C-j> :JSHint<CR>

" Alt -> switches split (for Kinesis keyboard)
map <Esc>[1;3C <C-W><C-w>


" PLUGINS settings

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'cakebaker/scss-syntax.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'walm/jshint.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'guns/vim-clojure-static'
Bundle "tobyS/skeletons.vim"
Bundle 'SirVer/ultisnips'
Bundle 'rizzatti/dash.vim'

Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Bundle 'chriskempson/base16-vim'

colorscheme Tomorrow-Night


" CoffeeScript
vmap <leader>c <esc>:'<,'>:CoffeeCompile<CR>
map <leader>c :CoffeeCompile<CR>
command -nargs=1 C CoffeeCompile | :<args>

" CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,.sass-cache

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
