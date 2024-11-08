local themes = require('telescope.themes')
local pickers = require('telescope.builtin')
local opts = { } 
local M =  {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  -- or                              , branch = '0.1.x',
  -- lazy = true, -- I don't think I need this since I have the keys setup
  dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      defaults = {
        layout_strategy = 'horizontal',
        layout_config = { 
          height = 0.80 ,
          prompt_position = 'top',
          width = 0.90,
          preview_width = 0.70,
        },

      }
    },
    keys = {
      {'<leader>fh', pickers.help_tags},
      {'<leader>ff', pickers.find_files},
      {'<leader>ft', pickers.treesitter},
    }
--  config = function(opts) 
--    require('telescope').setup{
--    }
--    local builtin = require('telescope.builtin')
--    vim.keymap.set('n', '<leader>ff', builtin.find_files)
--    vim.keymap.set('n', '<leader>fc', builtin.command_history)
--  end
}
return M
