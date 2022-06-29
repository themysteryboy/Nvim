-- https://github.com/rmagatti/auto-session

vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"

require("auto-session").setup(
    {
        auto_session_enable_last_session = true,
        pre_save_cmds = {"tabdo NvimTreeClose"}
    }
)

vim.cmd([[
    autocmd VimLeavePre * silent! :SaveSession
]])
