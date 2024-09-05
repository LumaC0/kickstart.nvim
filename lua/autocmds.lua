-- -- lua/autocmds.lua

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local my_augroup = augroup('MyAutocommands', { clear = true })

-- Autocommand to open Neo-tree when a new file is opened
autocmd({ 'VimEnter', 'BufWinEnter' }, {
  group = my_augroup,
  callback = function()
    if vim.bo.filetype ~= 'neo-tree' and vim.fn.argc() > 0 then
      vim.cmd 'Neotree show'
    end
  end,
})

-- Autocommand to close Neo-tree when a file closes
-- autocmd('BufWinLeave', {
--   group = my_augroup,
--   callback = function()
--     if vim.bo.filetype ~= 'neo-tree' then
--       vim.cmd 'Neotree close'
--     end
--   end,
-- })

-- Autocommand to close Neo-tree when neo-tree is the only buffer open
-- autocmd('BufEnter', {
--   group = my_augroup,
--   callback = function()
--     if #vim.fn.getbufinfo { buflisted = 1 } == 1 then
--       -- If this is the last buffer
--       if vim.bo.filetype ~= 'neo-tree' then
--         -- And it's not the Neo-tree buffer
--         vim.cmd 'Neotree close'
--       end
--     end
--   end,
-- })

-- Autocommand to close Neo-tree when a file closes
-- autocmd('BufWinLeave', {
--   group = my_augroup,
--   callback = function()
--     if vim.bo.filetype ~= 'neo-tree' then
--       vim.cmd 'Neotree close'
--     end
--   end,
-- })

-- lua/autocmds.lua

-- Function to check if we should open/close Neo-tree
-- local function manage_neotree()
--   local buffers = vim.fn.getbufinfo { buflisted = 1 }
--   local filecount = #buffers
--
--   for _, buf in ipairs(buffers) do
--     if buf.name:match 'neo%-tree filesystem' then
--       filecount = filecount - 1
--       break
--     end
--   end
--
--   if filecount > 0 then
--     vim.cmd 'Neotree show'
--   else
--     vim.cmd 'Neotree close'
--   end
-- end

-- Autocommand to manage Neo-tree when buffers change
-- autocmd({ 'BufEnter', 'BufAdd', 'BufDelete' }, {
--   group = my_augroup,
--   callback = function()
--     vim.schedule(manage_neotree)
--   end,
-- })

-- Autocommand to open Neo-tree when Neovim starts with a file
-- autocmd('VimEnter', {
--   group = my_augroup,
--   callback = function()
--     if vim.fn.argc() > 0 then
--       vim.cmd 'Neotree show'
--     end
--   end,
-- })
