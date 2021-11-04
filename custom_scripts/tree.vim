nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

let g:nvim_tree_gitignore = 1
let g:nvim_tree_quit_on_open = 1
let g:nvim_tree_git_hl = 1

lua << EOF
require'nvim-tree'.setup()
EOF
