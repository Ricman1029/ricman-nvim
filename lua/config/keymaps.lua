vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "gk", "<cmd>lua vim.diagnostic.open_float()<CR>")

vim.keymap.set("n", "<leader><leader>s", ":source $MYVIMRC<CR>")

vim.keymap.set("n", "gb", "<cmd>brewind<CR>")

vim.keymap.set("n", "<m-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<m-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<m-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<m-l>", ":wincmd l<CR>")

-- Desactivo los atajos que empiecen con Ctrl que no voy a usar
vim.keymap.set("n", "<c-l>", "<Nop>", { silent = true })

-- Para Typst
vim.keymap.set("n", "<leader>tpi", ":TypstPreview<cr>")
vim.keymap.set("n", "<leader>tps", ":TypstPreviewStop<cr>")
vim.keymap.set("n", "<leader>tpc", ":TypstPreviewSyncCursor<cr>")
