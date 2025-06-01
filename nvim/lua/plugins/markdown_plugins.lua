return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" },
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {
		completions = {
			blink = { enabled = true },
			lsp = { enabled = true },
		},
		render_modes = true,
		heading = { position = "inline" },
		code = { sign = false },
	},
	{
		-- plugin to open markdown links
		"jghauser/follow-md-links.nvim",
		vim.keymap.set("n", "<bs>", ":edit #<cr>", { silent = true }),
	},
}
