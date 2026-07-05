vim.pack.add({ "https://github.com/nvim-lualine/lualine.nvim" })

require("lualine").setup({
  options = {
    icons_enabled = true,
    theme = "kanagawa",
    component_separators = "|",
    section_separators = "",
    ignore_focus = { "neo-tree" },
  },
  sections = {
    lualine_c = {
      {
        "filename",
        path = 1,
        shorting_target = 40,
      },
    },
  },
})
