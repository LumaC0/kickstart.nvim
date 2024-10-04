return {
  'vimwiki/vimwiki',
  init = function()
    local home = vim.env.HOME
    vim.g.vimwiki_list = {
      {
        path = '~/vimwiki/',
        syntax = 'markdown',
        ext = '.md',
      },
    }

    vim.g.vimwiki_global_ext = 0
    -- set custom wiki2html converter
    vim.g.vimwiki_custom_wiki2html = home .. '/vimwiki/customwiki2html.py'
    -- append .md file extension for markdown
    vim.g.vimwiki_markdown_link_ext = 1
    -- set path of customwiki2html output files
    vim.g.vimiwiki_path_html = home .. '/vimwiki/html/'
    -- set path of style.css file for customwiki2html
    vim.g.vimwiki_css_name = home .. '/vimwiki/style.css'
  end,
}
