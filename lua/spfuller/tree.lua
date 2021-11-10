vim.api.nvim_command([[
  nnoremap <C-n> :NvimTreeToggle<CR>
]])

vim.api.nvim_command([[
  nnoremap <Leader>r :NvimTreeRefresh<CR>
]])

vim.api.nvim_command([[
  nnoremap <Leader>n :NvimTreeFindFile<CR>
]])

vim.g.nvim_tree_gitignore = true
vim.g.nvim_tree_quit_on_open = true
vim.g.nvim_tree_git_hl = true

require('nvim-tree').setup()
