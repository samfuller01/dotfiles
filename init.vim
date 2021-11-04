filetype on
filetype plugin on
syntax on

" Autoinstall vim-plug package manager and dependencies if not already
" installed
let plug_path = stdpath('data') . '/site/autoload/plug.vim'
if !filereadable(plug_path)
  silent execute '!curl -fLo ' . plug_path . ' --create-dirs
        \ "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
unlet plug_path

" Plugin Manger vim-plug
call plug#begin('~/.config/nvim/plugged')
" Autocomplete
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/nvim-cmp'
" FZF
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
" Misc.
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
" Colorscheme
Plug 'sainnhe/everforest'
" () [] {} pairing
Plug 'jiangmiao/auto-pairs'
" File tree
Plug 'kyazdani42/nvim-tree.lua'
" Git integration
Plug 'tpope/vim-fugitive'
" Commenting
Plug 'tpope/vim-commentary'
" Statusline
Plug 'nvim-lualine/lualine.nvim'
" File Icons
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()

function! SourceDirectory(file)
  for s:fpath in split(globpath(a:file, "*.vim", '\n'))
    exe 'source' s:fpath
  endfor
endfunction

call SourceDirectory('~/.config/nvim/custom_scripts')
lua require('spfuller')
