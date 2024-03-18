-- remove trailing whitespace on save
vim.api.nvim_exec(
  [[
  augroup RemoveTrailingWhitespace
    autocmd!
    autocmd BufWritePre * :%s/\s\+$//e
  augroup END
]],
  false
)

vim.api.nvim_create_autocmd("VimResized", {
  group = vim.api.nvim_create_augroup("WinResize", { clear = true }),
  pattern = "*",
  command = "wincmd =",
  desc = "Automatically resize windows when the host window size changes.",
})

-- When editing a file, always jump to the last known cursor position.
-- Don't do it for commit messages, when the position is invalid, or when
-- inside an event handler (happens when dropping a file on gvim).
vim.api.nvim_exec(
  [[
  augroup vimrcEx
   autocmd!
   autocmd BufReadPost *
     \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal g`\"" |
     \ endif
  augroup END
]],
  false
)

-- update/sync file when it's changed on disk.
vim.o.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = { "*" },
})
-- notification after file change
vim.cmd([[
  autocmd FileChangedShellPost *
    \ echohl(WarningMsg) | echo("File changed on disk. Buffer reloaded.") | echohl(None)
]])

-- TODO: maybe bug, try to solve it better
-- but for now syntax highlight doesnt work properly
-- in .yml files.  set filytype to yaml for it to work properly.
vim.api.nvim_create_autocmd("FileType", {
  pattern = "eruby.yaml",
  command = "set filetype=yaml",
})

-- save folds
-- vim.api.nvim_create_autocmd({"BufWinLeave"}, {
--   pattern = {"*.*"},
--   desc = "save view (folds), when closing file",
--   command = "mkview",
-- })
-- vim.api.nvim_create_autocmd({"BufWinEnter"}, {
--   pattern = {"*.*"},
--   desc = "load view (folds), when opening file",
--   command = "silent! loadview"
-- })
