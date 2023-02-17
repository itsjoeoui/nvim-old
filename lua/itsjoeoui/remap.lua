vim.g.mapleader = " "

-- telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")

-- formatting
vim.keymap.set("n", "<leader>fm", ":LspZeroFormat<CR>")

-- split view
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>sv", ":vs<CR>")
vim.keymap.set("n", "<leader>sh", ":sp<CR>")

-- tabs
--vim.keymap.set("n", "<leader>l", ":tabnext<CR>")
--vim.keymap.set("n", "<leader>h", ":tabprev<CR>")
--vim.keymap.set("n", "<leader>1", "1gt<cr>")
--vim.keymap.set("n", "<leader>2", "2gt<cr>")
--vim.keymap.set("n", "<leader>3", "3gt<cr>")
--vim.keymap.set("n", "<leader>4", "4gt<cr>")
--vim.keymap.set("n", "<leader>5", "5gt<cr>")
--vim.keymap.set("n", "<leader>6", "6gt<cr>")
--vim.keymap.set("n", "<leader>7", "7gt<cr>")
--vim.keymap.set("n", "<leader>8", "8gt<cr>")
--vim.keymap.set("n", "<leader>9", "9gt<cr>")

-- nvimtree
vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")

-- neogit
vim.keymap.set("n", "<leader>g", ":Neogit<CR>")

-- moving code
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")

-- jumping up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- find and replace
vim.keymap.set("n", "<C-S>", ":%s/")

-- good stuff
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "Q", "<nop>")
