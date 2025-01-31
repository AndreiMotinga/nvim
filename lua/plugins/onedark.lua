return {
  "navarasu/onedark.nvim",
  config = function()
    require("onedark").setup({
      style = "cool",
      highlights = {
        ["@comment"] = { fg = "#969ea6" },
      },
    })
    require("onedark").load() -- Load AFTER setup
  end,
}
