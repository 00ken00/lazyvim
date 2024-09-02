return {
  {
    'jpalardy/vim-slime',
    config = function()
      -- Optional configuration for vim-slime
      vim.g.slime_target = "tmux"
      vim.g.slime_default_config = {
        socket_name = "default",
        target_pane = "{last}",
      }
      -- You can add more configuration options as needed
    end,
  },
}
