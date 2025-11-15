-- neovim expone una "tabla" global que CUALQUIER script puede ver y usar
-- esta tabla se llama vim y através de ella podemos acceder a diferentes
-- elementos.
-- Uno de esos elementos son las opciones (.opt) que vienen por defecto 
-- con nvim. Podríamos acceder a ella sin usar lua, escribiendo :options
-- Ahí vemos todas las diferentes opciones que podemos modificar. Una de
-- ellas es la opcion "number", a la que podemos acceder desde lua con
-- vim.opt.number; esta opción es la que permite poner o quitar los 
-- números a las líneas de códgio
vim.opt.number = true

-- los números de las líneas adyacentes son relativos a la posición en 
-- la que me encuentro
vim.opt.relativenumber = true

-- resalta la linea en la que se encuentra el cursor
vim.opt.cursorline = true

-- convierte el tab en espacios
vim.opt.expandtab = true
-- la cantidad de espacios a la que equivale un <Tab>
vim.opt.tabstop = 4
-- la cnatidad de espacios que se usa para "autoindentation"
-- (cuando usamos >> o << )
vim.opt.shiftwidth = 4

-- las nuevas pestañas se abren por defecto en una pestaña de abajo
vim.opt.splitbelow = true
-- y si quería columnas, se abren a la derecha
vim.opt.splitright = true

-- esto hace que nvim pueda leer el clipboard del sistema
vim.opt.clipboard = "unnamedplus"

-- cuántas líneas de offset desde el cursor para que nvim scrollée
-- al ponerlo en 999 el cursor se mantiene siempre en el medio
vim.opt.scrolloff = 999

-- es para poder seleccionar espacio vacío cuando estamos en virtual-block-mode
vim.opt.virtualedit = "block"

-- habilita una ventana temporal para ver una preview de los cambios
-- que genera el comando que utilice, (ej. probar :%s/vim/nvim)
vim.opt.inccommand = "split"

-- es un ignorecase para los comandos de nvim (podría hacer :maso<Tab> y
-- me mostraía todos los comandos como :Mason, :MasonLog, etc)
vim.opt.ignorecase = true

-- habilita a nvim a utilizar 24-bit colors
vim.opt.termguicolors = true

-- acá seteamos lazy.nvim
require("config.lazy")

