return {
	"mikavilpas/yazi.nvim",
	event = "VeryLazy",
	dependencies = {
		"folke/snacks.nvim",
	},
	keys = {
		{
			"<leader>-",
			mode = { "n", "v" },
			"<cmd>Yazi<cr>",
			desc = "Open yazi at the current file",
		},
	},
}
