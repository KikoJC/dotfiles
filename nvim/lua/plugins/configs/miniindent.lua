return {
    {"echasnovski/mini.indentscope",
        config = function()
            require("mini.indentscope").gen_animation.none()
            require("mini.indentscope").setup({
                symbol = "│",
                options = {
                    try_as_border = false,
                    border = "top",
                },
            })
        end
    }
}
