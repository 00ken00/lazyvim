return {
  -- Colorscheme configuration
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  -- Catppuccin configuration
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "frappe", -- Can be "latte", "frappe", "macchiato", or "mocha"
        -- integrations = {
        --   nvimtree = true, -- Enable the theme for nvim-tree
        --   -- Add other integrations if needed
        -- },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
