-- Tree-sitter configuration
require'nvim-treesitter.configs'.setup {
  -- If TS highlights are not enabled at all, or disabled via `disable` prop, highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
  },
  ensure_installed = {'lua', 'python', 'c', 'yaml', 'bash', 'css', 'go', 'rust', 'zig'},
}

