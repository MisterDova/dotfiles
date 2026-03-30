return {
	{
		"folke/snacks.nvim",
		---@type snacks.Config
		opts = {
			image = {
				doc = {
					max_width = 40,
					max_height = 20,
				},
			},
			notifier = {},
			scope = {},
			scroll = {},
		},
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			presets = {
				bottom_search = false,
				command_palette = true,
			},
			lsp = {
				signature = {
					enabled = false,
				},
				hover = {
					enabled = true,
				},
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true, -- for completion docs
				},
			},
		},
	},
}
