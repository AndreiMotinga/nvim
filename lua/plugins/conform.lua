return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  -- event = {},
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        json = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        scss = { "prettier" },
        markdown = { "prettier" },
        yaml = { "prettier" },
        sh = { "beautysh" },
        zsh = { "beautysh" },
        lua = { "stylua" },
        ruby = { "rubocop" },
        eruby = { "htmlbeautifier" },
      },
      format_after_save = {
        lsp_fallback = true,
        async = true,
      },
    })

    -- formatting
    vim.keymap.set({ "n", "v" }, "===", function()
      conform.format({
        lsp_fallback = true,
        async = true,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
