fx_version 'adamant'
game 'gta5'

name 'koth-ui'
dependency "chat"

ui_page 'dist/index.html'

files {
	'dist/main.js',
  'dist/index.html',
  'img/*',
  'dist/*.png',
  "chat-design-v1.css",
}

client_scripts {
	'client.lua'
}

chat_theme "chat-design-v1" {
    styleSheet = "chat-design-v1.css"
}

export 'SendUIMessage'
