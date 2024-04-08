return {
    {"nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-treesitter.configs").setup({
                modules = {},
                sync_install = true,
                ignore_install = {},
                ensure_installed = {
                    "bash",
                    "bibtex",
                    "c",
                    "css",
                    "diff",
                    "html",
                    "javascript",
                    "json",
                    "lua",
                    "luadoc",
                    "luap",
                    "markdown",
                    "markdown_inline",
                    "org",
                    "python",
                    "r",
                    "vim",
                    "vimdoc",
                },
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
                auto_install = true,
                indent = { enable = true },
                textobjects = {
                    move = {
                        enable = true,
                        set_jumps = false, -- you can change this if you want.
                        goto_next_start = {
                            ["]b"] = { query = "@code_cell.inner", desc = "next code block" },
                        },
                        goto_previous_start = {
                            ["[b"] = { query = "@code_cell.inner", desc = "previous code block" },
                        },
                    },
                    select = {
                        enable = true,
                        lookahead = true, -- you can change this if you want
                        keymaps = {
                            ["ib"] = { query = "@code_cell.inner", desc = "in block" },
                            ["ab"] = { query = "@code_cell.outer", desc = "around block" },
                        },
                    },
                    swap = { -- Swap only works with code blocks that are under the same
                        -- markdown header
                        enable = true,
                        swap_next = {
                            ["<leader>sbl"] = "@code_cell.outer",
                        },
                        swap_previous = {
                            ["<leader>sbh"] = "@code_cell.outer",
                        },
                    },
                },
            })
        end
    }
}
