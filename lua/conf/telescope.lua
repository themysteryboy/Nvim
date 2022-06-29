-- https://github.com/nvim-telescope/telescope.nvim

require("telescope").setup()

-- Find file
vim.keybinds.gmap("n", "ff", "<cmd>Telescope find_files theme=dropdown<CR>", vim.keybinds.opts)
-- Find words
vim.keybinds.gmap("n", "fg", "<cmd>Telescope live_grep theme=dropdown<CR>", vim.keybinds.opts)
-- Find special signs
vim.keybinds.gmap("n", "fb", "<cmd>Telescope buffers theme=dropdown<CR>", vim.keybinds.opts)
-- Find help doc
vim.keybinds.gmap("n", "fh", "<cmd>Telescope help_tags theme=dropdown<CR>", vim.keybinds.opts)
-- Find current opened files
vim.keybinds.gmap("n", "fo", "<cmd>Telescope oldfiles theme=dropdown<CR>", vim.keybinds.opts)
-- Find marks
vim.keybinds.gmap("n", "fm", "<cmd>Telescope marks theme=dropdown<CR>", vim.keybinds.opts)
