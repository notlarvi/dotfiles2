return {
  {
    "williamboman/mason.nvim",
    opts = {
      -- for some reason jq gets called instead of yq (prob by distro fault)
--      registries = {
--        "file:~/mason-registry"
--      }
    },
    cmd = { "Mason", "MasonInstall" }
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = true
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.tinymist.setup {}
    end

  },
}
lua/config/keybindings.lua
