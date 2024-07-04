scoreboard players set @s genericCD -200
tag @s add temp.dancer
scoreboard players set !count calculator 0
execute as @e[type=zombie,tag=dancer_child,distance=..18] if score @s match = @e[type=husk,tag=dancer,limit=1,tag=temp.dancer] match run scoreboard players add !count calculator 1
scoreboard players set @s calculator 4
scoreboard players operation @s calculator -= !count calculator
scoreboard players reset !count

execute as @e[type=zombie,tag=dancer_child] if score @s match = @e[type=husk,tag=dancer,limit=1,tag=temp.dancer] match run scoreboard players add !count calculator 1
execute if score !count calculator matches 10.. run scoreboard players set @s calculator 0
scoreboard players reset !count
tag @s remove temp.dancer

#define tag dancer_child
#define tag temp.dancer
execute if score @s calculator matches 1.. run playsound block.bell.use hostile @a ~ ~ ~ 1 0.7
execute if score @s calculator matches 1.. rotated ~ 0 positioned ^ ^ ^1 run function game:run/mob_tick/dancer/data
execute if score @s calculator matches 2.. rotated ~ 0 positioned ^1 ^ ^ run function game:run/mob_tick/dancer/data
execute if score @s calculator matches 3.. rotated ~ 0 positioned ^ ^ ^-1 run function game:run/mob_tick/dancer/data
execute if score @s calculator matches 4.. rotated ~ 0 positioned ^-1 ^ ^ run function game:run/mob_tick/dancer/data
scoreboard players operation @e[type=zombie,tag=dancer_child,tag=temp.dancer] match = @s match
tag @e[type=zombie,tag=dancer_child,tag=temp.dancer] remove temp.dancer