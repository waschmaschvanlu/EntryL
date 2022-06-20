fx_version 'cerulean'
game 'gta5'

name "LEntrz"
description "An Entry script"
author "Ludaro"
version "1.0"


client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua',
	'@mysql-async/lib/MySQL.lua'
}

shared_scripts {
	'config.lua'
}
