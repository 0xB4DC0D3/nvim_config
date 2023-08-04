require("nvim-treesitter.configs").setup({
	ensure_installed = { "typescript", "tsx", "css", "javascript", "json" },
	sync_install = false,
	auto_install = true,

	highlight = {
		enable = true,
	},
	autotag = {
		enable = true,
    enable_close_on_slash = false,
	},
	indent = {
		enable = true
	}
})
