local mason = require("mason")

mason.setup()

local mason_lspconfig = require("mason-lspconfig")

local on_attach = function(client)
	client.server_capabilities.documentFormattingProvider = false
end

mason_lspconfig.setup({
	ensure_installed = {
		"sumneko_lua",
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
		"jdtls",
		"bashls",
	},
	automatic_installation = true,
})

mason_lspconfig.setup_handlers({
	function(server_name)
		require("lspconfig")[server_name].setup({
			on_attach = on_attach,
		})
	end,
})

local mason_null_ls = require("mason-null-ls")

mason_null_ls.setup({
	automatic_setup = true,
})

require("mason-null-ls").setup({
	ensure_installed = {
		"stylua",
		"jq",
		"clang_format",
		"staticcheck",
		"shellcheck",
		"shfmt",
		"gofumpt",
		"golines",
		"goimports",
		"black",
	},
})

require("mason-null-ls").setup_handlers({
	function(source_name, methods)
		-- all sources with no handler get passed here
		-- Keep original functionality of `automatic_setup = true`
		require("mason-null-ls.automatic_setup")(source_name, methods)
	end,
})

local null_ls = require("null-ls")

-- will setup any installed and configured sources above
null_ls.setup()
