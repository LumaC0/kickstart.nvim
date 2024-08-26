local function add_shell_header()
  -- Check if the file is new and empty
  if vim.fn.line '$' == 1 and vim.fn.getline(1) == '' then
    -- Add the shebang and set options to the beginning of the file
    vim.api.nvim_buf_set_lines(0, 0, 0, false, {
      '#!/usr/bin/env bash',
      '',
      '# -e         stop on errors',
      '# -u         stop on unset variables',
      '# -opipefile fail the pipeline if any segment fails',
      'set -euo pipefail',
      '',
      '',
    })

    -- Move the cursor to the empty line after the set options
    vim.api.nvim_win_set_cursor(0, { 8, 0 })

    -- Enter insert mode
    vim.cmd 'startinsert'
  end
end

-- Create an autocommand that runs when a shell script is created
vim.api.nvim_create_autocmd('BufNewFile', {
  pattern = { '*.sh', '*.bash', '*.zsh' },
  callback = add_shell_header,
})

-- Optionally, you can also run this for BufRead in case you want to add the header to existing empty files
vim.api.nvim_create_autocmd('BufRead', {
  pattern = { '*.sh', '*.bash', '*.zsh' },
  callback = add_shell_header,
})
