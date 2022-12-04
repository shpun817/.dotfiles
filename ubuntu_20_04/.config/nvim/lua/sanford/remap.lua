local nnoremap = require("sanford.keymap").nnoremap
local inoremap = require("sanford.keymap").inoremap
local vnoremap = require("sanford.keymap").vnoremap
local tnoremap = require("sanford.keymap").tnoremap

-- Shortcuts
nnoremap("<leader>pv", "<cmd>Ex<CR>") -- Open netrw

nnoremap("<C-s>", "<cmd>update<CR>") -- Save file
inoremap("<C-s>", "<cmd>update<CR>") -- Save file in insert mode

nnoremap("<leader>r", "<cmd>registers<CR>") -- Show contents in registers

nnoremap("<leader>cm", ":!") -- Execute command

nnoremap("<leader>;", "m\"A;<Esc>`\"") -- Insert semicolon at the end of the line
inoremap("<C-;>", "<Esc>m\"A;<Esc>`\"") -- Insert semicolon at the end of the line

nnoremap("<leader>tm", ":terminal<CR>i") -- Open terminal and enter Terminal mode
tnoremap("<Esc>", "<C-\\><C-n>") -- Escape Terminal mode with Escape

nnoremap("gr", "gd[{V%::s/<C-R>///gc<left><left><left>") -- Local rename variable
nnoremap("gR", "gD:%s/<C-R>///gc<left><left><left>") -- Global rename variable

-- Delete and Paste into selection without yanking
nnoremap("<leader>d", "\"_d")
vnoremap("<leader>d", "\"_d")
vnoremap("<leader>p", "\"_dP")

-- Auto-Pairing
inoremap("{<CR>", "{<CR>}<C-o>O")
inoremap("{<Space>", "{<Space><Space>}<left><left>")
inoremap("[<Space>", "[<Space><Space>]<left><left>")
inoremap("(<Space>", "(<Space><Space>)<left><left>")
inoremap("(;", "();<left><left>")

-- Overwrites
inoremap("<A-w>", "<C-w>") -- Remove last word (overwrite to avoid developing the habit of closing browser tabs)
inoremap("<A-[>", "<C-[>") -- Remove last word (overwrite to avoid developing the habit of closing browser tabs)
vnoremap("<C-c>", "\"+y")
nnoremap("<C-v>", "\"+p")
inoremap("<C-v>", "\"+p")
