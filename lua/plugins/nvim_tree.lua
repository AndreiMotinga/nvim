return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      prefer_startup_root = true,
      filters = {
        git_ignored = false,
      },
    })
  end,
}
