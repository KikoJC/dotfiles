return {
    -- this taps into vim.ui.select and vim.ui.input
    -- and in doing so currently breaks renaming in otter.nvim
    -- {"stevearc/dressing.nvim", enabled = false},

    {
        "quarto-dev/quarto-nvim",
        opts = {
            lspFeatures = {
                languages = { "r", "python", "bash", "html", "lua" },
                chunks = "all",
                diagnostics = {
                    enabled = true,
                    triggers = { "BufWritePost" },
                },
                completion = { enabled = true },
                codeRunner = {
                    enabled = true,
                    default_method = "molten",
                },
            },
        },
        ft = { "quarto", "markdown" },
        keys = {
            { "<leader>Qa",      ":QuartoActivate<cr>",                           desc = "quarto activate" },
            { "<leader>Qp",      ":lua require'quarto'.quartoPreview()<cr>",      desc = "quarto preview" },
            { "<leader>Qq",      ":lua require'quarto'.quartoClosePreview()<cr>", desc = "quarto close" },
            { "<leader>Qh",      ":QuartoHelp ",                                  desc = "quarto help" },
            { "<leader>Qe",      ":lua require'otter'.export()<cr>",              desc = "quarto export" },
            { "<leader>QE",      ":lua require'otter'.export(true)<cr>",          desc = "quarto export overwrite" },
            { "<leader>Qrr",     ":QuartoSendAbove<cr>",                          desc = "quarto run to cursor" },
            { "<leader>Qra",     ":QuartoSendAll<cr>",                            desc = "quarto run all" },
            { "<leader>ctr",     ":split term://R<cr>",                           desc = "terminal: R" },
            { "<leader>cti",     ":split term://ipython<cr>",                     desc = "terminal: ipython" },
            { "<leader>ctp",     ":split term://python<cr>",                      desc = "terminal: python" },
            { "<localleader>rc", require("quarto.runner").run_cell,               desc = "run cell",               silent = true },
            { "<localleader>ra", require("quarto.runner").run_above,              desc = "run cell and above",     silent = true },
            { "<localleader>rA", require("quarto.runner").run_all,                desc = "run all cells",          silent = true },
            { "<localleader>rl", require("quarto.runner").run_line,               desc = "run line",               silent = true },
            { "<localleader>r",  require("quarto.runner").run_range,              desc = "run visual range",       silent = true },
            { "<localleader>RA",
                function()
                    require("quarto.runner").run_all(true)
                end,
                desc = "run all cells of all languages",
                silent = true
            },
        },
    },
}
