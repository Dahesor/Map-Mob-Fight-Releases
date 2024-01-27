#{light:1b,time:10,speed_change:0b}

execute store result score #thunder calculator run data get storage thunder:event current.moves[0].speed_change
execute if score #thunder calculator matches 0 run scoreboard players set #thunder_u calculator 1

execute store result score #thunder calculator run data get storage thunder:event current.moves[0].light
execute if score #thunder calculator matches 1 run function game:run/gamemodes/thunder/group/all_light
execute if score #thunder calculator matches 0 run function game:run/gamemodes/thunder/group/all_dark
scoreboard players reset #thunder_u

execute store result score #thunder calculator run data get storage thunder:event current.moves[0].time
scoreboard players remove #thunder calculator 1
execute store result storage thunder:event current.moves[0].time int 1 run scoreboard players get #thunder calculator

#THIS
execute if score #thunder calculator matches 1.. run schedule function game:run/gamemodes/thunder/events/interpret/load 1t

execute unless score #thunder calculator matches 1.. run data remove storage thunder:event current.moves[0]
execute unless score #thunder calculator matches 1.. run function game:run/gamemodes/thunder/events/interpret/operate