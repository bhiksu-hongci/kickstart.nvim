--[[ Keymap Bindings ]]
--
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

--  Add blank line below or above
vim.keymap.set('n', '<C-n>', 'm`o<Esc>``', { desc = 'Add new line below' })
vim.keymap.set('n', '<S-C-n>', 'm`O<Esc>``', { desc = 'Add new line above' })

--  Paste next to last item from register
vim.keymap.set('n', '<leader>p', '"0p', { desc = 'Paste item before current in register' })
--
--  Automatically add closing bracket/quote when opening bracket/quote is created
-- vim.keymap.set('i', '(', '()<Esc>ha', { desc = 'Add closing bracket' })
-- vim.keymap.set('i', '{', '{}<Esc>ha', { desc = 'Add closing curly bracket' })
-- vim.keymap.set('i', '[', '[]<Esc>ha', { desc = 'Add closing square bracket' })
-- vim.keymap.set('i', "'", "''<Esc>ha", { desc = 'Add closing single quote' })
-- vim.keymap.set('i', '"', '""<Esc>ha', { desc = 'Add closing double quote' })
--
-- Obsidian keymaps
--  navigate to vault
vim.keymap.set('n', '<leader>oo', ':cd ~/Obsidian/alaya')
--  convert note to template and remove leading white space
vim.keymap.set('n', '<leader>ot', ':ObsidianTemplate resource-template<CR> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<CR>')
--  strip date from note title and replace dashes with spaces
--  must have cursor on title
vim.keymap.set('n', '<leader>of', [[:s/\(\<[a-zA-Z].*\)-\d\{4}-\d\{2}-\d\{2}/\1/ | s/-/ /g<CR>]])
--  search for files in full vault
vim.keymap.set('n', '<leader>os', ':Telescope find_files search_dirs={"~/Obsidian/alaya/"}<CR>')
vim.keymap.set('n', '<leader>oz', ':Telescope live_grep search_dirs={"~/Obsidian/alaya/"}<CR>')
--
-- vim.keymap.set('n', '<leader>p', '_dP', { desc = 'Delete to register underscore and paste before' })
