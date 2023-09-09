local M = {}

M.servers = {
  "lua_ls",
  "cssls",
  "html",
  "tsserver",
  "pyright",
  "bashls",
  "jsonls",
  "yamlls",
  "clangd",
}

M.linters = {
  "flake8",
  "prettier",
  "stylua",
  "black",
}

M.daps = {
  "python",
  "cppdbg",
  "js",
}

return M
