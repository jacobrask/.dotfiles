set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nu
set showcmd
set nocp
set pastetoggle=<F10>
set laststatus=2
set ruler
set wildmenu
set wildmode=list:longest
set foldmethod=indent
set hlsearch
colo candy
filetype plugin indent on
syntax on
map Y y$
imap <Esc>[23~ <ESC>
nmap <Esc>[23~ a
imap <F2> <ESC>:w<CR>
nmap <F2> :w<CR>
command W w
command Q q
set statusline=%t\ (%{GitBranch()})
set viewoptions=cursor,folds,options
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview
