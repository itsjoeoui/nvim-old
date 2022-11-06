local null_ls = require("null-ls")

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

-- will setup any installed and configured sources above
null_ls.setup()

--local status, null_ls = pcall(require, "null-ls")
--
--if not status then
--	vim.notify("null-ls not found")
--	return
--end
--
--local formatting = null_ls.builtins.formatting
--
--null_ls.setup({
--	debug = false,
--	timeout_ms = 5000,
--	sources = {
--		formatting.stylua,
--		formatting.rustfmt,
--		formatting.shfmt,
--		formatting.autopep8,
--		formatting.google_java_format,
--		formatting.gofmt,
--		formatting.black.with({ extra_args = { "--fast" } }),
--		formatting.isort,
--		formatting.clang_format.with({
--			filetypes = {
--				"c",
--				"cpp",
--				"cs",
--				"cuda",
--			},
--		}),
--		formatting.prettier.with({
--			filetypes = {
--				"javascript",
--				"javascriptreact",
--				"typescript",
--				"typescriptreact",
--				"vue",
--				"css",
--				"scss",
--				"less",
--				"html",
--				"json",
--				"yaml",
--				"graphql",
--			},
--			prefer_local = "node_modules/.bin",
--		}),
--	},
--})
