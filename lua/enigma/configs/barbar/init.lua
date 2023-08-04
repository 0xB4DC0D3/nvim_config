vim.g.barbar_auto_setup = false

require("barbar").setup({
	sidebar_filetypes = {
		['neo-tree'] = { event = "BufWipeout", text = "File Explorer" }
	}
})
