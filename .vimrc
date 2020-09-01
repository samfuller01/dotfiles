filetype on
filetype plugin indent on
syntax on

" Short update time
set updatetime=50

call plug#begin('~/.vim/bundle')
" File explorer
Plug 'scrooloose/nerdtree'

" Auto pair brackets, parentheses, etc.
Plug 'jiangmiao/auto-pairs'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Easily comment lines out
Plug 'tpope/vim-commentary'

" Statusline
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'

" Linter
Plug 'dense-analysis/ale'

" Ripgrep
Plug 'jremmen/vim-ripgrep'

" Colorscheme
Plug 'pbrisbin/vim-colors-off'
call plug#end()

" Set settings
set nocompatible
set noshowmode
set noerrorbells
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set smartcase
set nu 
set hlsearch
set wildmenu
set lazyredraw
set backspace=indent,eol,start
set tabstop=2
set shiftwidth=2
set expandtab
set wildignore+=*/node_modules/*
set clipboard=unnamed

" Statusline settings
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \},
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \},
      \}

let g:ale_linters = {
      \   'python': ['flake8', 'pylint']
      \}

" Colorscheme settings
set background=dark
colorscheme off
set t_Co=256

" RipGrep things
if executable('rg')
  let g:rg_derive_root='true'
endif

" Nerdtree toggle
map - :NERDTreeToggle<cr>
nmap <leader>m :NERDTreeFind<cr>

" Leader settings
let mapleader='a'
nmap <leader>n :nohl<cr>
nmap <leader>f :Rg

" FZF Settings
nnoremap <C-p> :FZF<cr>

" Commentary settings
nnoremap \ :Commentary<cr>

" Remaps
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap ; :
inoremap jk <esc>
nnoremap Q <nop>
nnoremap <F1> <nop>
map <S-k> <nop>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
