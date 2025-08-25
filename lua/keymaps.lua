vim.keymap.set("n", "<leader>w", ":wa <cr>")
vim.keymap.set("n", "<leader>n", ":bn <cr>")
vim.keymap.set("n", "<leader>m", ":bp <cr>")
vim.keymap.set("n", "<leader>q", ":%bd <cr>")
vim.keymap.set("n", "<leader>et", ":e ~/dev/dotfiles/todo<cr>")
vim.keymap.set("n", "<leader>ev", ":e ~/.config/nvim/init.lua<cr> :NvimTreeFindFileToggle!<cr>")

vim.keymap.set("n", "k", "gk") --treat virtual line as regular line when moving up
vim.keymap.set("n", "j", "gj") --treat virtual line as regular line when moving down
vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("i", "uu", "<esc>u")
vim.keymap.set("n", "0", "^") -- move to beginning of line
vim.keymap.set("n", "-==", "mmgg=G`m^zz`<Esc> :w<CR>")
vim.keymap.set("n", "q:", "<nop>")
vim.keymap.set("n", "<space><space>", ":b#<CR>")

vim.api.nvim_set_keymap("i", "bp", "binding.pry", { noremap = true, expr = false, silent = true })

-- LSP
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
-- vim.keymap.set("n", "J", "<cmd>lua vim.lsp.buf.hover()<CR>", {})
vim.keymap.set({ "n", "v" }, "ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})

-- vim-test
vim.keymap.set("n", "<leader>t", ":wa<cr>:TestFile<cr>")
vim.keymap.set("n", "<leader>s", ":wa<cr>:TestNearest<cr>")
vim.keymap.set("n", "<leader>l", ":wa<cr>:TestLast<cr>")

-- telescope
vim.keymap.set("n", "<C-p>", ":Telescope find_files <cr>")
vim.keymap.set("n", "<C-g>", ":Telescope live_grep <cr>")
-- disable for now because it breaks quickfix opening file and I dont really use it.
-- vim.keymap.set("n", "<C-n>", ":Telescope harpoon marks <cr>")
vim.keymap.set("n", "<C-d>", ":Telescope live_grep search_dirs=", { desc = "Global search from working directory" })
vim.keymap.set("n", "K", ":Telescope grep_string <cr>")

-- nvim-tree
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle <cr>")
vim.keymap.set("n", "<leader>f", ":NvimTreeFindFileToggle! <cr>")

-- harpoon
vim.keymap.set("n", "<leader>h", ":lua require('harpoon.ui').toggle_quick_menu() <cr>")
vim.keymap.set("n", "<leader>a", ":lua require('harpoon.mark').add_file() <cr>")

vim.keymap.set("i", "<Right>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true, silent = true })
vim.keymap.set("i", "<Up>", function()
  return vim.fn["codeium#CycleCompletions"](1)
end, { expr = true, silent = true })
vim.keymap.set("i", "<Down>", function()
  return vim.fn["codeium#CycleCompletions"](-1)
end, { expr = true, silent = true })
vim.keymap.set("i", "<Left>", function()
  return vim.fn["codeium#Clear"]()
end, { expr = true, silent = true })
