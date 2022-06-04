fx_version 'bodacious'
game 'gta5'

ui_page "nui/ui.html"

shared_script {
    '@vrp/lib/utils.lua',
    'config.lua'
}

client_scripts {
	"client.lua"
}

server_scripts {
	"server.lua"
}

files {
	"nui/images/*.png",
	"nui/ui.html",     
	"nui/ui.css",
	"nui/ui.js"
}