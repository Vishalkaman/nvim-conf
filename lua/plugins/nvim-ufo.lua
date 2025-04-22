return {
  "kevinhwang91/nvim-ufo",
  dependencies = {
    "kevinhwang91/promise-async",
    "nvim-treesitter/nvim-treesitter", -- assume you already have this
  },
  config = function()
    -- Fold settings
    vim.o.foldcolumn = "1"       -- show fold column
    vim.o.foldlevel = 99         -- ensure folds are open
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

    -- UFO setup
    require("ufo").setup({
      provider_selector = function(_, filetype, _)
        -- Use treesitter if available, fallback to indent
        return { "treesitter", "indent" }
      end,
    })
  end,
}

