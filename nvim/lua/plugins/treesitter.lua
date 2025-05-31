---@diagnostic disable: missing-fields
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	branch = "master",
	config = function()
		require("nvim-treesitter.configs").setup({
			highlight = { enable = true },
			indent = { enable = true },
			auto_install = true,
			ensure_installed = {
				"python",
				"lua",
				"php",
				"markdown",
				"html",
				"css",
				"bash",
				"tmux",
			},
			sync_install = true,
		})
	end,
}
