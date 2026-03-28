
-- Set Space as the leader key (must be before plugins load)
vim.g.mapleader = " "

-- Set backslash as the local leader key (used for filetype-specific keybindings)
vim.g.maplocalleader = "\\"

-- Open file explorer (Netrw) with <leader>pv in normal mode
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move through soft-wrapped lines naturally (respects jump counts)
vim.keymap.set("n", "j", "v:count ? 'j' : 'gj'", { expr = true })
vim.keymap.set("n", "k", "v:count ? 'k' : 'gk'", { expr = true })
