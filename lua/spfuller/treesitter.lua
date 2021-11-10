local treesitter_config = require('nvim-treesitter.configs')

treesitter_config.setup {
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
    'python',
  },
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  textobjects = {
    enable = true,
  },
  indent = {
    enable = true,
  }
}
