return {
    {"catppuccin/nvim",
        config = function()
            require("catppuccin").setup({
                flavour = "frappe",
                color_overrides = {
                    mocha = {
                        overlay0 = "#c8c8c8",
                    }
                },
                integrations = {
                    cmp = true,
                    flash = true,
                    gitsigns = true,
                    headlines = true,
                    illuminate = true,
                    leap = true,
                    lsp_trouble = true,
                    mason = true,
                    markdown = true,
                    mini = true,
                    native_lsp = {
                        enabled = true,
                        underlines = {
                            errors = { "undercurl" },
                            hints = { "undercurl" },
                            warnings = { "undercurl" },
                            information = { "undercurl" },
                        },
                    },
                    navic = {enabled = true},
                    neotest = true,
                    neotree = true,
                    noice = true,
                    notify = true,
                    semantic_tokens = true,
                    telescope = true,
                    treesitter = true,
                    treesitter_context = true,
                    which_key = true,
                },
            })
            -- vim.cmd.colorscheme "catppuccin"
        end,
    },
}
