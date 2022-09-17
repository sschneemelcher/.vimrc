local battery = require"battery"
battery.setup({
	update_rate_seconds = 60, -- Number of seconds between checking battery status
	show_status_when_no_battery = true, -- Don't show any icon or text when no battery found (desktop for example)
	show_plugged_icon = false, -- If true show a cable icon alongside the battery icon when plugged in
	show_unplugged_icon = false, -- When true show a diconnected cable icon when not plugged in
	show_percent = true, -- Whether or not to show the percent charge remaining in digits
    vertical_icons = true, -- When true icons are vertical, otherwise shows horizontal battery icon
})
local everblush_core = require('everblush.core')
local colors = everblush_core.get_colors()
local nvimbattery = {
  function()
    return require("battery").get_status_line():match("%d%d").." bat"
  end,
  color = { fg = colors.violet, bg = colors.bg },
}

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
      lualine_x = {'encoding', 'fileformat', 'filetype', 'os.date("%H:%M")', nvimbattery},
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
