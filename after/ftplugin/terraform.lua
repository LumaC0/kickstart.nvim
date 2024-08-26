-- creates comment pattern for terraform files
-- https://neovim.discourse.group/t/commentstring-for-terraform-files-not-set/4066/3
-- vim.api.nvim_create_autocmd('FileType', {
--   group = vim.api.nvim_create_augroup('FixTerraformCommentString', { clear = true }),
--   callback = function(ev)
--     vim.bo[ev.buf].commentstring = '# %s'
--   end,
--   pattern = { 'terraform', 'hcl' },
-- })
vim.opt_local.commentstring = '# %s'
