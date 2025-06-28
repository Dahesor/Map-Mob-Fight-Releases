#macro: $(id)

scoreboard players set #holder data.sidebar.dah 0
$scoreboard players set #holder data.sidebar.dah $(id)

execute unless score #holder data.sidebar.dah matches -1..16 run return fail
execute if score #holder data.sidebar.dah matches 0 run return fail

execute if score #holder data.sidebar.dah matches -1 run scoreboard objectives setdisplay sidebar
execute if score #holder data.sidebar.dah matches 1 run scoreboard objectives setdisplay sidebar.team.aqua
execute if score #holder data.sidebar.dah matches 2 run scoreboard objectives setdisplay sidebar.team.blue
execute if score #holder data.sidebar.dah matches 3 run scoreboard objectives setdisplay sidebar.team.dark_aqua
execute if score #holder data.sidebar.dah matches 4 run scoreboard objectives setdisplay sidebar.team.dark_blue
execute if score #holder data.sidebar.dah matches 5 run scoreboard objectives setdisplay sidebar.team.dark_gray
execute if score #holder data.sidebar.dah matches 6 run scoreboard objectives setdisplay sidebar.team.dark_green
execute if score #holder data.sidebar.dah matches 7 run scoreboard objectives setdisplay sidebar.team.dark_purple
execute if score #holder data.sidebar.dah matches 8 run scoreboard objectives setdisplay sidebar.team.dark_red
execute if score #holder data.sidebar.dah matches 9 run scoreboard objectives setdisplay sidebar.team.gold
execute if score #holder data.sidebar.dah matches 10 run scoreboard objectives setdisplay sidebar.team.gray
execute if score #holder data.sidebar.dah matches 11 run scoreboard objectives setdisplay sidebar.team.green
execute if score #holder data.sidebar.dah matches 12 run scoreboard objectives setdisplay sidebar.team.light_purple
execute if score #holder data.sidebar.dah matches 13 run scoreboard objectives setdisplay sidebar.team.red
execute if score #holder data.sidebar.dah matches 14 run scoreboard objectives setdisplay sidebar.team.white
execute if score #holder data.sidebar.dah matches 15 run scoreboard objectives setdisplay sidebar.team.yellow
execute if score #holder data.sidebar.dah matches 16 run scoreboard objectives setdisplay sidebar.team.black
execute if score #holder data.sidebar.dah matches -1 run scoreboard objectives setdisplay sidebar