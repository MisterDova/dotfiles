return {
	{
		"mason-org/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			auto_install = true,
			automatic_enable = true,
			-- ensure_installed = { "lua_ls", "marksman", "pylsp" },
			ensure_installed = { "lua_ls", "marksman", "basedpyright" },
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		dependencies = {
			{
				"folke/lazydev.nvim",
				ft = "lua",
				opts = {
					library = {
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
		},
	},
	{
		"jinzhongjia/LspUI.nvim",
		branch = "main",
		config = function()
			require("LspUI").setup({
				-- vim.keymap.set("n", "K", "<cmd>LspUI hover<CR>"),
				vim.keymap.set("n", "<leader>ca", "<cmd>LspUI code_action<CR>"),
				vim.keymap.set("n", "]e", "<cmd>LspUI diagnostic next<CR>"),
				vim.keymap.set("n", "[e", "<cmd>LspUI diagnostic prev<CR>"),
			})
		end,
	},
}
