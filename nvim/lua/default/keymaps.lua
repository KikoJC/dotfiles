-- |vim.keymap.set| |:map-modes| |autocmd| |set|
local map = vim.keymap.set

-- Set mapleader here.
vim.g.mapleader = " "
vim.g.maplocalleader = " "

map({'n', 'v' }, '<Space>', '<Nop>', { silent = true})

-- Exit insert mode with <jj> and <kk>
map("i", "jj", "<Esc>j", {desc = "Exit INSERT mode into NORMAL mode"})
map("i", "kk", "<Esc>k", {desc = "Exit INSERT mode into NORMAL mode"})

-- <j> and <k> move by visual lines, rather than logical lines.
map({"n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true})
map({"n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true})

-- Delete a word backwards
map("n", "dw", "diw", {desc = "Delete inside word"})
map("n", "cw", "ciw", {desc = "Change inside word"})

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", {desc = "Go to left window", remap = true})
map("n", "<C-j>", "<C-w>j", {desc = "Go to lower window", remap = true})
map("n", "<C-k>", "<C-w>k", {desc = "Go to upper window", remap = true})
map("n", "<C-l>", "<C-w>l", {desc = "Go to right window", remap = true})

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", {desc = "Increase window height"})
map("n", "<C-Down>", "<cmd>resize -2<cr>", {desc = "Decrease window height"})
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", {desc = "Decrease window width"})
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", {desc = "Increase window width"})

-- Line operations
map("n", "<A-j>", "<cmd>m .+1<cr>==", {desc = "Move line down"})
map("n", "<A-k>", "<cmd>m .-2<cr>==", {desc = "Move line up"})
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", {desc = "Move line down"})
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", {desc = "Move line up"})
map("v", "<A-j>", ":m '>+1<cr>gv=gv", {desc = "Move line down"})
map("v", "<A-k>", ":m '<-2<cr>gv=gv", {desc = "Move line up"})

-- Buffers
map("n", "<leader>bp", "<cmd>bprevious<cr>", {desc = "Prev buffer"})
map("n", "<leader>bn", "<cmd>bnext<cr>", {desc = "Next buffer"})
map("n", "[b", "<cmd>bprevious<cr>", {desc = "Prev buffer"})
map("n", "]b", "<cmd>bnext<cr>", {desc = "Next buffer"})
map("n", "<leader>bb", "<cmd>edit #<cr>", {desc = "Open last edited buffer"}) --  |e_#|
map("n", "<leader>bd", "<cmd>bdelete<cr>", {desc = "Delete buffer"})
map("n", "<leader>bD", "<cmd>bwipe<cr>", {desc = "Wipe buffer"})
map("n", "<leader>bl", "<cmd>ls<cr>", {desc = "List opened buffers"}) -- |ls|

-- Keep visual selection after indenting.
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Files
map("n", "<leader>fe", "<cmd>Ex.<cr>", {desc = "Toggle netrw in Bfr/Win cwd (File Explorer)", remap = true})
map("n", "<leader>fn", "<cmd>enew<cr>", {desc = "Create new file in cwd"})

-- windows
map("n", "<leader>ww", "<C-W>p", {desc = "Other window", remap = true})
map("n", "<leader>wd", "<C-W>c", {desc = "Delete window", remap = true})
map("n", "<leader>w-", "<C-W>s", {desc = "Split window below", remap = true})
map("n", "<leader>w|", "<C-W>v", {desc = "Split window right", remap = true})
map("n", "<leader>-", "<C-W>s",  {desc = "Split window below", remap = true})
map("n", "<leader>|", "<C-W>v",  {desc = "Split window right", remap = true})

-- Ctrl + hjkl behave like arrows in insert mode
map("i", "<C-h>", "<Left>",  {desc = "Left"})
map("i", "<C-j>", "<Down>",  {desc = "Down"})
map("i", "<C-k>", "<Up>",    {desc = "Up"})
map("i", "<C-l>", "<Right>", {desc = "Right"})
