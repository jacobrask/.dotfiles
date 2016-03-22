" GENERAL

" Track current file's working directory
set autochdir
let g:netrw_keepdir=0
let g:netrw_silent=1

" Return to last edit position when opening files
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif


" Show the current dir with netrw on startup without filename
augroup VimStartup
  au!
  au VimEnter * if expand("%") == "" | e . | endif
augroup END


" INTERFACE

set cursorline
set hlsearch
set number
set ruler
set scrolloff=3
set showcmd
set showmatch

set ignorecase
set smartcase

" Enable rainbow parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

au VimEnter * set background=dark
au VimEnter * colorscheme solarized
set t_Co=256
let g:solarized_termcolors=256


" PLUGINS

call plug#begin('~/config/nvim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'benekastah/neomake'
Plug 'janko-m/vim-test' " Run tests
Plug 'kien/rainbow_parentheses.vim'
Plug 'mxw/vim-jsx' " JSX Syntax Highlighting
Plug 'tpope/vim-fugitive' " Git
call plug#end()


" INDENTATION

filetype plugin indent on
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
autocmd FileType php setlocal shiftwidth=4 tabstop=4


" SHORTCUTS

let mapleader="\<Space>"
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
vnoremap <leader>s :sort i<CR>

" navigate between windows in terminal mode
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Run tests with vim-test
nmap <silent> <leader>t :wall<CR> :TestNearest<CR>
nmap <silent> <leader>tf :wall<CR> :TestFile<CR>
nmap <silent> <leader>ta :wall<CR> :TestSuite<CR>

" Run Neomake on each save
autocmd! BufWritePost * Neomake
" Open the Error window on errors
let g:neomake_open_list = 2
let test#strategy = "neovim"
