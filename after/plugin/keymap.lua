local function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " "

map("i", "jk", "<Esc>")

map("n", "ff", ":Telescope find_files<CR>")
map("n", "fg", ":Telescope live_grep<CR>")
map("n", "fb", ":Telescope buffers<CR>")
map("n", "fh", ":Telescope help_tags<CR>")
map("n", "fw", "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>")
map("n", "fc", "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>")

-- map('n', 'vs', ':vs<CR>')
-- map('n', 'sp', ':sp<CR>')

-- map('n', '<C-L>', '<C-W><C-L>')
-- map('n', '<C-H>', '<C-W><C-H>')
-- map('n', '<C-K>', '<C-W><C-K>')
-- map('n', '<C-J>', '<C-W><C-J>')

map("i", "<C-L>", "<Right>")
map("i", "<C-H>", "<Left>")
map("i", "<C-K>", "<Up>")
map("i", "<C-J>", "<Down>")

map("n", "<C-S>", ":%s/")

map("n", "<leader>n", ":tabnew<CR>")
map("n", "<leader>l", ":tabnext<CR>")
map("n", "<leader>h", ":tabprev<CR>")
map("n", "<leader>o", ":tabo<CR>")
map("n", "<leader>w", ":tabclose<CR>")

map("n", "<leader>1", "1gt<CR>")
map("n", "<leader>2", "2gt<CR>")
map("n", "<leader>3", "3gt<CR>")
map("n", "<leader>4", "4gt<CR>")
map("n", "<leader>5", "5gt<CR>")
map("n", "<leader>6", "6gt<CR>")
map("n", "<leader>7", "7gt<CR>")
map("n", "<leader>8", "8gt<CR>")
map("n", "<leader>9", "9gt<CR>")

map("n", "<leader>t", ":NvimTreeToggle<CR>")
map("n", "<leader><CR>", ":so ~/.config/nvim/init.lua<CR>")

map("n", "<leader>p", '"_dP')
map("n", "<leader>y", '"+y')
map("v", "<leader>y", '"+y')
map("n", "<leader>Y", 'gg"+yG')

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "<leader>m", "<cmd>lua require('harpoon.mark').add_file()<CR>")
map("n", "<leader>,", "<cmd>lua require('harpoon.ui').nav_prev()<CR>")
map("n", "<leader>.", "<cmd>lua require('harpoon.ui').nav_next()<CR>")
map("n", "<leader>;", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>")
