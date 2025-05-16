return {
  "navarasu/onedark.nvim",
  config = function()
    require("onedark").setup({
      style = "cool",
      highlights = {
        ["@comment"] = { fg = "#969ea6" },
        Visual = { bg = "#FFFF99", fg = "#000000" },
      },
    })
    require("onedark").load() -- Load AFTER setup
  end,
}
