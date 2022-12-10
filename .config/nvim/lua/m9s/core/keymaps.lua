vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- General Keymaps
-- Use j+k to bounce back normal mode
keymap.set("i", "jk", "<ESC>")
-- Use n+h to unhighlight
keymap.set("n", "<leader>nh", ":nohl<CR>")
-- Use x to delete a character but without add it to clipboard
keymap.set("n", "x", '"_x')
-- Use leader + to increase a number, use leader - to decrease a number
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>q", ":x<CR>")
keymap.set("n", "<leader>w", ":w<CR>")
-- Move to Command mode quick
-- keymap.set("i", "<leader><leader>", "<ESC>:")
keymap.set("n", "<leader><leader>", ":")

-- WINDOWS
--
-- Split window vertically
keymap.set("n", "<leader>sv", "<C-w>v")
-- Split window horizontally
keymap.set("n", "<leader>sh", "<C-w>s")
-- Make split windows equal width
keymap.set("n", "<leader>se", "<C-w>=")
-- Close current split window
keymap.set("n", "<leader>sx", ":close<CR>")

-- TABS
--
-- Open new tab
keymap.set("n", "<leader>to", ":tabnew<CR>")
-- Close current tab
keymap.set("n", "<leader>tx", ":tabclose<CR>")
-- Go to next tab
keymap.set("n", "<leader>tn", ":tabn<CR>")
-- Go to previous tab
keymap.set("n", "<leader>tp", ":tabp<CR>")

-- Plugin Keymaps
--
-- Vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- Nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
