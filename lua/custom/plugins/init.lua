-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('oil').setup {}
      -- Open parent directory in current window
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

      -- Open parent directory in floating window
      vim.keymap.set('n', '<space>-', require('oil').toggle_float)
    end,
  },
  {
    'smoka7/hop.nvim',
    version = '*',
    opts = {
      keys = 'etovxqpdygfblzhckisuran',
    },
    config = function()
      require('hop').setup {}

      -- Hop keybindings:
      local hop = require 'hop'
      local directions = require('hop.hint').HintDirection
      vim.keymap.set('', 'f', function()
        hop.hint_char1 { direction = directions.AFTER_CURSOR, current_line_only = true }
      end, { remap = true })
      vim.keymap.set('', 'F', function()
        hop.hint_char1 { direction = directions.BEFORE_CURSOR, current_line_only = true }
      end, { remap = true })
      vim.keymap.set('', 't', function()
        hop.hint_char1 { direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 }
      end, { remap = true })
      vim.keymap.set('', 'T', function()
        hop.hint_char1 { direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 }
      end, { remap = true })
      --
      vim.keymap.set('n', 'hw', ':HopWord<CR>')
      vim.keymap.set('n', 'hc', ':HopCamelCase<CR>')
      vim.keymap.set('n', 'ho', ':HopChar1<CR>')
      vim.keymap.set('n', 'ht', ':HopChar2<CR>')
      vim.keymap.set('n', 'hp', ':HopPattern<CR>')
      vim.keymap.set('n', 'hl', ':HopLine<CR>')
      vim.keymap.set('n', 'hs', ':HopLineStart<CR>')
      vim.keymap.set('n', 'hv', ':HopVertical<CR>')
      vim.keymap.set('n', 'hpa', ':HopPasteChar1<CR>')
      vim.keymap.set('n', 'hy', ':HopYankChar1<CR>')
    end,
  },
}
