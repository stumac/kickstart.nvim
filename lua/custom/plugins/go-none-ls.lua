local augroup = vim.api.nvim_create_augroup('LspFormatting', {})
local plugin = {
  'nvimtools/none-ls.nvim',
  ft = { 'go' },
  opts = function()
    local null_ls = require 'null-ls'
    return {
      sources = {
        --        null_ls.builtins.diagnostics.ruff,
        null_ls.builtins.diagnostics.golangci_lint,
        null_ls.builtins.formatting.goimports,
      },
      -- on_attach = function(client, bufnr)
      --   if client.supports_method 'textDocument/formatting' then
      --     vim.api.nvim_clear_autocmds {
      --       group = augroup,
      --       buffer = bufnr,
      --     }
      --     vim.api.nvim_create_autocmd('BufWritePre', {
      --       group = augroup,
      --       buffer = bufnr,
      --       callback = function()
      --         vim.lsp.buf.format { bufnr = bufnr }
      --       end,
      --     })
      --   end
      -- end,
    }
  end,
}

return plugin
