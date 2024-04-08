local devicons = require("nvim-web-devicons")

local modes = {
    ["n"]  = " NORMAL  ",
    ["v"]  = " VISUAL  ",
    [""] = " V·Block ",
    ["V"]  = " V·Line  ",
    ["Rv"] = "V·Replace",
    ["i"]  = "        ",
    ["R"]  = " Replace ",
    ["c"]  = " Command ",
    ["t"]  = "  TERM   ",
}
-- Building blocks

local mode = function()
    local current_mode = vim.api.nvim_get_mode().mode
    return string.format(" %s",  modes[current_mode])
end

local ft_icon = function()
    local file_type = vim.bo.filetype
    local icon = devicons.get_icon_colors_by_filetype(vim.bo.filetype, {default = true})
    return string.format("%s  [%s]", icon, file_type)
end

local line_info = function()
    return [[Col:%c Line:[%l/%L] %p%% 󰚀 ]]
end

Statusline = {}

Statusline.default = function()
    return table.concat {
        "%#Folded#",
        mode(),
        " ",
        " %=",
        ft_icon(),
        " | ",
        line_info(),
    }
end

vim.cmd([[set statusline=%!v:lua.Statusline.default()]])
