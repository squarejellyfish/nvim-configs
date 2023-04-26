require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "clangd", "pyright", "marksman" },
})

local on_attach = function(_, _)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
	vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
	vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
	vim.keymap.set("n", "<leader>fm", 
        function ()
            vim.lsp.buf.format({ async = true })
        end, {})
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
})

require("lspconfig").marksman.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

