return {
  {
    "vhyrro/luarocks.nvim",
    event = "VeryLazy",
    branch = "more-fixes",
    config = function()
      require("luarocks").setup({})
    end,
  },
  {
    "nvim-neorg/neorg",
    event = "VeryLazy",
    branch = "luarocks",
    dependencies = { "luarocks.nvim" },
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {},
          ["core.concealer"] = {
            config = {
              icon_preset = "diamond",
            },
          }, -- Adds pretty icons to your documents
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/notes",
              },
              default_workspace = "notes",
            },
          },
        },
      })
    end,
  },
}
