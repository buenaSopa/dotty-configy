local function map(m, k, v)
	vim.keymap.set(m, k, v, {silent = true})
end

local builtin = require('telescope.builtin')

-- Telescope
map('n', '<leader>ff', builtin.find_files)
map('n', '<leader>fg', builtin.live_grep)
map('n', '<leader>fb', '<CMD>Telescope file_browser path=%:p:h select_buffer=true hidden=true no_ignore=true<CR>')

-- Netwrc
map('n', '<leader>pv', '<CMD>E<CR>')

-- bufferline

map('n', '<leader>ft', '<CMD>BufferLinePick<CR>')
map('n', '<C-q>',     '<CMD>BufferLinePickClose<CR>')
map('n', '<C-PageDown>',     '<CMD>BufferLineCycleNext<CR>')
map('n', '<C-PageUp>',     '<CMD>BufferLineCyclePrev<CR>')
map('n', '<C-l>',     '<CMD>BufferLineMoveNext<CR>')
map('n', '<C-k>',     '<CMD>BufferLineMovePrev<CR>')
-- vim.keymap.set('n', 'gs', '<CMD>BufferLineSortByDirectory<CR>')

-- Harpoon
-- map('n', '<leader>a', mark.add_file)
-- map('n', '<C-e>', ui.toggle_quick_menu)
-- map('n', '<C-o>', function() ui.nav_file(1) end)
-- map('n', '<C-p>', function() ui.nav_file(2) end)
-- map('n', '<C-k>', function() ui.nav_file(3) end)
-- map('n', '<C-l>', function() ui.nav_file(4) end)

-- Nvim-tree
map('n', '<leader>t', '<CMD>NvimTreeToggle<CR>')
-- map('n', '<C-a>', '<CMD>NvimTreeFocus<CR>')

-- switch focus window
map('n', '<C-_>', '<C-w>w')

-- Tagbar
-- map('n', '<C-q>', '<CMD>TagbarToggle<CR>')

-- UndoTree
-- map('n', '<leader>u', '<CMD>UndotreeToggle<CR>')

-- Git
-- map('n', '<leader>gs', '<CMD>Git<CR>')

-- Comment
map('i', '<C-_>', '<CMD>CommentToggle<CR>')

