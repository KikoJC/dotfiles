return {
    {"folke/which-key.nvim",
        config = function()
            local wk = require("which-key")
            wk.setup {
                wk.add({
                    {"[", desc = "+(Navigate/Go to) Previous"},
                    {"]", desc = "+(Navigate/Go to) Next"},
                    {"g", desc = "+go/g[motion]"},
                    {"z", desc = "+folds"},

                    {"<leader>", desc = "+<Space> The One True Leader" },
                    {"<leader>b", desc = "+buffers" },
                    {"<leader>f", desc = "+find/file" },
                    {"<leader>l", desc = "+Lsp" },
                    {"<leader>s", desc = "+search" },
                    {"<leader>t", desc = "+toggle" },
                    {"<leader>w", desc = "+windows" },
                    {"<leader>F", desc = "+Fuzzy Finder" },
                }),
            }
        end
    }
}
