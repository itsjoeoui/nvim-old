local status, null_ls = pcall(require, "null-ls")

if not status then
	vim.notify("null-ls not found")
	return
end

local formatting = null_ls.builtins.formatting

null_ls.setup({
	--on_init = function(new_client, _)
	--	new_client.offset_encoding = "utf-8"
	--end,
	debug = false,
	timeout_ms = 5000,
	sources = {
		formatting.stylua,
		formatting.rustfmt,
		formatting.shfmt,
		formatting.autopep8,
		formatting.google_java_format,
		formatting.gofmt,
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.isort,
		formatting.clang_format.with({
			filetypes = {
				"c",
				"cpp",
				"cs",
				"cuda",
			},
		}),
		formatting.prettier.with({
			filetypes = {
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
				"vue",
				"css",
				"scss",
				"less",
				"html",
				"json",
				"yaml",
				"graphql",
			},
			prefer_local = "node_modules/.bin",
		}),
	},
})
