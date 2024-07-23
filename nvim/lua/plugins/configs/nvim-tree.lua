return {
    {"nvim-tree/nvim-tree.lua",
        config = function ()
            require("nvim-tree").setup({
                sort = {
                    sorter = "case_sensitive",
                },
                view = {
                    width = 30,
                },
                renderer = {
                    group_empty = true,
                },
                filters = {
                    dotfiles = true,
                },
            })
        end,

        -- Keymappings
        vim.keymap.set("n", "<leader>fe", "<cmd>NvimTreeToggle<cr>", {desc = "Open nvim-tree in Bfr/Win cwd (File Explorer)", remap = true})
    },
}
