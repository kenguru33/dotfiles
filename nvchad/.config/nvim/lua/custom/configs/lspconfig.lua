local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.tailwindcss.setup({
  on_attach = on_attach,
  capabilities = capabilities
})

lspconfig.eslint.setup({
  on_attach = on_attach,
  capabilities = capabilities
})

lspconfig.cssls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
  css = { validate = true,
        lint = {
            unknownAtRules = "ignore"
        }
  },
  scss = { validate = true,
        lint = {
            unknownAtRules = "ignore"
        }
  },
  less = { validate = true,
        lint = {
            unknownAtRules = "ignore"
        }
  },
 },
})

vim.diagnostic.config({
  virtual_text = false
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 500
vim.diagnostic.config { float = { border = "rounded" },
}vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
