vim.pack.add({
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-tree/nvim-web-devicons",
  "https://github.com/MunifTanjim/nui.nvim",
  { src = "https://github.com/nvim-neo-tree/neo-tree.nvim", version = "v3.x" },
})

-- Run :lua require("neo-tree").paste_default_config() to see the full default config
require("neo-tree").setup({
  sources = {
    "filesystem",
    "buffers",
    "git_status",
    "document_symbols",
  },
  close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
  event_handlers = {
    {
      event = "file_opened",
      handler = function(file_path)
        --auto close
        require("neo-tree.command").execute({ action = "close" })
      end,
    },
  },
  filesystem = {
    hijack_netrw_behavior = "open_current",
  },
})

vim.keymap.set("n", "<leader>ef", ":Neotree filesystem toggle reveal left<CR>", { desc = "Neotree explore filesystem" })
vim.keymap.set("n", "<leader>eb", ":Neotree buffers toggle float<CR>", { desc = "Neotree explore buffers" })
vim.keymap.set("n", "<leader>eg", ":Neotree git_status toggle reveal float<CR>", { desc = "Neotree explore git status" })
vim.keymap.set("n", "<leader>es", ":Neotree document_symbols toggle reveal left<CR>", { desc = "Neotree explore symbols" })
