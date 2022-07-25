-- open netwr
vim.keymap.set("n", "<leader>pv", "<cmd>Ex<cr>")

vim.keymap.set("n", "<C-x>g", "<cmd>Neogit<cr>")

vim.keymap.set("n", "<leader>ps", function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ") })
end)

vim.keymap.set("n", "<leader>ps", function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ") })
end)

vim.keymap.set("n", "<leader>ff", function()
    require('telescope.builtin').find_files()
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
