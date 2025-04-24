return {
  "nvim-treesitter/nvim-treesitter",
  run = ":TSUpdate",
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = { "markdown", "lua", "javascript", "html", "css" },  -- Add other languages you need
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,  -- Enable Tree-sitter indentation
      },
    }
  end
}
