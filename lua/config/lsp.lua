local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- C#
require("roslyn").setup({
  capabilities = capabilities,
})

-- Python
vim.lsp.config("pyright", {
  capabilities = capabilities,
  settings = {
      python = {
          pythonPath = ".venv\\Scripts\\python.exe",
      },
  },
})
vim.lsp.enable("pyright")

vim.lsp.config("ruff", {})
vim.lsp.enable("ruff")

-- Lua
vim.lsp.config("lua_ls", {
    capabilities = capabilities,
    settings = {
        Lua = {
        diagnostics = {
            globals = { "vim" },
        },
        workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
        },
    },
},
})

vim.lsp.enable("lua_ls")
