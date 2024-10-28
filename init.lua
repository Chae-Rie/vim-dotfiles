require 'core.options'
require 'core.keymaps'
--- Initializing 
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

--- Here we add all the plugin code snippets we want to have installed
--- The code in the topside is to setup the pluginmanager itself
 --- here you can just add plugins, whether as a whole code block or as a require 'plugins.pluginname' call

require('lazy').setup({
    require 'plugins.neotree',              --- for moving between files like in a explorer
    require 'plugins.colortheme',           --- make it pretty
    require 'plugins.bufferline',           --- make the files be opened in buffers / tabs so it's easier to work with different files
    require 'plugins.lualine',              --- show a pretty statusline with lots of additional informations
    require 'plugins.treesitter',           --- shows syntax and highlighting, parsing different types accordingly
    require 'plugins.telescope',            --- fuzzy finder for files and stuff, VERY handy
    require 'plugins.lsp',                  --- Language server for the different languages, linters, formatters, bla bla bla
    require 'plugins.autocompletion',       --- live autocompletion
    require 'plugins.gitsigns',             --- nice viusals for working with git
    require 'plugins.indent_blankline',     --- nice visuals for indicating the indentation
    require 'plugins.misc',                 --- standalone plugins with very less configuration
    require 'plugins.nvim-dap',
    require 'plugins.nvim-dap-ui'
}) --- end setup
