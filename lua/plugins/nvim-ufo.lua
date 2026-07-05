vim.pack.add({
  "https://github.com/kevinhwang91/promise-async",
  "https://github.com/kevinhwang91/nvim-ufo",
})

vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
-- disable the fold column
vim.o.foldcolumn = "0"
-- vim.o.fillchars = [[fold: ,foldopen:,foldsep: ,foldclose:]]

require("ufo").setup({
  provider_selector = function(bufnr, filetype, buftype)
    return { "treesitter", "indent" }
  end,
})

vim.keymap.set("n", "zR", require("ufo").openAllFolds)
vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
