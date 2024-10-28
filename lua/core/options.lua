--- Here are the global main options

--- some options which are all related to editing
vim.wo.number = true -- turn on linenumbers
vim.o.relativenumber = true  --- make the linenumbers relativ
vim.opt.cursorline = true -- Display the line of the cursor slightly indented
vim.o.wrap = false --- Display the lines in a long line
vim.o.linebreak = true --- Dont split words
vim.o.autoindent = true --- copy the indentation from the current line into the new one
vim.o.showmode = false --- dont show INSERT/NORMAL/COMMAND in vimstile, we use the lualine plugin for it
--- those two options are related to each other, they will make search inside
--- the vim buffer insensitive except when there are capital letters used
vim.o.ignorecase = true
vim.o.smartcase = true

--- mouse mode on
vim.opt.mouse = 'a'

--- make space the leaderkey
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--- makes clipboard globally useable after yanking
vim.o.clipboard = 'unnamedplus' 

vim.opt.termguicolors = true --- enable highlighting groups in the terminal

vim.o.shiftwidth = 4 --- 
vim.o.expandtab = true --- use spaces instead of tabs
vim.o.tabstop = 4 --- 4 spaces == 1 tab
vim.o.smartindent = true --- smart indenting

vim.o.splitbelow = true --- horizontal windows are splitted under the current window
vim.o.splitright = true --- vertical windows are splitted to the right

vim.o.conceallevel = 0 --- makes `` visible

vim.o.fileencoding = 'utf-8' --- encoding written to a file
vim.opt.iskeyword:append '-' -- hyphenated words recognized by searches

vim.o.cmdheight = 1 --- gives nvim command line more space to show longer messages
