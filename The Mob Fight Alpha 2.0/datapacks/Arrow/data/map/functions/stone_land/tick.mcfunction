execute if score #map$stoneland$red_water calculator matches 1.. run scoreboard players remove #map$stoneland$red_water calculator 1
execute if score #map$stoneland$blue_water calculator matches 1.. run scoreboard players remove #map$stoneland$blue_water calculator 1

execute if score #map$stoneland$red_water calculator matches 1 run fill 38 45 9 38 46 9 redstone_block
execute if score #map$stoneland$blue_water calculator matches 1 run fill -38 45 -10 -38 46 -10 redstone_block
execute as @a[tag=mapStoneLand.sound2] at @s run playsound ui.button.click player @s ~ ~ ~ 1 1
tag @a[tag=mapStoneLand.sound2] remove mapStoneLand.sound
tag @a[tag=mapStoneLand.sound2] remove mapStoneLand.sound2
tag @a[tag=mapStoneLand.sound] add mapStoneLand.sound2

execute if score #loop_20 calculator matches 2 run function map:stone_land/second