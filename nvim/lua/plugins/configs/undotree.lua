return {
    {"jiaoshijie/undotree",
        config = function()
            require("undotree").setup()
        end,
        vim.keymap.set("n", "<leader>u", "<cmd>lua require('undotree').toggle()<cr>", { desc = "Toggle undo tree" })
    }
}
