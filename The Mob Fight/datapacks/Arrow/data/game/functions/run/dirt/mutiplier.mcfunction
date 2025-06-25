scoreboard players set dirtTime calculator 40
execute store result score player calculator run execute if entity @a[tag=!spectator]
#scoreboard players set player calculator 15

execute if score player calculator matches 17.. run scoreboard players set dirtTime calculator 5
execute if score player calculator matches 14..16 run scoreboard players set dirtTime calculator 7
execute if score player calculator matches 11..13 run scoreboard players set dirtTime calculator 9
execute if score player calculator matches 9..10 run scoreboard players set dirtTime calculator 12
execute if score player calculator matches 7..8 run scoreboard players set dirtTime calculator 17
execute if score player calculator matches 5..6 run scoreboard players set dirtTime calculator 24
execute if score player calculator matches 3..4 run scoreboard players set dirtTime calculator 30

execute if data storage developer:data {dirtSpeed:0.5f} run scoreboard players operation dirtTime calculator *= #2 calculator
execute if data storage developer:data {dirtSpeed:1.5f} run scoreboard players operation dirtTime calculator *= #2 calculator
execute if data storage developer:data {dirtSpeed:1.5f} run scoreboard players operation dirtTime calculator /= #3 calculator
execute if data storage developer:data {dirtSpeed:2f} run scoreboard players operation dirtTime calculator /= #5 calculator

scoreboard players operation dirtTime red = dirtTime calculator
scoreboard players operation dirtTime blue = dirtTime calculator