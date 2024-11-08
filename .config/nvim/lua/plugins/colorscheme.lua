return {
  "EdenEast/nightfox.nvim",
  priority = 1000,
  -- Idrk when to use this. Maybe when you have multiple themes and only want one to load?
  -- lazy = true,
  config = function()
    vim.cmd("colorscheme terafox")
  end
}
