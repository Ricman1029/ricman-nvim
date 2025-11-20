# Introducción

Una configuración minimalista de Neovim para hacer mas cómoda la tarea de codear.

> **Créditos:** Esta configuración está basada en los tutoriales de [Vyhrro](https://www.youtube.com/@vhyrro), con personalizaciones propias y nuevos plugins agregados.

## ⚡ Características Principales

* **Gestor de Plugins:** [lazy.nvim](https://github.com/folke/lazy.nvim) para carga diferida.
* **Buscador:** Telescope configurado para búsquedas rápidas.
* **Plugins Principales:**
    * `blink-cmp`: Autocompletado rápido.
    * `mason.nvim`: Manejo automático de los LSP.
    * `mini.surround`: Para rodear texto (paréntesis, comillas).
    * `treesj`: Para dividir/unir bloques de código.
    * `comfy-numbers`: Navegación vertical ergonómica limitada a teclas de la mano izquierda.

## 🛠️ Requisitos (Dependencias)

* **[ripgrep](https://github.com/BurntSushi/ripgrep):** Para búsquedas de texto ultrarrápidas (`grep`).
* **[fd](https://github.com/sharkdp/fd):** Una alternativa rápida a `find` (necesario para buscar archivos).
* **Neovim >= 0.9.0** (Recomendado 0.11+)
* **Nerd Font** (para ver los iconos correctamente).

## 🚀 Instalación

1.  **Creá un backup de tu config actual (si tenés una):**
    ```bash
    mv ~/.config/nvim ~/.config/nvim.bak
    ```

2.  **Clona este repositorio:**
    ```bash
    git clone https://github.com/Ricman1029/ricman-nvim.git ~/.config/nvim
    ```

3.  **Abre Neovim:**
    ```bash
    nvim
    ```
