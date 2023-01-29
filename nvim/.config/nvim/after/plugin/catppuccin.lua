require("catppuccin").setup({
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	term_colors = true,
	integrations = {
		cmp = true,
		nvimtree = true,
		telescope = true,
		notify = true,
		mini = true,
		leap = true,
		mason = true,
		harpoon = true,
		treesitter = true,
		treesitter_context = true,
		indent_blankline = {
			enabled = true,
			colored_indent_levels = true,
		},
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = { "italic" },
				hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
			},
			underlines = {
				errors = { "underline" },
				hints = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
			},
		},
		which_key = true,
		markdown = true,
	},
	color_overrides = {
		mocha = {
			base = "#050508",
		},
	},
})

vim.cmd.colorscheme("catppuccin")
