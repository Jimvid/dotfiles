local status, saga = pcall(require, "lspsaga")

if not status then
	return
end

saga.init_lsp_saga({
	custom_kind = require("catppuccin.groups.integrations.lsp_saga").custom_kind(),
	server_filetype_map = {
		typescript = "typescript",
	},
})

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<C-j>", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", opts)
vim.keymap.set("n", "gd", "<Cmd>Lspsaga lsp_finder<CR>", opts)
vim.keymap.set("i", "<C-k>", "<Cmd>Lspsaga signature_help<CR>", opts)
vim.keymap.set("n", "gp", "<Cmd>Lspsaga peek_definition<CR>", opts)
vim.keymap.set("n", "gr", "<Cmd>Lspsaga rename<CR>", opts)
vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
vim.keymap.set("n", "<leader>tt", "<cmd>Lspsaga open_floaterm<CR>", opts)
vim.keymap.set("t", "<C-f>", [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], opts)
