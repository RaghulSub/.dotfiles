
-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)


-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

-- telescope 
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files,{})
vim.keymap.set('n', '<leader>fg',builtin.live_grep,{})

-- treesitter
local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed={'lua','javascript','python','c','cpp','typescript','go','rust','java','html','json','bash','haskell','css'},
  highlight = { enable = true },
  indent = { enable = true }
})

-- catppuccin color scheme
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"
