local telescope = require("telescope")

telescope.setup{
    defaults = {
        file_ignore_patterns = {"node_modules"}
    }
}

telescope.load_extension("git_worktree")

