-- |local-options|
local wo = vim.wo
require("quarto").activate()

wo.conceallevel = 1
wo.linebreak = true
wo.breakindent = true
vim.bo.textwidth = 80
wo.spell = true
wo.wrap = true

-- Use custom folding based on treesitter parsing
wo.foldenable = true
wo.foldlevel = 99
wo.foldmethod = "expr"
wo.foldexpr =  "nvim_treesitter#foldexpr()"
