vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes:1"

vim.opt.cursorline = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.clipboard = "unnamedplus"

vim.opt.scrolloff = 999
vim.opt.smoothscroll = true

vim.opt.virtualedit = "block"

vim.opt.inccommand = "split"

vim.opt.ignorecase = true

vim.opt.termguicolors = true

vim.opt.showmode = false

vim.opt.hlsearch = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- 1. Asegurar que .typ se detecte como typst
vim.filetype.add({
  extension = {
    typ = "typst",
  },
})

-- 2. Configuración específica para typst
vim.api.nvim_create_autocmd("FileType", {
  pattern = "typst",
  callback = function()
    -- Define el ancho máximo (ej. 80 caracteres)
    vim.opt_local.textwidth = 180
    -- Habilita el auto-corte al escribir
    vim.opt_local.formatoptions:append("t")
  end,
})
