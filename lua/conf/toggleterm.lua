-- https://github.com/akinsho/toggleterm.nvim

local Toggleterm = require("toggleterm")

Toggleterm.setup(
    {
        --  goto insert mode when load in term
        start_in_insert = true,
        -- size of term
        size = 15,
    }
)

-- New Term
local Terminal = require("toggleterm.terminal").Terminal

local function inInsert()
    -- Kill ESC
    vim.keybinds.dgmap("t", "<Esc>")
end

-- New float term
local floatTerm =
    Terminal:new(
    {
        hidden = true,
        direction = "float",
        float_opts = {
            border = "double"
        },
        on_open = function(term)
            inInsert()
            -- ESC to exit in float term
            vim.keybinds.bmap(term.bufnr, "t", "<Esc>", "<C-\\><C-n>:close<CR>", vim.keybinds.opts)
        end,
        on_close = function()
            -- Reset Esc
            vim.keybinds.gmap("t", "<Esc>", "<C-\\><C-n>", vim.keybinds.opts)
        end
    }
)

-- New lazygit term
-- local lazyGit =
--     Terminal:new(
--     {
--         cmd = "lazygit",
--         hidden = true,
--         direction = "float",
--         float_opts = {
--             border = "double"
--         },
--         on_open = function(term)
--             inInsert()
--             -- lazygit 中 q 是退出
--             vim.keybinds.bmap(term.bufnr, "i", "q", "<cmd>close<CR>", vim.keybinds.opts)
--         end,
--         on_close = function()
--             -- 重新映射 Esc
--             vim.keybinds.gmap("t", "<Esc>", "<C-\\><C-n>", vim.keybinds.opts)
--         end
--     }
-- )

-- new method
Toggleterm.float_toggle = function()
    floatTerm:toggle()
end

-- Toggleterm.lazygit_toggle = function()
--     lazyGit:toggle()
-- end

-- Exit insert mode in term
vim.keybinds.gmap("t", "<Esc>", "<C-\\><C-n>", vim.keybinds.opts)
-- open term
vim.keybinds.gmap("n", "<leader>tf", "<cmd>exe v:count.'ToggleTerm'<CR>", vim.keybinds.opts)
-- open float term
vim.keybinds.gmap("n", "<leader>tt", "<cmd>lua require('toggleterm').float_toggle()<CR>", vim.keybinds.opts)
-- open lazygit term
-- vim.keybinds.gmap("n", "<leader>tg", "<cmd>lua require('toggleterm').lazygit_toggle()<CR>", vim.keybinds.opts)
-- open or close all terms
vim.keybinds.gmap("n", "<leader>ta", "<cmd>ToggleTermToggleAll<CR>", vim.keybinds.opts)
