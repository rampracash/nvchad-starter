require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
vim.opt.clipboard = ""
map({ "n", "x" }, "y", '"+y')
map("n", "p", '""p')

map("n", "<leader>fr", function() require("telescope.builtin").lsp_references() end, { noremap = true, silent = true, desc = "Find LSP references"})
map('i', '<C-l>', function ()
  vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
end, { desc = 'Copilot Accept', noremap = true, silent = true })
