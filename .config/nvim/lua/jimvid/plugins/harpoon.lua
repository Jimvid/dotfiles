return {
    "ThePrimeagen/harpoon",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        -- set keymaps
        local keymap = vim.keymap -- for conciseness
        keymap.set(
            "n",
            "<C-e>",
            "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
            { desc = "Go to next harpoon mark" }
        )
        keymap.set(
            "n",
            "<leader>a",
            "<cmd>lua require('harpoon.mark').add_file()<cr>",
            { desc = "Mark file with harpoon" }
        )
        keymap.set(
            "n",
            "<leader>n",
            "<cmd>lua require('harpoon.ui').nav_next()<cr>",
            { desc = "Go to next harpoon mark" }
        )
        keymap.set(
            "n",
            "<leader>N",
            "<cmd>lua require('harpoon.ui').nav_prev()<cr>",
            { desc = "Go to previous harpoon mark" }
        )
    end,
}
