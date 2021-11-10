local ignore = {
  'node_modules/.*',
  'pyenv/*',
  '__pycache__/*',
  '.git/.*',
  '.yarn/.*',
  'fonts/*',
  'icons/*',
  'images/*',
  'dist/*',
  'build/*',
  'yarn.lock',
  'package-lock.json',
}

require('telescope').setup({
  defaults = {
    file_sorter = require('telescope.sorters').get_fzy_sorter,
    file_ignore_patterns = ignore,
    prompt_prefix = '> ',
    layout_strategy = 'vertical',
    color_devicons = true,

    file_previewer = require('telescope.previewers').vim_buffer_cat.new,
    grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
    qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
  },
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    },
  },
})

require('telescope').load_extension('fzy_native')

vim.api.nvim_command([[
  nnoremap <C-p> :Telescope git_files<CR>
]])

vim.api.nvim_command([[
  nnoremap <C-f> :Telescope grep_string<CR>
]])

vim.api.nvim_command([[
  nnoremap <Leader>pf :Telescope find_files<CR>
]])
