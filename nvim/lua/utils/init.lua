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
  "ltex",
}

M.linters = {
  "clang-format",
  "flake8",
  "prettier",
  "stylua",
  "black",
  "isort",
  "codespell",
  "vale",
}

M.daps = {
  "python",
  "codelldb",
  "js",
}

return M
