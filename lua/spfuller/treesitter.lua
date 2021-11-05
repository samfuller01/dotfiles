local treesitter_config = require('nvim-treesitter.configs')

treesitter_config.setup {
  indent = {
    enable = true
  },
  ensure_installed = {
    'javascript',
    'html',
    'css',
    'bash',
    'cpp',
    'c',
    'lua',
    'scala',
    'vim',
  },
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  textobjects = {
    enable = true,
  },
}
