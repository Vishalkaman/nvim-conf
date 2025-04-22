return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = { "markdown", "markdown_inline" },
      highlight = { enable = true },
    }
  end
}

