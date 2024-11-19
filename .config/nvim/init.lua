-- Tabs
--  There are a bunch of options in the manual for making tabs a different amount of spaces and I don't know what to choose...
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
-- vim.o.tabstop = 2
vim.o.expandtab = true -- Changes tabs to spaces. Use CTRL-V<Tab> to insert a real tab. 

-- Line numbers
vim.o.nu = true
vim.o.rnu = true

-- TODO Fix this and enable lazy loading for mason
vim.opt.path:append('~/.local/share/nvim/mason/bin')
-- Statusline
require("config.statusline")
-- Keybindings
require("config.keybindings")

-- Package manager?
require("config.lazy")
-- Gonna do Lazy.nvim for now. Might switch to something like paq later if performance becomes a concern.

-- TODO Native vim highlight.
-- TODO LSP

