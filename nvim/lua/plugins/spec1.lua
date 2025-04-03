return {
  { 'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { "nvim-lua/plenary.nvim" } 
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "nvim-treesitter/nvim-treesitter",build = ":TSUpdate" }
}

