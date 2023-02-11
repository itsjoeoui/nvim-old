local lsp = require('lsp-zero')

lsp.set_preferences({
    suggest_lsp_servers = false,
    setup_servers_on_start = true,
    set_lsp_keymaps = false,
    configure_diagnostics = true,
    cmp_capabilities = true,
    manage_nvim_cmp = true,
    call_servers = 'local',
    sign_icons = {
        error = '✘',
        warn = '▲',
        hint = '⚑',
        info = ''
    }
})

lsp.ensure_installed({
    'arduino_language_server',
    'astro',
    'bashls',
    'clangd',
    'cmake',
    'denols',
    'dockerls',
    'eslint',
    'gopls',
    'gradle_ls',
    'graphql',
    'html',
    'jsonls',
    'jdtls',
    'sumneko_lua',
    'tsserver',
    'prismals',
    'pyright',
    'rust_analyzer',
    'tailwindcss',
    'vimls',
    'yamlls',
})

lsp.nvim_workspace()

lsp.setup()
