local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup({
	ensure_installed = { "lua_ls", "tsserver", "jsonls", "cssls", "cssmodules_ls" }
})
