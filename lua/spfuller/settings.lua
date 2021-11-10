local set = vim.o
local command = vim.api.nvim_command
local HOME = os.getenv('HOME')

set.belloff = 'all'
set.smartindent = true
set.wrap = false
set.swapfile = false
set.backup = false
set.undodir = HOME .. '/.vim/backup'
set.undofile = true
set.incsearch = true
set.nu = true
set.rnu = true
set.wildmenu = true
set.lazyredraw = true
set.backspace = [[indent,eol,start]]
set.wildignore = [[*/node_modules/*,*/pyenv/*]]
set.shortmess = 'c'
set.exrc = true
set.hlsearch = false
set.hidden = true
set.errorbells = false
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.scrolloff = 8
set.showmode = false
set.completeopt = [[menuone,noinsert,noselect]]
set.signcolumn = 'yes'
set.cmdheight = 2
set.showmatch = true
set.ignorecase = true
set.autoindent = true
set.cc = '80'
set.cursorline = true
set.ttyfast = true

command([[
  autocmd FileType vim setlocal shiftwidth=2 softtabstop=2 expandtab
]])

command([[
  autocmd FileType cpp setlocal shiftwidth=4 softtabstop=4 expandtab
]])

command([[
  autocmd FileType js setlocal shiftwidth=2 softtabstop=2 expandtab
]])

command([[
  autocmd FileType py setlocal shiftwidth=4 softtabstop=4 expandtab
]])

command([[
  autocmd FileType lua setlocal shiftwidth=2 softtabstop=2 expandtab
]])
