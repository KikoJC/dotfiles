-- https://github.com/jmbuhr/quarto-nvim-kickstarter/blob/1f5ef4ac9867f2c296c88b206a9de835dcee65c3/ftplugin/quarto.lua
-- Don't run vim ftplugin on top
vim.api.nvim_buf_set_var(0, "did_ftplugin", true)

local wo = vim.wo

wo.conceallevel = 2
wo.linebreak = true
wo.breakindent = true
wo.spell = true
wo.wrap = true

-- Use custom folding based on treesitter parsing
wo.foldenable = true
wo.foldlevel = 3
wo.foldmethod = "expr"
wo.foldexpr =  "nvim_treesitter#foldexpr()"
