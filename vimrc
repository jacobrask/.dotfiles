" GENERAL
set exrc
set nocompatible
filetype off
set autochdir
let mapleader="\<Space>"
set nowritebackup
set secure

" Return to last edit position when opening files
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" Remember info about open buffers on close
set viminfo^=%


" INDENTATION
filetype plugin indent on
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
nnoremap <leader>p p`[v`]=


" INTERFACE
set cursorline
set laststatus=2
set lines=50
set columns=160
set nocp
set nu
set ruler
set showcmd
set showmatch
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
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["typescript"] }
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" tern autocompletion
Plugin 'marijnh/tern_for_vim'
let g:tern_map_keys=1
let g:tern#is_show_argument_hints_enabled=1


" TypeScript plugins
" syntax
Plugin 'leafgarland/typescript-vim'
" autocompletion
Plugin 'Quramy/tsuquyomi'

" vimproc command execution (required for tsuquyomi)
Plugin 'Shougo/vimproc.vim'

" Syntax highlighting for JSX
Plugin 'mxw/vim-jsx'

" Silver Searcher
Plugin 'rking/ag.vim'

Plugin 'kien/ctrlp.vim'
let g:ctrlp_working_path_mode = 'ra'

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

nnoremap <leader>b :bn<CR>
nnoremap <leader>l :ls<CR>
nnoremap <leader>n :nohl<CR>
nnoremap <leader>e :e
nnoremap <leader>w :w!<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>a :Ag
vnoremap <leader>s :sort i<CR>
