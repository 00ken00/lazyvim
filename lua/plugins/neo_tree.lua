-- https://github.com/nvim-neo-tree/neo-tree.nvim
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- This makes all hidden items visible
        hide_dotfiles = false, -- Show dotfiles (files/folders starting with .)
        hide_gitignored = false, -- Show gitignored files

        never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
          ".DS_Store",
          --"thumbs.db"
        },
      },
    },
  },
}

