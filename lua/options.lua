vim.g.mapleader = ","

vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
vim.opt.backup = false                          -- creates a backup file
vim.opt.cmdheight = 2                           -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
vim.opt.hlsearch = true                         -- highlight all matches on previous search pattern
vim.opt.ignorecase = true                       -- ignore case in search patterns
vim.opt.mouse = "a"                             -- allow the mouse to be used in neovim
vim.opt.pumheight = 10                          -- pop up menu height
vim.opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 2                         -- always show tabs
vim.opt.smartcase = true                        -- smart case
vim.opt.smartindent = true                      -- make indenting smarter again
vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false                        -- creates a swapfile
vim.opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true                         -- enable persistent undo
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undo"   -- directory where the undo files will be stored
vim.opt.updatetime = 300                        -- faster completion (4000ms default)
vim.opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.cursorline = true                       -- highlight the current line
vim.opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
vim.opt.scrolloff = 8                           -- is one of my fav
vim.opt.sidescrolloff = 8
vim.opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications
vim.opt.colorcolumn = "95"
vim.opt.termguicolors = true                    -- set term gui colors (most terminals support this)
vim.opt.tabstop = 2                             -- insert 2 spaces for a tab
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2                          -- the number of spaces inserted for each indentation
vim.opt.expandtab = true                        -- convert tabs to spaces
vim.opt.number = true                           -- set numbered lines
vim.opt.autoread = true                         -- trigger update when file changes on disk
-- vim.opt.relativenumber = true
vim.opt.list = true
vim.opt.listchars = "tab:»·,trail:·,nbsp:·"     -- visualize empty space
vim.opt.iskeyword:append("-")                   -- treat foo-bar as one word
vim.opt.breakindent = true                      -- preserve the indentation of virtual line. ie wrapped line
vim.opt.viewoptions='folds,cursor'              -- only save these for mkview

-- hack to make switching from vim to tmux pane quicker. it lags without this
-- more at https://github.com/christoomey/vim-tmux-navigator/issues/72
vim.opt.shell ="/bin/bash"
