-- let test#project_root = "~/dev/inteliquent/atlas-customer-data-lifecycle"
return {
  "jgdavey/tslime.vim",
  config = function()
    vim.api.nvim_exec(
      [[
        let test#strategy = "tslime"
        let g:tslime_always_current_session = 1
        let g:tslime_always_current_window = 1
      ]],
      false
    )
  end,
}
