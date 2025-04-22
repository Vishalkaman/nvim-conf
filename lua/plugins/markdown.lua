return {
  {
    "tadmccorkle/markdown.nvim",
    ft = "markdown",
    opts = {},
  },
  {
    "preservim/vim-markdown",
    enabled = false,
    ft = "markdown",
    dependencies = { "godlygeek/tabular" }, -- for aligning tables
    config = function()
      vim.g.vim_markdown_folding_disabled = 0
      vim.g.vim_markdown_folding_style_pythonic = 1
      vim.g.vim_markdown_folding_level = 6
    end,
  }
}
