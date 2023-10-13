local M = {
  "lukas-reineke/indent-blankline.nvim",
  event = "BufReadPre",
  main = "ibl",
  opts = {},
}

function M.config()
  require("ibl").setup({
    exclude = {
      filetypes = {
        "lspinfo",
        "packer",
        "checkhealth",
        "help",
        "man",
        "gitcommit",
        "TelescopePrompt",
        "TelescopeResults",
        "markdown",
        "text",
        "NvimTree",
      },
    },
  })
end
-- M.opts = {
--   char = "▏",
--   use_treesitter = true,
--   show_first_indent_level = true,
-- }

return M
