function game:run/gamemodes/thunder/events/ticker

execute if score visible red matches 1.. run scoreboard players remove visible red 1
execute if score visible blue matches 1.. run scoreboard players remove visible blue 1
execute if score visible red matches 0 run function game:run/gamemodes/thunder/group/red_dark
execute if score visible blue matches 0 run function game:run/gamemodes/thunder/group/blue_dark

execute if data storage thunder:event light[0].id unless data storage thunder:event current run function game:run/gamemodes/thunder/events/interpret/read