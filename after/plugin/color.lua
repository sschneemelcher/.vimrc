local everblush = require('everblush')
everblush.setup();
local everblush_core = require('everblush.core')
local colors = everblush_core.get_colors()
vim.cmd("highlight Normal guibg=none")
vim.cmd(string.format("highlight LineNR guibg=none guifg=%s", colors['cursorline']))
vim.cmd(string.format("highlight CursorLineNr guifg=%s", colors['comment']));
vim.cmd("highlight SignColumn guibg=bg")
