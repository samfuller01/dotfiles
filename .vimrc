filetype on
filetype plugin indent on
syntax on

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
" Auto pair brackets, parentheses, etc.
Plug 'jiangmiao/auto-pairs'

" Easily comment lines out
Plug 'tpope/vim-commentary'

" Colorscheme
Plug 'fcpg/vim-fahrenheit'

" Autocompletion
Plug 'lifepillar/vim-mucomplete'
call plug#end()

" Autocomplete settings
let g:mucomplete#enable_auto_at_startup = 1

" Colorscheme settings
set t_Co=256
set background=dark
color fahrenheit

" Leader settings
let mapleader=' '
nmap <leader>n :nohl<cr>

" Commentary settings
nnoremap \ :Commentary<cr>

" Source other files
source ~/.vim/config/statusline.vim
source ~/.vim/config/remaps.vim
source ~/.vim/config/generalsettings.vim
