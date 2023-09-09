local status_ok, color_scheme = pcall(require, "onedark")
if not status_ok then
  return
end

-- Note: The instruction to load the color scheme may vary.
-- See the README of the selected color scheme for the instruction
-- to use.
-- e.g.: require('color_scheme').setup{}, vim.cmd('color_scheme') ...
require("onedark").setup({
  -- styles: dark, darker, cool, deep, warm, warmer, light
  style = "warm",
})
require("onedark").load()
