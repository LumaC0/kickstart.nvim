-- set the fold method to indent for python files only
-- the global default is foldmethod=marker ("\{\{\{")
vim.opt_local.foldenable = false
vim.opt_local.foldmethod = 'indent'
vim.opt_local.foldlevelstart = 99

-- format options for python files
vim.opt_local.expandtab = true
vim.opt_local.shiftwidth = 4
vim.opt_local.tabstop = 4
vim.opt_local.softtabstop = 4
vim.opt_local.textwidth = 88
vim.opt_local.autoindent = true
vim.opt_local.fileformat = 'unix'
vim.opt_local.textwidth = 88
vim.opt_local.formatoptions = vim.opt_local.formatoptions
  - 't' -- Don't auto-wrap text using textwidth
  + 'c' -- Auto-wrap comments using textwidth
  + 'r' -- Auto-insert the current comment leader after hitting <Enter>
  - 'o' -- Don't auto-insert comment leader after hitting 'o' or 'O'
  + 'q' -- Allow formatting of comments with "gq"
  - 'a' -- Don't auto-format paragraphs
  + 'n' -- Recognize numbered lists
  + 'j' -- Remove comment leader when joining lines
