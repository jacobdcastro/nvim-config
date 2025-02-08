require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<Leader>dd", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })
map("n", "<leader>pi", function()
  local file_path = vim.fn.input "Image path: "
  local md_link = "![](" .. file_path .. ")"
  vim.api.nvim_put({ md_link }, "", true, true)
end, { desc = "Insert image path as markdown link" })
