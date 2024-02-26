local g = vim.g
local kms = vim.keymap.set

g.mapleader = ' '

-- normal mode
kms('n', ';', ':') -- Replace ':' into ';'
kms('n', '<leader>w', vim.cmd.w) -- Save file
kms('n', '<leader>e', vim.cmd.Ex) -- Go to explorer view
kms('n', '<leader>qq', vim.cmd.q) -- Exit vim
kms('n', 'q', vim.cmd.noh) -- Take off search
kms('n', 'n', 'nzz') -- Go to next word + cursor @ middle
kms('n', 'N', 'nzz') -- Go to prev word + cursor @ middle
kms('n', '<leader>s', ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>') -- Replace every word in the file

-- insert mode
kms('i', '<C-h>', '<Left>') -- Allows to go Left while in Insert mode
kms('i', '<C-j>', '<Down>') -- Allows to go Down while in Insert mode
kms('i', '<C-k>', '<Up>') -- Allows to go Up while in Insert mode
kms('i', '<C-l>', '<Right>') -- Allows to go Right while in Insert mode
kms('i', '<C-b>', '<ESC>^i') -- Go to first letter of the line
kms('i', '<C-e>', '<End>') -- Go to end of the line
