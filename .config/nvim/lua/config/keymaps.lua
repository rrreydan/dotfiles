local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Save file and quit
keymap.set("n", "<Leader>w", ":w<Return>", opts)
keymap.set("n", "<Leader>q", ":quit<Return>", opts)
keymap.set("n", "<Leader>Q", ":qa<Return>", opts)

-- Fast normal mode
keymap.set("i", "jj", "<ESC>", opts)

-- Tabs
keymap.set("n", "te", ":tabedit<Return>", opts)

-- Split window
keymap.set("n", "\\", ":split<Return>", opts)
keymap.set("n", "|", ":vsplit<Return>", opts)
