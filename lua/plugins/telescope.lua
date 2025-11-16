return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.9",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
    },
    config = function ()
        vim.keymap.set("n", "<Leader>ff", require("telescope.builtin").find_files)
   end
}
