require("nvim-tree").setup({
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "f", action = "" },
			},
		},
	},
	renderer = {
		group_empty = true,
	},
})
