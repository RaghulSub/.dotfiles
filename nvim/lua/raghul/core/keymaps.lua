-- main
vim.g.mapleader=" "

local keymap = vim.keymap

keymap.set("n","<leader>pv",vim.cmd.Ex)

keymap.set("i","jk","<ESC>",{
  desc = "Exit insert mode"
})

keymap.set("n","<leader>nh",":nohl<CR>",{
  desc = "Clearing search highlights"
})


-- for window management

keymap.set({'n','v'},"<C-w>-","<C-w>s",{
  desc = "Horizontal window split",
})

keymap.set({'n','v'},"<C-w>\\","<C-w>v",{
  desc = "Vertical window split",
})

keymap.set({'n','v'},"<C-w>=","<C-w>=",{
  desc = "Equal window split",
})

keymap.set({ "n", "v", "x" }, "<C-up>", "<cmd>horizontal resize +2<CR>", {
    desc = "increase the window height",
})

keymap.set({ "n", "v", "x" }, "<C-down>", "<cmd>horizontal resize -2<CR>", {
    desc = "decrease the window height",
})

keymap.set({ "n", "v", "x" }, "<C-left>", "<cmd>vertical resize -2<CR>", {
    desc = "decrease the window width",
})

keymap.set({ "n", "v", "x" }, "<C-right>", "<cmd>vertical resize +2<CR>", {
    desc = "increase the window width",
})

keymap.set({ "v", "x" }, "<", "<gv", {
    desc = "keep visual mode selection after indenting",
})

keymap.set({ "v", "x" }, ">", ">gv", {
    desc = "keep visual mode selection after indenting",
})
