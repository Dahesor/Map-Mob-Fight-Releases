#macro: $(id)

scoreboard players set #holder data.sidebar.dah 0
$scoreboard players set #holder data.sidebar.dah $(id)

execute unless score #holder data.sidebar.dah matches -1..16 run return fail
execute if score #holder data.sidebar.dah matches 0 run return fail

execute if score #holder data.sidebar.dah matches -1 run scoreboard objectives setdisplay sidebar sidebar.GENERIC.dah
execute if score #holder data.sidebar.dah matches 1 run scoreboard objectives setdisplay sidebar.team.aqua sidebar.AQUA.dah
execute if score #holder data.sidebar.dah matches 2 run scoreboard objectives setdisplay sidebar.team.blue sidebar.BLUE.dah
execute if score #holder data.sidebar.dah matches 3 run scoreboard objectives setdisplay sidebar.team.dark_aqua sidebar.DARK_AQUA.dah
execute if score #holder data.sidebar.dah matches 4 run scoreboard objectives setdisplay sidebar.team.dark_blue sidebar.DARK_BLUE.dah
execute if score #holder data.sidebar.dah matches 5 run scoreboard objectives setdisplay sidebar.team.dark_gray sidebar.DARK_GRAY.dah
execute if score #holder data.sidebar.dah matches 6 run scoreboard objectives setdisplay sidebar.team.dark_green sidebar.DARK_GREEN.dah
execute if score #holder data.sidebar.dah matches 7 run scoreboard objectives setdisplay sidebar.team.dark_purple sidebar.DARK_PURPLE.dah
execute if score #holder data.sidebar.dah matches 8 run scoreboard objectives setdisplay sidebar.team.dark_red sidebar.DARK_RED.dah
execute if score #holder data.sidebar.dah matches 9 run scoreboard objectives setdisplay sidebar.team.gold sidebar.GOLD.dah
execute if score #holder data.sidebar.dah matches 10 run scoreboard objectives setdisplay sidebar.team.gray sidebar.GRAY.dah
execute if score #holder data.sidebar.dah matches 11 run scoreboard objectives setdisplay sidebar.team.green sidebar.GREEN.dah
execute if score #holder data.sidebar.dah matches 12 run scoreboard objectives setdisplay sidebar.team.light_purple sidebar.LIGHT_PURPLE.dah
execute if score #holder data.sidebar.dah matches 13 run scoreboard objectives setdisplay sidebar.team.red sidebar.RED.dah
execute if score #holder data.sidebar.dah matches 14 run scoreboard objectives setdisplay sidebar.team.white sidebar.WHITE.dah
execute if score #holder data.sidebar.dah matches 15 run scoreboard objectives setdisplay sidebar.team.yellow sidebar.YELLOW.dah
execute if score #holder data.sidebar.dah matches 16 run scoreboard objectives setdisplay sidebar.team.black sidebar.BLACK.dah
execute if score #holder data.sidebar.dah matches -1 run scoreboard objectives setdisplay sidebar sidebar.GENERIC.dah