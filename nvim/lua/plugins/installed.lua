return {
    -- Functions and utilities
    {"folke/which-key.nvim", event = "VeryLazy", opts = {}},
    {"folke/trouble.nvim", opts = {}},
    {"echasnovski/mini.bufremove", version = false, opts = {}},
    {"echasnovski/mini.pairs", version = false, opts = {}},
    {"nvim-lua/plenary.nvim", lazy = true},
    {"jiaoshijie/undotree", config = true,},
    {"nvim-tree/nvim-tree.lua", version = "*", lazy = false, opts = {}},
    {"nvim-tree/nvim-tree.lua", version = "*", lazy = false, opts = {}},

    -- Editing, navigation and highlighting
    {"nvim-treesitter/nvim-treesitter",
        dependencies = {
            {"windwp/nvim-ts-autotag"},
            {"nvim-treesitter/nvim-treesitter-textobjects"},
        },
        build = ":TSUpdate",
    },
    {"folke/flash.nvim", lazy = true, opts = {}},
    {"folke/zen-mode.nvim", opts = {}},
    {"folke/twilight.nvim", opts = {}},
    {"echasnovski/mini.surround", version = false, opts = {}, event = "VeryLazy"},
    {"numToStr/Comment.nvim", opts = {}, event = "VeryLazy"},
    {"echasnovski/mini.indentscope", version = false, opts = {}, event = "VeryLazy"},

    --LSP
    {"neovim/nvim-lspconfig"},
    {"folke/neodev.nvim", opts = {}},
    {"williamboman/mason.nvim", opts = {}},
    {"williamboman/mason-lspconfig.nvim", opts = {}},

    -- Autocompletion
    {"hrsh7th/nvim-cmp"},
    {"hrsh7th/cmp-buffer"},
    {"hrsh7th/cmp-cmdline"},
    {"hrsh7th/cmp-nvim-lsp"},
    {"hrsh7th/cmp-nvim-lua"},
    {"hrsh7th/cmp-path"},
    {"tamago324/cmp-zsh"},

    -- Snippets
    {"L3MON4D3/LuaSnip",
        dependencies = {
            "rafamadriz/friendly-snippets",
            "saadparwaiz1/cmp_luasnip",
        },
    },

    {"nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = {
            {"debugloop/telescope-undo.nvim"},
            {"nvim-telescope/telescope-fzf-native.nvim",
                build = [[cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release &&
        cmake --build build --config Release &&
        cmake --install build --prefix build]],
            },
        },
    },

    -- UI
    {"catppuccin/nvim", name = "catppuccin", priority =1000}, -- Colorscheme
    {"Mofiqul/dracula.nvim", name = "dracula", priority =1000},
    {"stevearc/dressing.nvim", opts = {}, event = "VeryLazy" },
    {"MunifTanjim/nui.nvim", event = "VeryLazy"},
    {"nvim-tree/nvim-web-devicons", lazy = true, opts = {color_icons = true}},
    {"j-hui/fidget.nvim", tag = "legacy", event = "LspAttach", opts = {} },
    {"SmiteshP/nvim-navbuddy",
        dependencies = {
            "vim/nvim-lspconfig",
            "SmiteshP/nvim-navic",
            "MunifTanjim/nui.nvim",
            "numToStr/Comment.nvim",        -- Optional
            "nvim-telescope/telescope.nvim" -- Optional
        },
    },
    {"SmiteshP/nvim-navic", opts = {}},

    -- Markup
    {"zk-org/zk-nvim"},
    {"quarto-dev/quarto-nvim",
        dependencies = {
            {"jmbuhr/otter.nvim",
                opts = {
                    buffers = {
                        set_filetype = true,
                    },
                },
            },
        },
    },

    -- Programming
    {"rcarriga/nvim-dap-ui",
        dependencies = {
            {"mfussenegger/nvim-dap"},
        },
    },
}
