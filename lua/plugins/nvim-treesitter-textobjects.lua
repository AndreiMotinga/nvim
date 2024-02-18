return {
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require 'nvim-treesitter.configs'.setup {
        textobjects = {
          select = {
            enable = true,
            keymaps = {
              ["af"] = "@function.outer", -- around function
              ["if"] = "@function.inner", -- inside function
              ["ic"] = "@class.inner",    -- inside class
            },
          },
        },
      }
    end
  }
}
