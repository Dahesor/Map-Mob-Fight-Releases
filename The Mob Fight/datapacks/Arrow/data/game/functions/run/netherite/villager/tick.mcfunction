scoreboard players remove villagerTimer Data 1
execute if score villagerTimer Data matches ..0 run function game:run/netherite/villager/spawn

execute as @e[type=villager,tag=villager_marker] at @s run function game:run/netherite/villager/tp_self

execute if score #loop_10 calculator matches 2 run data modify storage run vil set value {red:[],blue:[]}
execute if score #loop_10 calculator matches 2 as @e[type=marker,tag=villager_marker,sort=nearest] at @s run function game:run/netherite/villager/marker/main

kill @e[nbt={CustomNameVisible:1b},type=zombie_villager]

function game:run/netherite/villager/warning/check