return {
	{
		"saghen/blink.cmp",
		dependencies = { "rafamadriz/friendly-snippets", "echasnovski/mini.nvim" },

		version = "1.*",
		---@module 'blink.cmp'
		---@type blink.cmp.Config

		opts = {
			-- cmdline = { enabled = false },

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
						-- treesitter = { "lsp" },
						components = {
							kind_icon = {
								text = function(ctx)
									local kind_icon, _, _ = require("mini.icons").get("lsp", ctx.kind)
									return kind_icon
								end,
								highlight = function(ctx)
									local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
									return hl
								end,
							},
							kind = {
								highlight = function(ctx)
									local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
									return hl
								end,
							},
						},
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
