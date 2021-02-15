filetype on
filetype plugin indent on
syntax on

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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

" Colorscheme
Plug 'fcpg/vim-fahrenheit'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Set settings
set updatetime=50
set nocompatible
set noshowmode
set belloff=all
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set smartcase
set nu rnu
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
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'errorcount', 'filetype' ]]
      \},
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name',
      \   'errorcount': 'AleErrorCount'
      \},
      \}

function! AleErrorCount() abort
  let l:counts = ale#statusline#Count(bufnr(''))

  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors

  return l:counts.total == 0 ? 'OK' : printf(
  \   '%dE %dW',
  \   all_errors,
  \   all_non_errors
  \)
endfunction

" Colorscheme settings
set background=dark
colorscheme fahrenheit
set t_Co=256

" Leader settings
let mapleader=' '
nmap <leader>n :nohl<cr>
nmap <leader>f :Rg 

" Nerdtree toggle
map - :NERDTreeToggle<cr>
nmap <leader>m :NERDTreeFind<cr>

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
vnoremap jk <esc>
nnoremap Q <nop>
nnoremap <F1> <nop>
map <S-k> <nop>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
