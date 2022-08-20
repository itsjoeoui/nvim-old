local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('i', 'jk', '<Esc>')

map('n', 'ff', ':Telescope find_files<CR>')
map('n', 'fg', ':Telescope live_grep<CR>')
map('n', 'fb', ':Telescope buffers<CR>')
map('n', 'fh', ':Telescope help_tags<CR>')
map('n', 'fw', "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>")

map('n', 'vs', ':vs<CR>')
map('n', 'sp', ':sp<CR>')

map('n', '<C-L>', '<C-W><C-L>')
map('n', '<C-H>', '<C-W><C-H>')
map('n', '<C-K>', '<C-W><C-K>')
map('n', '<C-J>', '<C-W><C-J>')
map('n', 'tn', ':tabnew<CR>')
map('n', 'th', ':tabnext<CR>')
map('n', 'tl', ':tabprev<CR>')
map('n', 'to', ':tabo<CR>')
map('n', 'tw', ':tabclose<CR>')

map('n', '<C-S>', ':%s/')
