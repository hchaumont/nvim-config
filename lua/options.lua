-- [[ Setting options ]]
-- See `:help vim.o`

-- Set highlight on search
vim.o.hlsearch = true

-- Make line numbers default
vim.wo.number = true
-- vim.o.relativenumber = true

-- Statusline already has mode
vim.o.showmode = false

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Disable wrapping
vim.o.wrap = false

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 500

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- Set number of lines to keep above, below, left, and right of the cursor
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- Set smart indenting of new lines
vim.o.smartindent = true

-- Enable highlighting of the current line
vim.o.cursorline = true

-- Set vertical splits to go to right of current window
vim.o.splitright = true

-- Set horizontal splits to go below current window
vim.o.splitbelow = true

-- Set the color column
vim.o.colorcolumn = "80,100"
