return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.api.nvim_create_autocmd("LspAttach", {
                group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
                callback = function (event)
                    local map = function (keys, func, desc)
                        vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
                    end

                    map("gd", require("telescope.builtin").lsp_definitions, "[g]oto [d]efinition")
                    map("gr", require("telescope.builtin").lsp_references, "[g]oto [r]eferences")
                    map("gi", require("telescope.builtin").lsp_implementations, "[g]oto [i]implementation")
                    map("<leader>D", require("telescope.builtin").lsp_type_definitions, "Type [D]efinition")
                    -- map("ds", require("telescope.builtin").lsp_document_symbols, "[d]ocument [s]ymbols")
                    -- map("ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, "[w]orkspace [s]ymbols")
                    map("<leader>rn", vim.lsp.buf.rename, "[r]e[n]ame")
                    map("<leader>ca", vim.lsp.buf.code_action, "[c]ode [a]ction")
                    map("K", vim.lsp.buf.hover, "Hover Documentation")
                    map("gD", vim.lsp.buf.declaration, "[g]oto [D]eclaration")
                end
            })
        end
    },

    {
        "mason-org/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },

    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    },
}
