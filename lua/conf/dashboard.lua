local home = os.getenv('HOME')
local db = require('dashboard')
db.preview_command = 'cat | lolcat -F 0.3'
db.preview_file_path = home .. '/.config/nvim/lua/conf/db.cat'
db.preview_file_height = 12
db.preview_file_width = 80
db.custom_center = {
	{icon = '  ',
	desc = 'Find  File                              ',
	action = 'Telescope find_files find_command=rg,--hidden,--files',
	shortcut = 'SPC f f'},
	{icon = '  ',
	desc = 'Recently opened files                   ',
	action =  'DashboardFindHistory',
	shortcut = 'SPC f o'},
	{icon = '  ',
	desc = 'Find  Word                              ',
	action = 'Telescope live_grep',
	shortcut = 'SPC f w'},
}

