require("diffview").setup()

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>do", ":DiffviewOpen<CR>", opts)
vim.keymap.set("n", "<leader>dc", ":DiffviewClose<CR>", opts)
vim.keymap.set("n", "<leader>dh", ":DiffviewFileHistory<CR>", opts)
