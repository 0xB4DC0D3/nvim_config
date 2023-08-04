local lspconfig = require("lspconfig")

local on_attach = function(client, bufnr)
	local opts = { buffer = bufnr, noremap = true }

  --client.server_capabilities.semanticTokensProvider = nil

	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
	vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
	vim.keymap.set('n', 'gd', function() require("telescope.builtin").lsp_definitions() end, opts)
	vim.keymap.set('n', 'gD', function() vim.lsp.buf.declaration() end, opts)
	vim.keymap.set('n', 'gi', function() require("telescope.builtin").lsp_implementations() end, opts)
	vim.keymap.set('n', 'gr', function() require("telescope.builtin").lsp_references() end, opts)
	vim.keymap.set('n', 'gdi', function() require("telescope.builtin").diagnostics() end, opts)
	vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.lua_ls.setup({
	capabilities = capabilities,
	on_attach = on_attach
})

lspconfig.tsserver.setup({
	capabilities = capabilities,
	on_attach = on_attach
})

lspconfig.jsonls.setup({
	capabilities = capabilities,
	on_attach = on_attach
})

lspconfig.cssls.setup({
	capabilities = capabilities,
	on_attach = on_attach
})

lspconfig.cssmodules_ls.setup({
	capabilities = capabilities,
	on_attach = on_attach
})

lspconfig.tailwindcss.setup({
	capabilities = capabilities,
	on_attach = on_attach
})
