local i_keymap = function(lhs, rhs)
    vim.api.nvim_set_keymap('i', lhs, rhs, {noremap = true, silent = true})
end

i_keymap('jk','<Esc>')

