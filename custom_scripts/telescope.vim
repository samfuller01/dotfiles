nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <C-f> :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ") })<CR>
nnoremap <leader>pf :lua require('telescope.builtin').find_files()<CR>
