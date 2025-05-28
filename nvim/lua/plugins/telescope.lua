local builtin = require("telescope.builtin")
return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-fzf-native.nvim",
		},
		config = function()
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope: List of files" })
			vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, { desc = "Telescope: List of old files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope: Live grep of items" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope: List of current buffers" })
		end,
	},
}
