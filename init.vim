filetype on
filetype plugin on
syntax on

" Autoinstall vim-plug package manager and dependencies if not already
" installed
let plug_path = stdpath('data') . '/site/autoload/plug.vim'
if !filereadable(plug_path)
  silent execute '!curl -fLo ' . plug_path . '  --create-dirs 
        \ "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
unlet plug_path

" Plugin Manger vim-plug
call plug#begin('~/.config/nvim/plugged')
" Autocomplete
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'onsails/lspkind-nvim'
" Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
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
" Buffer tabline
Plug 'romgrk/barbar.nvim'
" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()

" Entirely lua based config
lua require('spfuller')
