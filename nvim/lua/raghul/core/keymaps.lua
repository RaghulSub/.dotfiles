vim.g.mapleader=" "

local keymap = vim.keymap

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


-- for window management

keymap.set({ 'n', 'v', 'x'},"<C-w>-","<C-w>s",{
  desc = "Horizontal window split",
})

keymap.set({ 'n', 'v', 'x'},"<C-w>\\","<C-w>v",{
  desc = "Vertical window split",
})

keymap.set({ 'n', 'v', 'x'},"<C-w>=","<C-w>=",{
  desc = "Equal window split",
})

keymap.set({ "n", "v", "x" }, "<C-up>", "<cmd>horizontal resize +2<CR>", {
    desc = "Dncrease the window height",
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

-- text selection

keymap.set({ "v", "x" }, "<", "<gv", {
    desc = "Keep visual mode selection after indenting",
})

keymap.set({ "v", "x" }, ">", ">gv", {
    desc = "Keep visual mode selection after indenting",
})







