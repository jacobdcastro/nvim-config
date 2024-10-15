require "nvchad.options"

-- add yours here!
--
local autocmd = vim.api.nvim_create_autocmd

autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.star",
  command = "set filetype=python",
})


-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
