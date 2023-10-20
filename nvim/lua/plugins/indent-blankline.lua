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
    scope = {
      show_start = false,
      show_end = false,
    },
  })
end

return M
