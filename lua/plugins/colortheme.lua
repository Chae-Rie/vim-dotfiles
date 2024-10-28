--- Its important to let the file here returns what we usually would just have been inside of the
--- init.lua file... Instead of polluting the init.lua file we can make it more modular
--- and seperate all the needed plugins into seperate files
---
--- It's very much calling "require 'plugins/nameofpluginfileWithoutExtension' at the position you otherwise
--- would have the config been and thats it.
return {

	--- Setting up my favorite colorscheme in the favorite flavour
	'catppuccin/nvim',
	priority = 1000,
	flavour = 'Macchiato', 
	lazy = false,
	init = function()
		vim.cmd.colorscheme 'catppuccin-Macchiato'
	end
}
--- test
