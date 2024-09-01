-- if true then
--   return {}
-- end

return {
  "Vigemus/iron.nvim",
  config = function()
    require("iron.core").setup({
      config = {
        -- Whether a repl should be discarded or not
        scratch_repl = true,
        -- Your repl definitions come here
        repl_definition = {
          sh = {
            -- Can be a table or a function that
            -- returns a table (see below)
            command = { "zsh" },
          },
          python = {
            command = { "ipython", "--no-autoindent" }, -- or { "ipython", "--no-autoindent" }
            format = require("iron.fts.common").bracketed_paste_python,
          },
        },
        -- How the repl window will be displayed
        -- See below for more information
        repl_open_cmd = require("iron.view").right(60),
      },
      -- Iron doesn't set keymaps by default anymore.
      -- You can set them here or manually add keymaps to the functions in iron.core
      keymaps = {
        send_motion = "<space>rs",
        visual_send = "<space>rr",
        send_file = "<space>rf",
        send_line = "<space>rl",
        send_paragraph = "<space>rr",
        send_until_cursor = "<space>ru",
        send_mark = "<space>rm",
        -- mark_motion = "<space>mc",
        -- mark_visual = "<space>mc",
        -- remove_mark = "<space>md",
        cr = "<space>r<cr>",
        interrupt = "<space>r<space>",
        exit = "<space>rq",
        clear = "<space>rc",
      },
      -- If the highlight is on, you can change how it looks
      -- For the available options, check nvim_set_hl
      highlight = {
        italic = true,
      },
      ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
    })

    vim.keymap.set("n", "<space>re", "<cmd>IronRepl<cr>")
    vim.keymap.set("n", "<space>rt", "<cmd>IronRestart<cr>")
    vim.keymap.set("n", "<space>rf", "<cmd>IronFocus<cr>")
    -- vim.keymap.set("n", "<space>rh", "<cmd>IronHide<cr>")
  end,
}

-- return {}
