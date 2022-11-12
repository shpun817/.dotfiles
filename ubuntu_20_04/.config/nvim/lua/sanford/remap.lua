local nnoremap = require("sanford.keymap").nnoremap
local inoremap = require("sanford.keymap").inoremap
local vnoremap = require("sanford.keymap").vnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")
nnoremap("<leader>w", "<cmd>w<CR>")
nnoremap("<leader>r", "<cmd>registers<CR>")

-- Delete and Paste into selection without yanking
nnoremap("<leader>d", "\"_d")
vnoremap("<leader>d", "\"_d")
vnoremap("<leader>p", "\"_dP")

inoremap("{<CR>", "{<CR>}<C-o>O")
inoremap("{<Space>", "{<Space><Space>}<left><left>")
inoremap("(;", "();<left><left>")

-- Remove last word (overwrite to avoid developing the habit of closing browser tabs)
inoremap("<A-w>", "<C-w>")
