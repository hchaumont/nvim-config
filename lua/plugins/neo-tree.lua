return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set("n", "<leader>ef", ":Neotree filesystem toggle reveal left<CR>", { desc = "Neotree expolore filesystem"})
    vim.keymap.set("n", "<leader>eb", ":Neotree buffers toggle float<CR>", { desc = "Neotree expolore buffers"})
    vim.keymap.set("n", "<leader>eg", ":Neotree git_status toggle reveal float<CR>", { desc = "Neotree expolore git status"})
  end
}
