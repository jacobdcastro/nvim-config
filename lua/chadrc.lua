-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

-- Enable ligatures
vim.o.guifont = "JetBrainsMono NF:h10"
-- vim.opt.guiligatures = "!\"#$%&'()*+,-./:;<=>?@[]^_`{|}~"

M.base46 = {
  theme = "onedark",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.cheatsheet = {
  excluded_groups = { "autopairs", "Opens" }, -- can add group name or with mode
}

require("nvim-tree").setup {
  filters = {
    dotfiles = false, -- Set to false to show dotfiles
  },
  git = {
    ignore = false, -- Set to false to show git ignored files (like .env)
  },
}

require("telescope").setup {
  pickers = {
    find_files = {
      hidden = false,
    },
  },
}

return M
