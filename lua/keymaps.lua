vim.keymap.set("n", "<leader>w", ":wa <cr>")
vim.keymap.set("n", "<leader>n", ":bn <cr>")
vim.keymap.set("n", "<leader>m", ":bp <cr>")
vim.keymap.set("n", "<leader>q", ":%bd <cr>")
vim.keymap.set("n", "<leader>et", ":e ~/.config/nvim/todo<cr>")
vim.keymap.set("n", "<leader>ev", ":e ~/.config/nvim/lua/plugins/lsp.lua<cr>")

vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "j", "gj")
vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("i", "uu", "<esc>u")
vim.keymap.set("n", "0", "^")
vim.keymap.set("n", "===", "mmgg=G`m^zz`<Esc> :w<CR>")
vim.keymap.set("n", "q:", "<nop>")
vim.keymap.set("n", "<space><space>", ":b#<CR>")

-- search movement keeps cursor in middle
vim.keymap.set('n', 'n', 'nzzzv', {})
vim.keymap.set('n', 'N', 'Nzzzv', {})

-- vertical movement keeps cursor in middle
vim.keymap.set('n', '<C-j>', '<C-d>zz', {})
vim.keymap.set('n', '<C-k>', '<C-u>zz', {})

-- vertical movement keeps cursor in middle (visual mode)
vim.keymap.set('v', '<C-j>', '<C-d>zz', {})
vim.keymap.set('v', '<C-k>', '<C-u>zz', {})

-- LSP
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- formatter
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- vim-test
vim.keymap.set("n", "<leader>t", ":wa<cr>:TestFile<cr>")
vim.keymap.set("n", "<leader>s", ":wa<cr>:TestNearest<cr>")
vim.keymap.set("n", "<leader>l", ":wa<cr>:TestLast<cr>")
vim.keymap.set("n", "<leader>a", ":wa<cr>:TestSuite<cr>")

-- telescope
vim.keymap.set("n", "<C-p>", ":Telescope find_files <cr>")
vim.keymap.set("n", "<C-g>", ":Telescope live_grep <cr>")
vim.keymap.set("n", "K",     ":Telescope grep_string <cr>")

-- nvim-tree
vim.keymap.set("n", "<C-n>",     ":NvimTreeToggle <cr>")
vim.keymap.set("n", "<leader>f", ":NvimTreeFindFile <cr>")
