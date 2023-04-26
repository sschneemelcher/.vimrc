require('lualine').setup {
    options = {
        icons_enabled = false,
        theme = 'catppuccin',
        disabled_filetypes = {},
        always_divide_middle = false,
        globalstatus = false,
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {
            'branch',
            {
                'diagnostics',
                colored = true,
                update_in_insert = true,
                always_visible = false
            }
        },
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = {}
}
