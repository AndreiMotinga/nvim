local servers =
  { "emmet_ls", "lua_ls", "solargraph", "ruby_lsp", "rubocop", "ts_ls", "tailwindcss", "stimulus_ls", "cssls" }

return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({})
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = servers,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      for _, server in ipairs(servers) do
        if server == "ruby_lsp" then
          -- Custom setup for ruby_lsp
          lspconfig[server].setup({
            cmd_env = { BUNDLE_GEMFILE = vim.fn.getenv("GLOBAL_GEMFILE") },
            capabilities = capabilities,
          })
        else
          -- Standard setup for other LSP servers
          lspconfig[server].setup({
            capabilities = capabilities,
          })
        end
      end
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
      local mason_tool_installer = require("mason-tool-installer")

      mason_tool_installer.setup({
        ensure_installed = {
          "prettier", -- prettier formatter
          "stylua", -- lua formatter
          "eslint_d", -- js linter
          "beautysh", -- shell
          "rubocop", -- ruby formatter
          "htmlbeautifier", -- html & erb
        },
      })
    end,
  },
}
