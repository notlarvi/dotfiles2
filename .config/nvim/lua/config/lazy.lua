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

-- vim.g.mapleader = " "
-- vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  change_detection = {
    -- I don't actually know what it does!
    enabled = true,
    notify = false, -- get a notification when changes are found
  },
  ui = {                                                                                                                                                                        
    icons = {                                                                                                                                                                   
      cmd = "",                                                                                                                                                                
      config = "",                                                                                                                                                            
      event = "",                                                                                                                                                             
      ft = "",                                                                                                                                                                
      init = "",                                                                                                                                                               
      keys = "",                                                                                                                                                              
      plugin = "",                                                                                                                                                            
      runtime = "",                                                                                                                                                           
      require = "",                                                                                                                                                           
      source = "",                                                                                                                                                            
      start = "",                                                                                                                                                             
      task = "",                                                                                                                                                              
      lazy = "",                                                                                                                                                             
    },                                                                                                                                                                          
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = false },
})
