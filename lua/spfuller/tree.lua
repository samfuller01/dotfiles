vim.api.nvim_command([[
  nnoremap <C-n> :NvimTreeToggle<CR>
]])

vim.api.nvim_command([[
  nnoremap <Leader>r :NvimTreeRefresh<CR>
]])

vim.api.nvim_command([[
  nnoremap <Leader>n :NvimTreeFindFile<CR>
]])

vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_gitignore = 1
vim.g.nvim_tree_git_hl = 1

require('nvim-tree').setup({
  auto_close = true,
})
