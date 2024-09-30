---@type ChadrcConfig
local M = {}
local map = vim.keymap.set
M.ui = { theme = 'ayu_dark' }

map("n", "<A-j>", ":m .+1<CR>==") -- move line down (n)
map("n", "<A-k>", ":m .-2<CR>==") -- move line up (n)
map("i", "<A-j>", "<ESC><A-j>i") -- move line down (i)
map("i", "<A-k>", "<ESC><A-k>i") -- move line up (i)
  map("n", "<A-h>", "0i<TAB><ESC>''")

return M
