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
   " Set syntax highlighting for specific file types
   autocmd BufRead,BufNewFile Appraisals set filetype=ruby
   autocmd BufRead,BufNewFile *.md set filetype=markdown
   autocmd BufRead,BufNewFile .{jscs,jshint,eslint}rc set filetype=json
   autocmd BufRead,BufNewFile .erb set filetype=html
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
