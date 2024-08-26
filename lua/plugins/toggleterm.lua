return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      open_mapping = [[<c-\>]],
      start_in_insert = true,
      insert_mapping = true,
      hide_numbers = true,
      autochdir = true,
      shade_terminals = true,
      persist_size = false,
      persist_mode = false,
      direction = 'horizontal',
      close_on_exit = true,
      shell = vim.o.shell,
    }

    local trim_spaces = true
    vim.keymap.set('v', '<space>s', function()
      require('toggleterm').send_lines_to_terminal('visual_lines', trim_spaces, { args = vim.v.count })
    end)
    -- keymaps for opening in different orientations
    -- These don't work very well
    -- vim.keymap.set('n', [[v<c-\>]], ':ToggleTerm direction=vertical<CR>')
    -- vim.keymap.set('n', [[h<c-\>]], ':ToggleTerm direction=horizontal<CR>')
  end,
}
