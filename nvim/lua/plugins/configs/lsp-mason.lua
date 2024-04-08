return {
    {"neovim/nvim-lspconfig",
        config = function()
            require("neodev").setup()
            local navic = require("nvim-navic")
            local lsp_config = require("lspconfig")

            local capabilities = vim.tbl_deep_extend(
                "force",
                {},
                vim.lsp.protocol.make_client_capabilities(),
                require("cmp_nvim_lsp").default_capabilities())

            local on_attach = function(client, bufnr)
                if client.server_capabilities.documentSymbolProvider then
                    navic.attach(client, bufnr)
                end

                local signs = { Error = " ", Warn = " ", Hint = "", Info = " " }
                for severity, icon in pairs(signs) do
                    local hl = "DiagnosticSign" .. severity
                    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
                end


                local opts = { buffer = bufnr, remap = false }

                vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
                vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
                vim.keymap.set("n", "<leader>lca", function() vim.lsp.buf.code_action() end, opts)
                vim.keymap.set("n", "<leader>lws", function() vim.lsp.buf.workspace_symbol() end, opts)
                vim.keymap.set("n", "<leader>lvd", function() vim.diagnostic.open_float() end, opts)
                vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts)
                vim.keymap.set("n", "gh", function() vim.lsp.buf.signature_help() end, opts)
                vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, opts)
                vim.keymap.set("n", "<leader>lrr", function() vim.lsp.buf.references() end, opts)
                vim.keymap.set("n", "<leader>lrn", function() vim.lsp.buf.rename() end, opts)
                vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
            end

            require("mason").setup()
            require("mason-lspconfig").setup({
                handlers = {
                    function(server_name)
                        require("lspconfig")[server_name].setup {
                            on_attach = on_attach,
                            capabilities = capabilities,
                        }
                    end,

                    ["lua_ls"] = function()
                        lsp_config.lua_ls.setup {
                            on_attach = on_attach,
                            capabilities = capabilities,
                            setings = {
                                Lua = {
                                    diagnostics = {
                                        globals = { "vim" }
                                    }
                                }
                            }
                        }
                    end,

                    ["marksman"] = function()
                        lsp_config.marksman.setup({
                            on_attach = on_attach,
                            capabilities = capabilities,
                            filetypes = { "markdown", "markdown.mdx", "qmd", "Rmd", "quarto" },
                            root_dir = require("lspconfig.util").root_pattern({ ".git", ".marksman.toml", "_quarto.yml" }),
                        })
                    end,

                    ["pyright"] = function()
                        lsp_config.pyright.setup({
                            on_attach = on_attach,
                            capabilities = capabilities,
                            settings = {
                                python = {
                                    analysis = {
                                        diagnosticSeverityOverrides = {
                                            reportUnusedExpression = "none",
                                        },
                                    },
                                },
                            },
                        })
                    end,

                    ["bashls"] = function()
                        lsp_config.bashls.setup({
                            on_attach = on_attach,
                            capabilities = capabilities,
                            filetypes = {"sh"},
                            pattern = {"sh", "zsh"},
                            -- root_dir = require("lspconfig.util").root_pattern({".git",}),
                        })
                    end,
                },

                ensure_installed = {
                    "bashls",
                    "clangd",
                    "cssls",
                    "html",
                    "jsonls",
                    "lua_ls",
                    "marksman",
                    "pyright",
                    "quick_lint_js",
                    "r_language_server",
                    "taplo",
                    "tsserver",
                },
                border = "single",
            })
        end
    }
}
