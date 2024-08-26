return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    options = {
      mode = 'buffers',
      style_preset = function()
        local bufferline = require 'bufferline'
        return bufferline.style_preset.default
      end,
      numbers = 'none',
      close_command = 'bdelete! %d',
      right_mouse_command = 'bdelete! %d',
      left_mouse_command = 'buffer %d',
      middle_mouse_command = nil,
      indicator = {
        -- icon = '▎',
        style = 'underline',
      },
      buffer_close_icon = '󰅖',
      modified_icon = '●',
      close_icon = '',
      left_trunc_marker = '',
      right_trunc_marker = '',
      name_formatter = function(buf)
        return buf.name
      end,
      diagnostics = 'nvim_lsp',
      diagnostics_update_on_event = true,
      offsets = {
        {
          filetype = 'neo-tree',
          text = 'File Explorer',
          text_align = 'center',
          separator = true,
        },
      },
      color_icons = true,
      show_buffer_icons = true,
      show_bugger_close_icons = true,
      show_close_icon = true,
      show_tab_indicators = true,
      seperator_style = 'slant',
      enforce_regular_tabs = true,
      always_show_bufferline = true,
      hover = {
        enabled = true,
        reveal = { 'close' },
      },
    },
  },
  config = function()
    require('bufferline').setup {
      vim.keymap.set('n', 'gt', ':BufferLineCycleNext<CR>', { noremap = false, silent = true }),
      vim.keymap.set('n', 'g<S-t>', ':BufferLineCyclePrev<CR>', { noremap = false, silent = true }),
    }
  end,
}
