vim.g.mapleader = ' '
local command = vim.api.nvim_command

command([[
  nnoremap j gj
]])

command([[
  nnoremap k gk
]])

command([[
  nnoremap B ^
]])

command([[
  nnoremap E $
]])

command([[
  nnoremap $ <nop>
]])

command([[
  nnoremap ^ <nop>
]])

command([[
  nnoremap ; :
]])

command([[
  inoremap jk <esc>
]])

command([[
  vnoremap jk <esc>
]])

command([[
  nnoremap Q <nop>
]])

command([[
  nnoremap <F1> <nop>
]])

command([[
  nnoremap <S-k> <nop>
]])

command([[
  nnoremap <C-j> <C-w>j
]])

command([[
  nnoremap <C-k> <C-w>k
]])

command([[
  nnoremap <C-h> <C-w>h
]])

command([[
  nnoremap <C-l> <C-w>l
]])

command([[
  nnoremap \ :Commentary<CR>
]])

command([[
  vnoremap \ :Commentary<CR>
]])
