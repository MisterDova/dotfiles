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
		},
	},
}
