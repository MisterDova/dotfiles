return {
	{
		"saghen/blink.cmp",
		dependencies = { "rafamadriz/friendly-snippets" },

		version = "1.*",
		---@module 'blink.cmp'
		---@type blink.cmp.Config

		opts = {
			keymap = {
				preset = "default",
				["<CR>"] = { "accept", "fallback" },
				["<C-p>"] = { "select_prev", "fallback" },
				["<C-n>"] = { "select_next", "fallback" },
				["<C-e>"] = { "show", "hide" },
				["<C-b>"] = { "scroll_documentation_up", "fallback" },
				["<C-f>"] = { "scroll_documentation_down", "fallback" },
				["<Tab>"] = { "fallback" },
				["<C-s>"] = { "show_signature", "hide_signature" },
			},

			appearance = {
				nerd_font_variant = "mono",
			},

			completion = {
				documentation = {
					auto_show = true,
				},
				menu = {
					draw = {
						columns = { { "kind_icon", "label", gap = 1 }, { "kind", gap = 1 } },
					},
				},
			},

			signature = {
				enabled = true,
			},

			sources = {
				default = { "lazydev", "lsp", "path", "snippets", "buffer" },
				providers = {
					lazydev = {
						name = "LazyDev",
						module = "lazydev.integrations.blink",
						score_offset = 100,
					},
				},
			},
			fuzzy = { implementation = "prefer_rust_with_warning" },
		},

		opts_extend = { "sources.default" },
	},
}
