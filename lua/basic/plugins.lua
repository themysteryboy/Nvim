local packer = require("packer")

packer.startup (
    {
        function()

			-- lsp beautify
			use({
			    "glepnir/lspsaga.nvim",
			    branch = "main",
			    config = function()
					require("conf.lspsaga")
			    end,
			})

			use {
				'folke/lsp-colors.nvim',
				require("lsp-colors").setup({
				  Error = "#db4b4b",
				  Warning = "#e0af68",
				  Information = "#0db9d7",
				  Hint = "#10B981"
				})
			}

			-- cmp plugins
			use "hrsh7th/nvim-cmp" -- The completion plugin
			use "hrsh7th/cmp-buffer" -- buffer completions
			use "hrsh7th/cmp-path" -- path completions
			use "hrsh7th/cmp-cmdline" -- cmdline completions
			use "saadparwaiz1/cmp_luasnip" -- snippet completions
			use "hrsh7th/cmp-nvim-lsp"
			use "onsails/lspkind-nvim"
			use "hrsh7th/cmp-calc"
			use "hrsh7th/cmp-emoji"
			use "octaltree/cmp-look"
			use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}

			-- snippets
			use "L3MON4D3/LuaSnip" --snippet engine
			use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

			-- LSP
  			use "neovim/nvim-lspconfig" -- enable LSP
  			use "williamboman/nvim-lsp-installer" -- simple to use language server installer

			-- ColorSchemes
			use {
				'marko-cerovac/material.nvim',
				'shaunsingh/moonlight.nvim',
				"sainnhe/gruvbox-material",
				"drewtempelmeyer/palenight.vim",
			}

            -- Bufferline
            use {
                "akinsho/bufferline.nvim",
                requires = {
                    "famiu/bufdelete.nvim"
                },
                config = function()
                    require("conf.bufferline")
                end
            }

            -- nvim-tree
            use {
                "kyazdani42/nvim-tree.lua",
                cmd = "NvimTreeToggle",
                requires = {
                    "kyazdani42/nvim-web-devicons"
                },
                config = function()
                    require("conf.nvim-tree")
                end
            }

            -- auto pairs
            use {
				"chun-yang/auto-pairs"
            }

            -- Theme
            use "rebelot/kanagawa.nvim"

            -- beautiful scroll
            use {
                'karb94/neoscroll.nvim',
                config = function()
                    require('neoscroll').setup()
                end
            }

            -- todo tree
            use {
                "folke/todo-comments.nvim",
                config = function()
                    require("conf.todo-comments")
                end
            }

            -- Beautiful notifications
            -- use {
            --     "rcarriga/nvim-notify",
            --     config = function()
            --         require("conf.nvim-notify")
            --     end
            -- }

            -- telescope
            use {
                "nvim-telescope/telescope.nvim",
                requires = {
                    "nvim-lua/plenary.nvim",
                    "BurntSushi/ripgrep",
                    "sharkdp/fd"
                },
                config = function()
                    require("conf.telescope")
                end
            }

            -- Undo tree
            use {
                "mbbill/undotree",
                config = function()
                    require("conf.undotree")
                end
            }

            -- Terminal
            use {
                "akinsho/toggleterm.nvim",
                config = function()
                    require("conf.toggleterm")
                end
            }

            -- Restore workbench
            use {
                "rmagatti/auto-session",
                config = function()
                    require("conf.auto-session")
                end
            }

            -- Go to where u left
            use {
                "ethanholz/nvim-lastplace",
                config = function()
                    require("conf.nvim-lastplace")
                end
            }

            -- General Color Showing
            use {
				"RRethy/vim-hexokinase"
            }

            -- Indent line
            use {
                "lukas-reineke/indent-blankline.nvim",
                config = function()
                    require("conf.indent")
                end
            }

            -- Show the number of matches
            use {
                "kevinhwang91/nvim-hlslens",
                config = function()
                    require("conf.nvim-hlslens")
                end
            }

            -- Treesitter
            use {
                "nvim-treesitter/nvim-treesitter",
                config = function()
                    require("conf.treesitter")
                end,
            }

            -- Status Line
            use {
                -- "Avimitin/nerd-galaxyline",
				"glepnir/galaxyline.nvim",
				requires = { 'kyazdani42/nvim-web-devicons', opt = true },

				-- "glepnir/spaceline.vim",
                -- requires = {
				-- 	"kyazdani42/nvim-web-devicons"
				-- },

				config = function()
					require("conf.statusline")
				end
            }

            -- ColorScheme
            use {
                "themysteryboy/nvim-deus",
                requires = {
                    "nvim-treesitter/nvim-treesitter"
                }
                -- config = function()
                --     require("conf.deus")
                -- end
            }

            use {
                "wbthomason/packer.nvim"
            }
        end,

        -- Use Float Term
        config = {
            display = {
                open_fn = require("packer.util").float
            }
        }
    }
)

vim.cmd(
    [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]
)
