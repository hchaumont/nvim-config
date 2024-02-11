-- Run :lua require("neo-tree").paste_default_config() to see the full default config
local config = {
  close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
  event_handlers = {
    {
      event = "file_opened",
      handler = function(file_path)
        --auto close
        require("neo-tree.command").execute({ action = "close" })
      end
    },
  },
  filesystem = {
    hijack_netrw_behavior = "open_current",
  },
}

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = config,
  config = function(_, opts)
    require("neo-tree").setup(opts)
    vim.keymap.set("n", "<leader>ef", ":Neotree filesystem toggle reveal left<CR>", { desc = "Neotree expolore filesystem"})
    vim.keymap.set("n", "<leader>eb", ":Neotree buffers toggle float<CR>", { desc = "Neotree expolore buffers"})
    vim.keymap.set("n", "<leader>eg", ":Neotree git_status toggle reveal float<CR>", { desc = "Neotree expolore git status"})
  end
}
