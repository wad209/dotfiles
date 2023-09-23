local M = {
  "nvim-lualine/lualine.nvim",
  event = { "VimEnter", "InsertEnter", "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
}

function M.config()
  local lualine = require("lualine")

  -- local hide_in_width = function()
  --   return vim.fn.winwidth(0) > 80
  -- end
  --
  -- local diagnostics = {
  --   "diagnostics",
  --   sources = { "nvim_diagnostic" },
  --   sections = { "error", "warn" },
  --   symbols = { error = " ", warn = " " },
  --   colored = false,
  --   always_visible = true,
  -- }
  --
  -- local diff = {
  --   "diff",
  --   colored = false,
  --   symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
  --   cond = hide_in_width,
  -- }
  --
  -- local filetype = {
  --   "filetype",
  --   icons_enabled = false,
  -- }
  --
  -- local location = {
  --   "location",
  --   padding = 0,
  -- }
  --
  -- local spaces = function()
  --   return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
  -- end
  lualine.setup({
    options = {
      theme = "onedark",
      globalstatus = true,
      icons_enabled = true,
      component_separators = "|",
      section_separators = { left = "", right = "" },
      -- component_separators = { left = "", right = "" },
      -- section_separators = { left = "", right = "" },
      -- disabled_filetypes = { "alpha", "dashboard" },
      -- always_divide_middle = true,
    },
    sections = {
      lualine_a = {
        { "mode" },
      },
      lualine_b = { "filename", "branch" },
      lualine_c = { "fileformat" },
      lualine_x = {},
      lualine_y = { "filetype", "progress" },
      lualine_z = {
        { "location" },
      },
    },
    inactive_sections = {
      lualine_a = { "filename" },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = { "location" },
    },
    tabline = {},
    extensions = {},
    -- sections = {
    --   lualine_a = { "mode" },
    --   lualine_b = { "branch" },
    --   lualine_c = { diagnostics },
    --   lualine_x = { diff, spaces, "encoding", filetype },
    --   lualine_y = { location },
    --   lualine_z = { "progress" },
    -- },
  })
end

return M
