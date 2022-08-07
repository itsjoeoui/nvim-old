function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('i','jk', '<Esc>')

map('n', 'ff', ':Telescope find_files<CR>')
map('n', 'fg', ':Telescope live_grep<CR>')
map('n', 'fb', ':Telescope buffers<CR>')
map('n', 'fh', ':Telescope help_tags<CR>')
