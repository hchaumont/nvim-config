return  {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      -- NOTE: If you are having trouble with this installation,
      --       refer to the README for telescope-fzf-native for more instructions.
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
  },
  config = function()
    -- Enable telescope fzf native, if installed
    pcall(require('telescope').load_extension, 'fzf')
    -- Set bindings for some telescope pickers
    -- See https://github.com/nvim-telescope/telescope.nvim?tab=readme-ov-file#pickers
    local builtin = require('telescope.builtin')
    -- Find 
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find file'})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope find buffer'})
    vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = 'Telescope find keymaps'})
    -- Search
    vim.keymap.set('n', '<leader>/', builtin.live_grep, { desc = 'Telescope search grep'})
    vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Telescope search grep'})
    vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'Telescope search help'})
  end
}
