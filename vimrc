au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview
set autochdir

" Indentation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
filetype plugin indent on
syntax on

" Interface
set nu
set showcmd
set nocp
set laststatus=2
set ruler
set wildmenu
set wildmode=list:longest
set foldmethod=indent
set hlsearch
colo candy
set statusline=%F\ (%{GitBranch()})\ [%l,%v]
set viewoptions=cursor,folds,options

" Shortcuts
command W w
command Q q
set pastetoggle=<F10>
map Y y$
imap <Esc>[23~ <ESC>
nmap <Esc>[23~ a
imap <F2> <ESC>:w<CR>
nmap <F2> :w<CR>

