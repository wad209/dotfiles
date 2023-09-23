local M = {
  "wadeduvall/onedark-chad.nvim",
  -- "catppuccin/nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
}

function M.config()
  require("onedark").setup({
    style = "warmer",
  })

  require("onedark").load()
end

-- function M.config()
--   require("catppuccin").setup({
--     flavour = "macchiato", -- latte, frappe, macchiato, mocha
--     integrations = {
--       cmp = true,
--       gitsigns = true,
--       dap = {
--         enabled = true,
--         enable_ui = true,
--       },
--       mason = true,
--       native_lsp = {
--         enabled = true,
--         virtual_text = {
--           errors = { "italic" },
--           hints = { "italic" },
--           warnings = { "italic" },
--           information = { "italic" },
--         },
--         underlines = {
--           errors = { "underline" },
--           hints = { "underline" },
--           warnings = { "underline" },
--           information = { "underline" },
--         },
--         inlay_hints = {
--           background = true,
--         },
--       },
--       nvimtree = true,
--       treesitter = true,
--       telescope = {
--         enabled = true,
--         style = "nvchad",
--       },
--     },
--   })
--   vim.cmd.colorscheme("catppuccin-mocha")
-- end

return M
