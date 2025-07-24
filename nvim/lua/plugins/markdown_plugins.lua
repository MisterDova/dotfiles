return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {
			completions = {
				blink = { enabled = true },
				lsp = { enabled = true },
			},
			heading = { position = "inline" },
			code = { sign = false },
			render_modes = true,
		},
	},
	{
		-- plugin to open markdown links
		-- press enter to open, press backspace to go back
		"jghauser/follow-md-links.nvim",
		vim.keymap.set("n", "<bs>", ":edit #<cr>", { silent = true }),
	},
}
