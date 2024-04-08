return {
    {"nvim-telescope/telescope.nvim",
        config = function()
            local actions = require("telescope.actions")
            require ("telescope").setup({
                defaults = {
                    path_display = function(_, path)
                        local tail = require("telescope.utils").path_tail(path)
                        return string.format("[%s] - %s", tail, path)
                    end,

                    mappings = {
                        i = {
                            ["<C-d>"] = actions.delete_buffer,
                            ["<C-n>"] = actions.move_selection_next,
                            ["<C-p>"] = actions.move_selection_previous,
                        },

                        n = {
                            ["<C-d>"] = actions.delete_buffer,
                            ["<C-n>"] = actions.move_selection_next,
                            ["<C-p>"] = actions.move_selection_previous,
                        },
                    },
                },

                pickers = {
                    find_files = {
                        find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
                    },
                },
            })

            -- Extensions
            pcall(require('telescope').load_extension, "fzf")
            pcall(require('telescope').load_extension, "notify")

            -- Keymaps
            vim.keymap.set("n", "<leader>bl", "<cmd>Telescope buffers<cr>", {desc = "List existing buffers"})
            vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", {desc = "Find files in cwd"})
            vim.keymap.set("n", "<leader>fg", "<cmd>Telescope git_files<cr>", {desc = "Find git files"})
            vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", {desc = "Recently opened files"})
            vim.keymap.set("n", "<leader>sw", "<cmd>Telescope live_grep<cr>", {desc = "Live grep in repository"})

        end,
    }
}
