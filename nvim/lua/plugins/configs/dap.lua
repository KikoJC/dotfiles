return {
    {"mfussenegger/nvim-dap",
        config = function()
            require('dap-python').setup("~/pyvenvs/default/bin/python")

            vim.keymap.set('n', '<F5>', function() require('dap').continue() end, {desc = "Dap Continue"})
            vim.keymap.set('n', '<F10>', function() require('dap').step_over() end, {desc = "Dap Step over"})
            vim.keymap.set('n', '<F11>', function() require('dap').step_into() end, {desc = "Dap Step into"})
            vim.keymap.set('n', '<F12>', function() require('dap').step_out() end, {desc = "Dap Step out"})
            vim.keymap.set('n', '<Leader>db', function() require('dap').toggle_breakpoint() end, {desc = "Toggle breakpoint"})
            vim.keymap.set('n', '<Leader>dB', function() require('dap').set_breakpoint() end, {desc = "Set breakpoint"})
            vim.keymap.set('n', '<Leader>dlp',
                function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end, {desc ="Log point message"})
            vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end, {desc ="Repl open"})
            vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end, {desc ="Run last"})
            vim.keymap.set({ 'n', 'v' }, '<Leader>dh', function()
                require('dap.ui.widgets').hover()
            end, {desc ="Dap hover"})
            vim.keymap.set({ 'n', 'v' }, '<Leader>dp', function()
                require('dap.ui.widgets').preview()
            end, {desc ="Dap preview"})
            vim.keymap.set('n', '<Leader>df', function()
                local widgets = require('dap.ui.widgets')
                widgets.centered_float(widgets.frames)
            end, {desc ="Dap centered float"})
            vim.keymap.set('n', '<Leader>ds', function()
                local widgets = require('dap.ui.widgets')
                widgets.centered_float(widgets.scopes)
            end)
        end
    }
}
