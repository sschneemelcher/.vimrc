local M = {}

local function zig_build()
    vim.api.nvim_command("vnew")
    local bufnr = vim.api.nvim_get_current_buf()
    vim.fn.jobstart({"zig", "build"}, {
        stdout_buffered = true,
        on_stdout = function(_, data)
            if data then
                vim.api.nvim_buf_set_lines(bufnr, -1, -1, false, data)
            end
        end,
        on_err = function(_, data)
            if data then
                vim.api.nvim_buf_set_lines(bufnr, -1, -1, false, data)
            end
        end
    })
end

M.zig_build = zig_build
return M
