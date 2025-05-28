return {
	"nvimdev/lspsaga.nvim",
	lazy = false,
	config = function()
		require("lspsaga").setup({
			lightbulb = {
				sign = false,
			},
		})
	end,
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},

	vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>"),
	vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { desc = "code action" }),
	vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { desc = "goto next diagnostic" }),
	vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { desc = "goto previous diagnostic" }),
}
