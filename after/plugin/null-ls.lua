local status, null_ls = pcall(require, "null-ls")

if not status then
	vim.notify("null-ls not found")
	return
end

local formatting = null_ls.builtins.formatting
local hover = null_ls.builtins.hover
null_ls.setup({
	debug = false,
	timeout_ms = 5000,
	sources = {
		formatting.shfmt,
		formatting.stylua,
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
		hover.dictionary,
	},
})
