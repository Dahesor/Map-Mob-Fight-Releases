#macro: $(id)
scoreboard players set #holder data.sidebar.dah 0
$scoreboard players set #holder data.sidebar.dah $(id)

execute if score #holder data.sidebar.dah matches 0 run return fail
execute unless score #holder data.sidebar.dah matches -1..16 run return fail

function sidebar.dah:private/process/get_sidebar
function sidebar.dah:private/process/parse_input