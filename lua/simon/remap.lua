-- open netwr
vim.keymap.set("n", "<leader>pv", "<cmd>Ex<cr>")
vim.keymap.set("n", "<leader><leader>x", "<cmd>so %<cr>")

-- Emacs Style file navigation
local dir = vim.api.nvim_buf_get_name(0)
-- gets the /foo.bar part of the path
local fname = dir:match("/[%a%d]*%.[%a%d]*$")
if fname then
    dir = dir:gsub(fname, "")
end
vim.keymap.set("n", "<C-x><C-f>", string.format(":e %s", dir))

-- Emacs Style buffer navigation
vim.keymap.set("n", "<C-x>b", ":b")

vim.keymap.set("n", "<C-x>g", "<cmd>Neogit<cr>")

vim.keymap.set("n", "<leader>ps", function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ") })
end)

vim.keymap.set("n", "<leader>ff", function()
    require('telescope.builtin').find_files()
end)

vim.keymap.set("n", "<leader>d", function()
    require('telescope.builtin').diagnostics()
end)

vim.keymap.set("n", "<leader>fb", function()
    require('telescope.builtin').buffers()
end)

vim.keymap.set("n", "<leader>gh", function()
    require('telescope.builtin').help_tags()
end)

vim.keymap.set("n", "<C-p>", function()
    require('telescope.builtin').git_files()
end)

vim.keymap.set("n", "<leader>fg", function()
    require('telescope.builtin').live_grep()
end)

vim.keymap.set("v", "<leader>ds", function()
    require('dap-python').debug_selection()
end)


vim.keymap.set("n", "<leader>dd", function()
    require('dap').continue()
end)

vim.keymap.set("n", "<leader>bp", function()
    require('dap').toggle_breakpoint()
end)

vim.keymap.set("n", "<leader>s", function()
    require('dap').step_into()
end)
