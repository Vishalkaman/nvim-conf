local opt = vim.opt

opt.number = false
opt.relativenumber = false
opt.wrap = true
opt.linebreak = true
opt.spell = true
opt.spelllang = { "en_us" }
opt.conceallevel = 2
opt.foldenable = false


vim.opt.tabstop = 2        -- number of spaces a <Tab> counts for
vim.opt.shiftwidth = 2     -- number of spaces used for each step of (auto)indent
vim.opt.expandtab = true   -- convert tabs to spaces

