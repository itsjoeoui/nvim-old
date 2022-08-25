local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('i', 'jk', '<Esc>')

map('n', 'ff', ':Telescope find_files no_ignore=true<CR>')
map('n', 'fg', ':Telescope live_grep<CR>')
map('n', 'fb', ':Telescope buffers<CR>')
map('n', 'fh', ':Telescope help_tags<CR>')
map('n', 'fw', "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>")
map('n', 'fc', "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>")

map('n', 'vs', ':vs<CR>')
map('n', 'sp', ':sp<CR>')

map('n', '<C-L>', '<C-W><C-L>')
map('n', '<C-H>', '<C-W><C-H>')
map('n', '<C-K>', '<C-W><C-K>')
map('n', '<C-J>', '<C-W><C-J>')

map('i', '<C-L>', '<Right>')
map('i', '<C-H>', '<Left>')
map('i', '<C-K>', '<Up>')
map('i', '<C-J>', '<Down>')

map('n', '<C-S>', ':%s/')

map('n', '<space>n', ':tabnew<CR>')
map('n', '<space>l', ':tabnext<CR>')
map('n', '<space>h', ':tabprev<CR>')
map('n', '<space>o', ':tabo<CR>')
map('n', '<space>w', ':tabclose<CR>')

map('n', '<space>1', '1gt<CR>')
map('n', '<space>2', '2gt<CR>')
map('n', '<space>3', '3gt<CR>')
map('n', '<space>4', '4gt<CR>')
map('n', '<space>5', '5gt<CR>')
map('n', '<space>6', '6gt<CR>')
map('n', '<space>7', '7gt<CR>')
map('n', '<space>8', '8gt<CR>')
map('n', '<space>9', '9gt<CR>')
