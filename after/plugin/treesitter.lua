require('nvim-treesitter.configs').setup{
    ensure_installed = {"python", "go", "bash", "lua", "dockerfile", "javascript", "typescript"},
    sync_install = false,
    highlight = {
        -- `false` will disable the whole extension
        enable = true,
    },
}
