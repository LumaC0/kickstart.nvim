return {
  -- add ToggleTerm
  {
    'akinsho/toggleterm.nvim',
    lazy = true,
    cmd = { 'ToggleTerm' },
    version = '*',
    config = function()
      require('toggleterm').setup {
        start_in_insert = true,
        insert_mapping = true,
        hide_numbers = true,
        autochdir = true,
        shade_terminals = true,
        persist_size = false,
        persist_mode = false,
        direction = 'float',
        close_on_exit = true,
        shell = vim.o.shell,
      }

      local trim_spaces = true
      vim.keymap.set('v', '<space>s', function()
        require('toggleterm').send_lines_to_terminal('visual_lines', trim_spaces, { args = vim.v.count })
      end)
    end,
    keys = {
      {
        '<leader>tf',
        function()
          local count = vim.v.count1
          require('toggleterm').toggle(count, 20, vim.uv.cwd(), 'float')
        end,
        desc = 'Toggle Terminal',
      },
      {
        '<leader>th',
        function()
          local count = vim.v.count1
          require('toggleterm').toggle(count, 20, vim.uv.cwd(), 'horizontal')
        end,
      },
      {
        '<leader>tv',
        function()
          local count = vim.v.count1
          require('toggleterm').toggle(count, vim.o.columns * 0.4, vim.uv.cwd(), 'vertical')
        end,
      },
    },
  },
}
