return {
  'mrjones2014/smart-splits.nvim',

  -- config = function()
  --   -- [ VIM SMART-SPLITS KEYBINDS]
  --   local builtin = require 'smart-splits'
  --   vim.keymap.set('n', '<A-h>', builtin.resize_left)
  --   vim.keymap.set('n', '<A-j>', builtin.resize_down)
  --   vim.keymap.set('n', '<A-k>', builtin.resize_up)
  --   vim.keymap.set('n', '<A-l>', builtin.resize_right)
  --   -- moving between splits
  --   vim.keymap.set('n', '<C-h>', builtin.move_cursor_left)
  --   vim.keymap.set('n', '<C-j>', builtin.move_cursor_down)
  --   vim.keymap.set('n', '<C-k>', builtin.move_cursor_up)
  --   vim.keymap.set('n', '<C-l>', builtin.move_cursor_right)
  --   vim.keymap.set('n', '<C-\\>', builtin.move_cursor_previous)
  --   -- swapping buffers between windows
  --   vim.keymap.set('n', '<leader><leader>h', builtin.swap_buf_left)
  --   vim.keymap.set('n', '<leader><leader>j', builtin.swap_buf_down)
  --   vim.keymap.set('n', '<leader><leader>k', builtin.swap_buf_up)
  --   vim.keymap.set('n', '<leader><leader>l', builtin.swap_buf_right)
  -- end,

  -- recommended mappings
  -- resizing splits
  -- these keymaps will also accept a range,
  -- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
  -- vim.keymap.set('n', '<A-h>', require('smart-splits').resize_left),
  -- vim.keymap.set('n', '<A-j>', require('smart-splits').resize_down),
  -- vim.keymap.set('n', '<A-k>', require('smart-splits').resize_up),
  -- vim.keymap.set('n', '<A-l>', require('smart-splits').resize_right),
  -- moving between splits
  -- vim.keymap.set('n', '<C-h>', require('smart-splits').move_cursor_left),
  -- vim.keymap.set('n', '<C-j>', require('smart-splits').move_cursor_down),
  -- vim.keymap.set('n', '<C-k>', require('smart-splits').move_cursor_up),
  -- vim.keymap.set('n', '<C-l>', require('smart-splits').move_cursor_right),
  -- vim.keymap.set('n', '<C-\\>', require('smart-splits').move_cursor_previous),
  -- -- swapping buffers between windows
  -- vim.keymap.set('n', '<leader>bh', require('smart-splits').swap_buf_left),
  -- vim.keymap.set('n', '<leader>bj', require('smart-splits').swap_buf_down),
  -- vim.keymap.set('n', '<leader>bk', require('smart-splits').swap_buf_up),
  -- vim.keymap.set('n', '<leader>bl', require('smart-splits').swap_buf_right),

  keys = {
    {
      '<C-h>',
      function()
        require('smart-splits').move_cursor_left()
      end,
      mode = { 'i', 'n', 'v' },
      desc = 'Move to left window',
    },
    {
      '<C-j>',
      function()
        require('smart-splits').move_cursor_down()
      end,
      mode = { 'i', 'n', 'v' },
      desc = 'Move to bottom window',
    },
    {
      '<C-k>',
      function()
        require('smart-splits').move_cursor_up()
      end,
      mode = { 'i', 'n', 'v' },
      desc = 'Move to upper window',
    },
    {
      '<C-l>',
      function()
        require('smart-splits').move_cursor_right()
      end,
      mode = { 'i', 'n', 'v' },
      desc = 'Move to right window',
    },
  },
}
