return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
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

    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("treesitter-start", { clear = true }),
      callback = function(args)
        local buf = args.buf
        local lang = vim.treesitter.language.get_lang(vim.bo[buf].filetype)
        if lang and pcall(vim.treesitter.start, buf, lang) then
          vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end,
}
