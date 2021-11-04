set updatetime=50
set belloff=all
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set nu rnu
set wildmenu
set lazyredraw
set backspace=indent,eol,start
set wildignore+=*/node_modules/*,*/pyenv/*
set shortmess+=c
set exrc
set guicursor=
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set cmdheight=2
set showmatch
set ignorecase
set mouse=v
set autoindent
set cc=80
set cursorline
set ttyfast

" File specific tab settings
" Vim
autocmd FileType vim setlocal shiftwidth=2 softtabstop=2 expandtab
" C++
autocmd FileType cpp setlocal shiftwidth=4 softtabstop=4 expandtab
" JavaScript
autocmd FileType js setlocal shiftwidth=2 softtabstop=2 expandtab
" Python
autocmd FileType py setlocal shiftwidth=4 softtabstop=4 expandtab
" Lua
autocmd FileType lua setlocal shiftwidth=2 softtabstop=2 expandtab
