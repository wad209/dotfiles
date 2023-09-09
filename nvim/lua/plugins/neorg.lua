local M = {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  event = "VimEnter",
  dependencies = { "nvim-lua/plenary.nvim" },
}

function M.config()
  require("neorg").setup({
    load = {
      ["core.defaults"] = {}, -- Loads default behaviour
      ["core.concealer"] = {
        config = {
          icon_preset = "diamond",
        },
      }, -- Adds pretty icons to your documents
      ["core.dirman"] = { -- Manages Neorg workspaces
        config = {
          workspaces = {
            notes = "~/notes",
          },
          default_workspace = "notes",
        },
      },
    },
  })
end

return M
