local everblush = require('everblush')
everblush.setup()

local everblush_core = require('everblush.core')
local colors = everblush_core.get_colors()

vim.cmd("highlight Normal guibg=none")
vim.cmd("highlight LineNR guibg=none guifg="..colors['comment'])
vim.cmd("highlight CursorLineNr guifg="..colors['color7']);
vim.cmd("highlight SignColumn guibg=bg")

