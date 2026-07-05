-- Adds git related signs to the gutter, as well as utilities for managing changes
vim.pack.add({ "https://github.com/lewis6991/gitsigns.nvim" })

require("gitsigns").setup({
  -- See `:help gitsigns.txt`
  signs = {
    add = { text = "+" },
    change = { text = "~" },
    delete = { text = "_" },
    topdelete = { text = "‾" },
    changedelete = { text = "~" },
  },
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Actions
    -- normal mode
    map("n", "<leader>hb", function()
      gs.blame_line({ full = false })
    end, { desc = "git blame line" })
    map("n", "<leader>hp", gs.preview_hunk_inline, { desc = "git preview hunk inline" })
    map("n", "<leader>hd", gs.diffthis, { desc = "git diff against index" })
    map("n", "<leader>hD", function()
      gs.diffthis("~")
    end, { desc = "git diff against last commit" })

    -- Toggles
    map("n", "<leader>tb", gs.toggle_current_line_blame, { desc = "toggle git blame line" })
    map("n", "<leader>td", gs.toggle_deleted, { desc = "toggle git show deleted" })
  end,
})
