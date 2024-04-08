return {
    {"rcarriga/nvim-dap-ui",
        dependencies = {
            { "nvim-neotest/nvim-nio" }
        },
        config = function()
            require("neodev").setup({
                library = { plugins = { "nvim-dap-ui" }, types = true },
            })
---@diagnostic disable-next-line: missing-fields
            require("dapui").setup({
                config = function()
                    require('dap-python').setup("~/pyvenvs/default/bin/python")
                    local dap = require("dap")
                    local dapui = require("dapui")

                    dap.listeners.before.attach.dapui_config = function()
                        dapui.open()
                    end
                    dap.listeners.before.launch.dapui_config = function()
                        dapui.open()
                    end
                    dap.listeners.before.event_terminated.dapui_config = function()
                        dapui.close()
                    end
                    dap.listeners.before.event_exited.dapui_config = function()
                        dapui.close()
                    end
                end
            })
        end
    }
}
