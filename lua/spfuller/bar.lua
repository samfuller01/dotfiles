vim.api.nvim_command([[
  nnoremap <silent>gt :BufferNext<CR>
]])

vim.api.nvim_command([[
  nnoremap <silent>gT :BufferPrevious<CR>
]])

vim.api.nvim_command([[
  nnoremap <silent><C-o> :BufferClose<CR>
]])
