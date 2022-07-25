require('lualine').setup {
    options = {
      icons_enabled = false,
      theme = 'everblush',
      component_separators = { left = '｜', right = '｜'},
      section_separators = { left = '█', right = '█'},
      disabled_filetypes = {},
      always_divide_middle = true,
      globalstatus = false,
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {
          'branch',
          'diff',
            {
                    'diagnostics',
                    colored = true,
                    update_in_insert = true,
                    always_visible = false
            }
        },
      lualine_c = {'filename'},
      lualine_x = {'os.date("%H:%M")', 'encoding', 'fileformat', 'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location'}
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {},
    extensions = {}
}
