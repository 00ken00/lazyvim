return {}

-- return {
--   "3rd/image.nvim",
--   version = "v1.3.0", -- use version <2.0.0 to avoid breaking changes
--   config = function()
--     require("image").setup({
--       backend = "kitty", -- Kitty will provide the best experience, but you need a compatible terminal
--       integrations = {}, -- do whatever you want with image.nvim's integrations
--       max_width = 100, -- tweak to preference
--       max_height = 12, -- ^
--       max_height_window_percentage = math.huge, -- this is necessary for a good experience
--       max_width_window_percentage = math.huge,
--       window_overlap_clear_enabled = true,
--       window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
--     })
--     package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua"
--     package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua"
--   end,
-- }
