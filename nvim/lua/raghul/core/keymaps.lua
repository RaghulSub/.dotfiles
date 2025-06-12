vim.g.mapleader=" "
vim.g.maplocalleader=" "
local keymap = vim.keymap

local opts = { noremap = true, silent = true }

-- main

keymap.set("n","<leader>pv",vim.cmd.Ex)

keymap.set("i","jk","<ESC>",{
  desc = "Exit insert mode"
})

keymap.set("n", "<leader>cs", ":nohl<CR>",{
  desc = "Clearing search highlights"
})

-- for increament and decreament number

keymap.set({ 'n', 'v', 'x'}, "<leader>=", "<C-a>", {
  desc = "Increament number"
})

keymap.set({ 'n', 'v', 'x'}, "<leader>-", "<C-x>",{
  desc = "Decreament number"
})

-- disabled keys
keymap.set({ "n" }, "Q", "<nop>",{
    desc = "Disable Q because of accidents",
})

-- LSP
keymap.set({ "n" }, "<leader>f",vim.lsp.buf.format,{
    desc = "Format the file with lsp"
})


-- for window management

keymap.set({ 'n', 'v', 'x'},"<leader>sh","<C-w>s",{
  desc = "Horizontal window split",
})

keymap.set({ 'n', 'v', 'x'},"<leader>sv","<C-w>v",{
  desc = "Vertical window split",
})

keymap.set({ 'n', 'v', 'x'},"<leader>se","<C-w>=",{
  desc = "Equal window split",
})

keymap.set({ 'n', 'v', 'x'},"<leader>sx","<C-w>=",{
  desc = "Equal window split",
})

keymap.set({ "n", "v", "x" }, "<C-up>", "<cmd>horizontal resize +2<CR>", {
    desc = "Decrease the window height",
})

keymap.set({ "n", "v", "x" }, "<C-down>", "<cmd>horizontal resize -2<CR>", {
    desc = "Decrease the window height",
})

keymap.set({ "n", "v", "x" }, "<C-left>", "<cmd>vertical resize -2<CR>", {
    desc = "Decrease the window width",
})

keymap.set({ "n", "v", "x" }, "<C-right>", "<cmd>vertical resize +2<CR>", {
    desc = "Increase the window width",
})

-- tab management

keymap.set({ "n" }, "<leader>to", "<cmd>tabnew<CR>",{
    desc = "Open new tab",
})

keymap.set({ "n" }, "<leader>tx", "<cmd>tabclose<CR>",{
    desc = "Close tab",
})

keymap.set({ "n" }, "<leader>tn", "<cmd>tabn<CR>",{
    desc = "Jump next tab",
})

keymap.set({ "n" }, "<leader>tp", "<cmd>tabp<CR>",{
    desc = "Jump prev tab", 
})

keymap.set({ "n" }, "<leader>tf", "<cmd>tabnew %<CR>",{
    desc = "Open current buffer in new tab",
})

-- selected text movement 

keymap.set({ "v", "x" }, "<", "<gv", {
    desc = "Keep visual mode selection after indenting",
})

keymap.set({ "v", "x" }, ">", ">gv", {
    desc = "Keep visual mode selection after indenting",
})

keymap.set({ "v", "x" }, "J", ":m '>+1<CR>gv=gv", {
    desc = "Move selected lines down",
})
keymap.set({ "v", "x" }, "K", ":m '<-2<CR>gv=gv", {
    desc = "Move selected lines up",
})

-- clipboard
keymap.set({ "x" }, "<leader>p", [["_dP]] , {
    desc = "Paste without losing clipboard content",
})
keymap.set({ "v" }, "p", '"_dp', {
    desc = "Paste without losing clipboard content in visual mode",
})
keymap.set({ "n", "v"}, "<leader>d",[["_d]],{
    desc = "Delete without copying",
})

-- Copy filepath to the clipboard
vim.keymap.set("n", "<leader>fp", function()
    local filePath = vim.fn.expand("%:~")
    vim.fn.setreg("+", filePath)
    print("File path copied to clipboard: " .. filePath)
end,{
    desc = "Copy file path to clipboard",
})






