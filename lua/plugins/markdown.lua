return {
  {
    "tadmccorkle/markdown.nvim",
    ft = "markdown",
    opts = {},
  },
  {
    "plasticboy/vim-markdown",
    ft = "markdown",
    dependencies = { "godlygeek/tabular" },
    config = function()
      vim.g.vim_markdown_fenced_languages = {
        "js=javascript",
        "ts=typescript",
        "json",
        "html",
        "css",
        "bash=sh",
      }
    end,
  },
}
