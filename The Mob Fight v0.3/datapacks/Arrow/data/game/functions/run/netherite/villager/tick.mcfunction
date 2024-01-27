scoreboard players remove villagerTimer Data 1
execute if score villagerTimer Data matches ..0 run function game:run/netherite/villager/spawn

execute as @e[type=villager,tag=villager_red] at @s at @e[type=marker,tag=villager_red,limit=1,sort=nearest] rotated as @s run tp @s ~ ~ ~ ~ ~
execute as @e[type=villager,tag=villager_blue] at @s at @e[type=marker,tag=villager_blue,limit=1,sort=nearest] rotated as @s run tp @s ~ ~ ~ ~ ~
execute if score #loop_3 calculator matches 2 as @e[type=marker,tag=villager_marker] at @s run function game:run/netherite/villager/marker/main

kill @e[nbt={CustomNameVisible:1b},type=zombie_villager]

scoreboard players remove showWarning red 1
scoreboard players remove showWarning blue 1
execute if entity @e[type=marker,tag=villager_blue,scores={genericCD=1..}] run scoreboard players set showWarning blue 30
execute if entity @e[type=marker,tag=villager_red,scores={genericCD=1..}] run scoreboard players set showWarning red 30

execute if score showWarning blue matches 1.. if score #loop_20 calculator matches 1 as @a[team=blue] at @s run playsound minecraft:block.note_block.cow_bell record @s ~ ~ ~ 0.4 0.5
execute if score showWarning red matches 1.. if score #loop_20 calculator matches 1 as @a[team=red] at @s run playsound minecraft:block.note_block.cow_bell record @s ~ ~ ~ 0.4 0.5
