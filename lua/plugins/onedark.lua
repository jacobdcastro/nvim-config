return {
  -- Atom One Dark/Light theme
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local onedark = require("onedark")

      local function apply_onedark()
        local bg = vim.o.background
        local style = (bg == "light") and "light" or "dark"

        onedark.setup({
          style = style,
        })
        onedark.load()
      end

      -- 1) Set the correct style on startup
      vim.api.nvim_create_autocmd("VimEnter", {
        callback = apply_onedark,
      })

      -- 2) Re-apply when background changes (system / terminal switch)
      vim.api.nvim_create_autocmd("OptionSet", {
        pattern = "background",
        callback = apply_onedark,
      })
    end,
  },

  -- Tell LazyVim that our colorscheme is "onedark"
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
