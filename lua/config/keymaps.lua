vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>")
vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<Esc>", "<Esc>:nohlsearch<CR>")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>rs", function()
    for _, client in ipairs(vim.lsp.get_clients({ name = "tmscript" })) do
        client.stop(true)
    end
    vim.cmd("edit")
end, { desc = "Restart tmscript LSP" })
