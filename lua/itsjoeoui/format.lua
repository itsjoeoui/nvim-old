vim.cmd([[

augroup fmt
autocmd!
autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll
augroup END

]])
