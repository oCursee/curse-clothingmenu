resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

Author 'Curse'
client_scripts{
    "src/nui.lua",
    "src/clientRS.lua",
    "src/functions.lua",
    "config.lua"
} 
server_scripts{
    'config.lua',
}

ui_page "html/index.html"
files {
    'html/index.html',
    'html/index.js',
    'html/index.css',
    'html/reset.css',
    'html/images/*.png'
}
