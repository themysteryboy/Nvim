local result = vim.cmd(
[[
set relativenumber
set list
set number
set listchars=tab:\ \ ,trail:·
set exrc
set secure
set number
set laststatus=2
set shiftwidth=2
set scrolloff=5
set mouse=a
set splitright
set splitbelow
set showcmd
set wildmenu
set ignorecase
set smartcase
set noswapfile
set clipboard=unnamedplus
set nowrap
set encoding=UTF-8
set background=light
syntax enable
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set t_Co=256
]],
true)
vim.opt_local.formatoptions = vim.opt_local.formatoptions - {"c", "r", "o"}
vim.o.signcolumn = "yes"

-- ================================================
-- ================Color Scheme====================
-- ================================================
vim.o.background = "dark"

-- vim.cmd([[colorscheme tokyonight]])
vim.cmd([[colorscheme mystery]])
-- vim.cmd([[colorscheme vscode]])
-- vim.cmd([[colorscheme tokyodark]])
-- vim.cmd([[colorscheme gruvbox]])
