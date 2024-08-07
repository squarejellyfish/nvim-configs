require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "clangd", "pyright", "marksman", "texlab" },
})
-- You will likely want to reduce updatetime which affects CursorHold
-- note: this setting is global and should be set only once
vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = false,
})
vim.o.updatetime = 150

local builtin = require("telescope.builtin")

local on_attach = function(client, bufnr)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "gr", builtin.lsp_references, {})
    vim.keymap.set("n", "<leader>td", builtin.lsp_definitions, {})
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, {})
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, {})
    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

    -- formatting shits
    vim.keymap.set("n", "<leader>fm", function()
        vim.lsp.buf.format({ async = true })
    end, {})
    vim.api.nvim_create_autocmd("CursorHold", {
        buffer = bufnr,
        callback = function()
            local opts = {
                focusable = false,
                close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
                border = "rounded",
                source = "always",
                prefix = " ",
                scope = "cursor",
            }
            vim.diagnostic.open_float(nil, opts)
        end,
    })
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").lua_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
        },
    },
})

require("lspconfig").clangd.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

require("lspconfig").pyright.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "off"
            }
        }
    }
})

require("lspconfig").marksman.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

require("lspconfig").texlab.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

require("lspconfig").jsonls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})
require("lspconfig").rust_analyzer.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
        }
    }
})
