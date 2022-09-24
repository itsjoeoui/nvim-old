local mason_lspconfig = require("mason-lspconfig")

local mason = require("mason")

mason.setup()

mason_lspconfig.setup({
	ensure_installed = {
		"stylua",
		"pyright",
		"clangd",
		"gopls",
		"graphql",
		"tsserver",
		"cssls",
		"eslint",
		"jsonls",
		"rust_analyzer",
		"dockerls",
		"yamlls",
	},
	automatic_installation = true,
})

mason_lspconfig.setup_handlers({
	function(server_name)
		require("lspconfig")[server_name].setup({})
	end,
})
