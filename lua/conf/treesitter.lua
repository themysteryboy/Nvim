require 'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "rust", "python", "cpp", "go", "javascript", "vue", "css", "html" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },

  indent = {
    enable = false
  }
}
