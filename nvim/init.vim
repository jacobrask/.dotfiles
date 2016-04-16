" GENERAL

" Track current file's working directory
set autochdir
let g:netrw_keepdir=0
let g:netrw_silent=1

augroup VimStartup
  autocmd!
  " Show the current dir with netrw on startup without filename
  autocmd VimEnter * if expand("%") == "" | e . | endif
  " Return to last edit position when opening files
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
augroup END


" INTERFACE

" Reduce the number of hit-enter prompts
set cmdheight=2
set cursorline
set hlsearch
set ruler
set scrolloff=3
set showcmd
set showmatch

set ignorecase
set smartcase

autocmd BufWinEnter * set number

" Enable rainbow parentheses
autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces

" Set color scheme
autocmd VimEnter * set background=dark
autocmd VimEnter * colorscheme solarized
let g:solarized_termcolors=256
if !has('gui_running')
  set t_Co=256
endif


" PLUGINS

call plug#begin('~/config/nvim/plugged')
Plug 'airblade/vim-gitgutter' " Git diff in the gutter
Plug 'altercation/vim-colors-solarized'
Plug 'benekastah/neomake'
Plug 'janko-m/vim-test' " Run tests
Plug 'kien/rainbow_parentheses.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive' " Git
Plug 'tpope/vim-vinegar' " netrw enhancement
call plug#end()


" INDENTATION

filetype plugin indent on
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

autocmd FileType php setlocal shiftwidth=4 tabstop=4


" MAPPINGS

let mapleader="\<Space>"
set pastetoggle=<F9>
inoremap <F2> <C-o>:w<CR>
nnoremap <F2> :w<CR>
nnoremap Y y$

nnoremap <leader>b :bn<CR>
nnoremap <leader>l :ls<CR>
nnoremap <leader>n :nohl<CR>
nnoremap <leader>e :e
nnoremap <leader>w :w!<CR>
nnoremap <leader>q :q<CR>
vnoremap <leader>s :sort i<CR>

" Operators
onoremap p i(
onoremap in( :<c-u>normal! f(vi(<CR>
onoremap an( :<c-u>normal! f(va(<CR>
onoremap in[ :<c-u>normal! f[vi[<CR>
onoremap an[ :<c-u>normal! f[va[<CR>
onoremap in{ :<c-u>normal! f{vi{<CR>
onoremap an{ :<c-u>normal! f{va{<CR>

" Navigate between windows
tnoremap <S-A-h> <C-\><C-n><C-w>h
tnoremap <S-A-j> <C-\><C-n><C-w>j
tnoremap <S-A-k> <C-\><C-n><C-w>k
tnoremap <S-A-l> <C-\><C-n><C-w>l
nnoremap <S-A-h> <C-w>h
nnoremap <S-A-j> <C-w>j
nnoremap <S-A-k> <C-w>k
nnoremap <S-A-l> <C-w>l
inoremap <S-A-h> <C-w>h
inoremap <S-A-j> <C-w>j
inoremap <S-A-k> <C-w>k
inoremap <S-A-l> <C-w>l

" Move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Run tests with vim-test
nmap <silent> <leader>t :wall<CR> :TestNearest<CR>
nmap <silent> <leader>tf :wall<CR> :TestFile<CR>
nmap <silent> <leader>ta :wall<CR> :TestSuite<CR>

" Run Neomake on each save
autocmd! BufWritePost * Neomake
" Open the Error window on errors
let g:neomake_open_list = 2
let test#strategy = "neovim"
