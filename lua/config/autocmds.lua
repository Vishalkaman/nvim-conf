-- Define autocmd group
local view_group = vim.api.nvim_create_augroup("auto_view", { clear = true })

-- Save view on BufWinLeave, BufWritePost, WinLeave
vim.api.nvim_create_autocmd({ "BufWinLeave", "BufWritePost", "WinLeave" }, {
  group = view_group,
  desc = "Save view with mkview for real files",
  callback = function(args)
    -- Only save view for buffers that have `view_activated`
    if vim.b[args.buf].view_activated then
      vim.cmd("mkview")  -- Save view (folds, cursor, etc.)
    end
  end,
})

-- Load view on BufWinEnter
vim.api.nvim_create_autocmd("BufWinEnter", {
  group = view_group,
  desc = "Try to load file view if available and enable view saving for real files",
  callback = function(args)
    -- Check if the buffer has `view_activated`
    if not vim.b[args.buf].view_activated then
      local filetype = vim.api.nvim_get_option_value("filetype", { buf = args.buf })
      local buftype = vim.api.nvim_get_option_value("buftype", { buf = args.buf })
      local ignore_filetypes = { "gitcommit", "gitrebase", "svg", "hgcommit" }

      -- Enable view saving for valid file types (excluding the ignore list)
      if buftype == "" and filetype ~= "" and not vim.tbl_contains(ignore_filetypes, filetype) then
        vim.b[args.buf].view_activated = true
        vim.cmd("loadview")  -- Load saved view (folds, cursor, etc.)
      end
    end
  end,
})

