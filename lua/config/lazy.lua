-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"


-- ESTO DE ACA ABAJO no funciona siempre ya que en lua todo funciona de manera asincrónica. La primera vez
-- que abramos esta configuración de nvim, nos va a aparecer un error ya que el tema kanagawa no va a estar
-- instalado (eso se va a hacer en el background), pero al mismo tiempo le vamos a estar diciendo a nvim
-- que aplique el tema que todavía no está descargado.
-- #########################################################################################################
-- require("lazy").setup({
--     "rebelot/kanagawa.nvim"
-- })
--
-- -- vim.cmd se usa para usar (valga la redundancia) los comandos de vim desde lua
-- -- así como con vim.opt accedíamos a la tabla de opciones, con vim.cmd accedemos
-- -- a la tabla de comandos de vim.
-- -- El primer comando que vamos a usar es el de colorscheme para setearlo
-- vim.cmd.colorscheme("kanagawa-dragon")
-- #########################################################################################################
-- LA FORMA DE SOLUCIONARLO es usando "callback functions". En lazy lo que podemos hacer es, en vez de solo
-- pasarle lo que queremos que descargue de git (en nuestro caso el tema "rebelot/kanagawa.nvim"), pasarle 
-- una lista, ("tabla" en lenguaje de lua) que contenga la dirección de git, pero además otro elemento que
-- se llama "config" al que le vamos a asignar una función.
-- Esta función ya no se va a ejecutar de manera asíncrona, sino que va a esperar a que lazy descargue el 
-- paquete (o lo que sea) de internet, y luego va a ejecutar la función que le especifiquemos.
-- #########################################################################################################
require("lazy").setup({
    {
        "rebelot/kanagawa.nvim",
        config = function()
            vim.cmd.colorscheme("kanagawa-dragon")
        end,
    }
})
-- #########################################################################################################

-- -- Setup lazy.nvim
-- require("lazy").setup({
--   spec = {
--     -- import your plugins
--     { import = "plugins" },
--   },
--   -- Configure any other settings here. See the documentation for more details.
--   -- colorscheme that will be used when installing plugins.
--   install = { colorscheme = { "habamax" } },
--   -- automatically check for plugin updates
--   checker = { enabled = true },
-- })
