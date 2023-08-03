vim.g.mapleader = " "	-- <leader>

-- Disabled necause "netrw" is disabled 
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)	-- While in normal mode (n), remap ":Ex" command to "<leader>pv", returns to explorer.

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")	-- While in visual mode (v), selected lines get moved an auto indent accordingly.
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
