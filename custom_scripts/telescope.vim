nnoremap <C-p> :Telescope git_files<CR>
nnoremap <C-f> :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ") })<CR>
nnoremap <leader>pf :Telescope find_files<CR>
