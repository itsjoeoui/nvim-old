vim.g.itsjoeoui_colorscheme = "tokyonight"

function CureMyEyes()
    --    vim.g.tokyonight_transparent_sidebar = true
    vim.g.tokyonight_transparent = true
    vim.g.tokyonight_dark_sidebar = true

    vim.cmd("colorscheme " .. vim.g.itsjoeoui_colorscheme)
end

CureMyEyes()

require('lualine').setup()
