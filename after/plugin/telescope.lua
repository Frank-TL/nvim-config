local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})	-- Search in files
vim.keymap.set('n', '<C-p>', builtin.git_files, {})		-- Search in git files (respects .gitignore

	-- Shearch word (requires ripgrep installed)
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
