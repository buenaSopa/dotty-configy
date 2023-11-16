local function map(m, k, v)
	vim.keymap.set(m, k, v, {silent = true})
end

local builtin = require('telescope.builtin')

-- gomove 
-- map( "x", "<S-Left>", "<Plug>GoVSMLeft", {} )
map( "x", "<S-Down>", "<Plug>GoVSMDown", {} )
map( "x", "<S-Up>", "<Plug>GoVSMUp", {} )
-- map( "x", "<S-Right>", "<Plug>GoVSMRight", {} )
-- map( "n", "<S-Left>", "<Plug>GoNSMLeft", {} )
-- map( "n", "<S-Down>", "<Plug>GoNSMDown", {} )
-- map( "n", "<S-Up>", "<Plug>GoNSMUp", {} )
-- map( "n", "<S-Right>", "<Plug>GoNSMRight", {} )

-- prettier
map('n', '<leader>f', '<CMD>lua vim.lsp.buf.format({ bufnr = bufnr })<CR>')

-- yank
map('n', '<leader>pp', '<CMD>registers<CR>')

-- avoid esc
map('i', '<C-o>','<Esc>')
map('v', '<C-o>','<Esc>')
-- map('i', '<C-o>','<Esc>')

-- quick save
-- map('n', '<C-s>',     '<CMD>w<CR>')


-- Telescope
map('n', '<leader>ff', builtin.find_files)
map('n', '<leader>fg', builtin.live_grep)
map('n', '<leader>fb', '<CMD>Telescope file_browser path=%:p:h select_buffer=true hidden=true no_ignore=true<CR>')

-- Netwrc
map('n', '<leader>pv', '<CMD>E<CR>')

-- bufferline
map('n', '<leader>ft', '<CMD>BufferLinePick<CR>')
map('n', '<C-w>',     '<CMD>BufferLinePickClose<CR>')
map('n', '<C-PageDown>',     '<CMD>BufferLineCycleNext<CR>')
map('n', '<C-PageUp>',     '<CMD>BufferLineCyclePrev<CR>')
map('n', '<C-l>',     '<CMD>BufferLineMoveNext<CR>')
map('n', '<C-k>',     '<CMD>BufferLineMovePrev<CR>')
-- vim.keymap.set('n', 'gs', '<CMD>BufferLineSortByDirectory<CR>')

-- Harpoon
-- map('n', '<leader>a', mark.add_file)
-- map('n', '<C-e>', ui.toggle_quick_menu)
-- map('n', '<C-o>', function() ui.nav_file(4) end)
-- map('n', '<C-p>', function() ui.nav_file(2) end)
-- map('n', '<C-k>', function() ui.nav_file(3) end)
-- map('n', '<C-l>', function() ui.nav_file(4) end)

-- Nvim-tree
-- map('n', '<leader>t', '<CMD>NvimTreeToggle<CR>')
-- map('n', '<C-a>', '<CMD>NvimTreeFocus<CR>')

-- switch focus window
map('n', '<leader>aa', '<C-w>w')

-- Tagbar
-- map('n', '<C-q>', '<CMD>TagbarToggle<CR>')

-- UndoTree
-- map('n', '<leader>u', '<CMD>UndotreeToggle<CR>')

-- Git
-- map('n', '<leader>gs', '<CMD>Git<CR>')


