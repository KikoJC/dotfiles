return {
    {"rcarriga/nvim-dap-ui",
        dependencies = {
            { "nvim-neotest/nvim-nio" },
            { "mfussenegger/nvim-dap" },
        },
        config = function()
            require("neodev").setup({
                library = { plugins = { "nvim-dap-ui" }, types = true },
            })
            require("dapui").setup()
        end
    }
}
