return {
  'nvim-lualine/lualine.nvim',
  opts = {
    options = {
      icons_enabled = true,
      theme = 'gruvbox',
      component_separators = '|',
      section_separators = '',
      ignore_focus = { 'neo-tree' },
      extensions = { 'lazy' }
    },
  },
}
