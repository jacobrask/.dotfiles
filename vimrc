" GENERAL

" Track current file's working directory
set autochdir
let g:netrw_keepdir=0
let g:netrw_silent=1

set exrc
set nocompatible
filetype off
set nowritebackup
set secure
" Remember info about open buffers on close
set viminfo^=%

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

set cmdheight=2
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


" INDENTATION

filetype plugin indent on
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

autocmd FileType php setlocal shiftwidth=4 tabstop=4


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

" Improved syntax highlighting for JavaScript
Plugin 'pangloss/vim-javascript'
" Syntax highlighting for JSX
Plugin 'mxw/vim-jsx'

" Silver Searcher
Plugin 'rking/ag.vim'

Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

call vundle#end()
filetype plugin on


" COLORS
syntax on
set t_Co=256
colorscheme solarized


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
