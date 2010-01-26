set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nu
set showcmd
set pastetoggle=<F11>
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
command W w
command Q q
set statusline=%t\ (%{GitBranch()})
set viewoptions=cursor,folds
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview
