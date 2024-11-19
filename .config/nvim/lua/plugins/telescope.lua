-- local themes = require('telescope.themes')
-- local pickers = require('telescope.builtin')
-- local opts = { }
return {
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  {
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

      },
      extensions = {
        fzf = {
          fuzzy = true,                    -- false will only do exact matching
          override_generic_sorter = true,  -- override the generic sorter
          override_file_sorter = true,     -- override the file sorter
          case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
          -- the default case_mode is "smart_case"
        }
      }
    },
    -- TODO this vs opts.defaults.mappings.n
    keys = {
      {'<leader>fh', '<cmd>Telescope help_tags<CR>' }, -- pickers.help_tags},
      {'<leader>ff', '<cmd>Telescope find_files<CR>' },
      {'<leader>ft', '<cmd>Telescope treesitter<CR>' },
    },
    config = function()
      require('telescope').load_extension('fzf')
    end
    --  config = function(opts) 
      --    require('telescope').setup{
        --    }
        --    local builtin = require('telescope.builtin')
        --    vim.keymap.set('n', '<leader>ff', builtin.find_files)
        --    vim.keymap.set('n', '<leader>fc', builtin.command_history)
        --  end
      }
    }

