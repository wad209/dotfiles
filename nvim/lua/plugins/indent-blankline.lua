local M = {
  "lukas-reineke/indent-blankline.nvim",
  event = "BufReadPre",
}

M.opts = {
  char = "▏",
  use_treesitter = true,
  show_first_indent_level = true,
  -- What does this do?
  --show_trailing_blankline_indent = false,
  show_current_context = true,
  filetype_exclude = {
    "lspinfo",
    "packer",
    "checkhealth",
    "help",
    "man",
    "dashboard",
    "git",
    "markdown",
    "text",
    "terminal",
    "NvimTree",
  },
  buftype_exclude = {
    "terminal",
    "nofile",
    "quickfix",
    "prompt",
  },
}

return M
