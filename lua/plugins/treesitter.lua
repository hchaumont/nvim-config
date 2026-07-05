-- The `main` branch is the supported branch for Neovim 0.11+/0.12. The old
-- `master` branch is frozen and crashes on 0.12 injection queries.
-- (The `:TSUpdate` build step is registered in lua/pack.lua.)
vim.pack.add({
  { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },
})

require("nvim-treesitter").install({
  "c",
  "lua",
  "vim",
  "vimdoc",
  "query",
  "elixir",
  "heex",
  "javascript",
  "typescript",
  "html",
  "java",
  "zig",
  "markdown",
  "markdown_inline",
  "toml",
  "svelte",
})

-- Start highlighting and experimental treesitter indent whenever a buffer's
-- filetype has a matching parser. Silently no-ops if the parser isn't available.
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("treesitter-start", { clear = true }),
  callback = function(args)
    local buf = args.buf
    local lang = vim.treesitter.language.get_lang(vim.bo[buf].filetype)
    if lang and pcall(vim.treesitter.start, buf, lang) then
      -- Experimental treesitter-based indentation; remove this line if it
      -- misbehaves for a given language.
      vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
  end,
})
