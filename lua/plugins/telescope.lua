return {
    "nvim-telescope/telescope.nvim",
    tag = "v0.1.9",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
    },
    config = function ()
        require("telescope").setup({
            extensions = {
                fzf = {}
            }
        })

        require("telescope").load_extension("fzf")

        vim.keymap.set("n", "<Leader>ff", require("telescope.builtin").find_files)
        vim.keymap.set("n", "<Leader>fh", require("telescope.builtin").help_tags)
        vim.keymap.set("n", "<Leader>en", function ()
            require("telescope.builtin").find_files({
                cwd = vim.fn.stdpath("config")
            })
        end)

        vim.keymap.set("n", "<Leader>fh", require("telescope.builtin").help_tags)
        require("config.telescope.multigrep").setup()
   end
}
