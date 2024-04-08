return {
    {"folke/which-key.nvim",
        config = function()
            local wk = require("which-key")
            wk.setup {
                wk.register({
                    ["["] = { name = "+(Navigate/Go to) Previous" },
                    ["]"] = { name = "+(Navigate/Go to) Next" },
                    ["g"] = { name = "+go/g[motion]" },
                    ["z"] = { name = "+folds" },

                    ["<leader>"] = { name = "+<Space> The One True Leader" },
                    ["<leader>b"] = { name = "+buffers" },
                    ["<leader>f"] = { name = "+find/file" },
                    ["<leader>l"] = { name = "Lsp" },
                    ["<leader>s"] = { name = "+search" },
                    ["<leader>t"] = { name = "+toggle" },
                    ["<leader>w"] = { name = "+windows" },
                    ["<leader>F"] = { name = "+Fuzzy Finder" },
                }),
            }
        end
    }
}
