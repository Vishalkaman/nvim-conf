vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle>CR>", { desc = "Toggle File Explorer" })

local telescope_builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files , { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep , { desc = "Live Grep" })
vim.keymap.set("n", "<leader>fr", telescope_builtin.oldfiles , { desc = "Recent Files" })
vim.keymap.set("n", "<leader>fb", telescope_builtin.current_buffer_fuzzy_find , { desc = "Fuzzy Search in Buffer" })
vim.keymap.set("n", "<leader>fbf", telescope_builtin.buffers , { desc = "Find Buffer" })
vim.keymap.set("n", "<leader>fh", telescope_builtin.help_tags , { desc = "Help Tags" })


-- Which key
vim.keymap.set("n", "<leader>?", function() require('which-key').show( { global = false } ) end, { desc = "Buffer Local Keymaps (which-key)" })


-- Movement
vim.keymap.set("i", "<C-l>", "<Right>" , { desc = "Move Right" })
vim.keymap.set("i", "<C-h>", "<Left>" , { desc = "Move Right" })
