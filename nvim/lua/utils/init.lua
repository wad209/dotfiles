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
  "clang-format",
  "flake8",
  "prettier",
  "stylua",
  "black",
  "isort",
}

M.daps = {
  "python",
  "codelldb",
  "js",
}

return M
