require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Copilot
map('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})
vim.g.copilot_no_tab_map = true

-- update crates
map("n", "<leader>rcu", "<cmd>lua require('crates').update_all_crates()<cr>", { desc = "Update all crates" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
