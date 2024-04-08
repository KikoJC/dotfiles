-- https://github.com/folke/lazy.nvim
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua;"
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua;"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.keymap.set("n", "<leader>L", "<cmd>Lazy<cr>", {desc = "Lazy.nvim"})

require("lazy").setup({
    spec = {
        {import = "plugins.installed"},
        {import = "plugins.configs"},
    },
    change_detection = {notify = false},
    defaults = {
        lazy = false,
        version = false,
    },
    checker = {enabled = true},
    performance = {
        rtp = {
            disabled_plugins = {
                "gzip",
                -- "netrw",
                -- "netrwPlugin",
                "tarPlugin",
                "tohtml",
                "zipPlugin",
            },
        },
    },
})
