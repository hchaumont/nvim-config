return {
  -- Autocompletion
  "saghen/blink.cmp",
  -- Use a release tag so a prebuilt fuzzy-matcher binary is downloaded
  -- automatically and falls back to the Lua matcher if no prebuilt exists
  version = "1.*",
  dependencies = {
    -- A number of user-friendly snippets
    "rafamadriz/friendly-snippets",
  },
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      -- 'default' (recommended) for mappings similar to built-in completions
      --   <c-y> to accept ([y]es) the completion.
      --    This will auto-import if your LSP supports it, and expand any snippets.
      --   <c-n>/<c-p> to select next/prev item
      --   <c-space> to toggle the documentation window
      --   <c-e> to hide the completion window
      --   <tab>/<s-tab> to jump forward/backward through snippet placeholders
      preset = "default",
      -- Also jump through snippet placeholders with <c-l>/<c-h>
      ["<C-l>"] = { "snippet_forward", "fallback" },
      ["<C-h>"] = { "snippet_backward", "fallback" },
    },
    appearance = {
      -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = "mono",
    },
    completion = {
      -- By default, you may press `<c-space>` to show the documentation.
      -- Optionally, set `auto_show = true` to show the documentation after a delay.
      documentation = { auto_show = false, auto_show_delay_ms = 500 },
    },
    sources = {
      default = { "lsp", "path", "snippets" },
    },
    -- Displays a preview of the selected item on the current line.
    signature = { enabled = true },
  },
}
