#macro: $(id)
scoreboard players set #holder data.sidebar.dah 0
$scoreboard players set #holder data.sidebar.dah $(id)
execute unless score #holder data.sidebar.dah matches -1..16 run return fail
execute if score #holder data.sidebar.dah matches 0 run return fail
scoreboard players operation @s data.sidebar.dah = #holder data.sidebar.dah
execute if score @s data.sidebar.dah matches -1 run return run function sidebar.dah:assign/generic
function sidebar.dah:private/assignments/teams
return 1