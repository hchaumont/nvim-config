-- Requires treesitter (markdown parser) and mini.nvim (icons), both loaded first.
vim.pack.add({ "https://github.com/MeanderingProgrammer/render-markdown.nvim" })

require("render-markdown").setup({})

vim.keymap.set("n", "<leader>tm", function()
  require("render-markdown").toggle()
end, { desc = "Toggle Markdown" })
