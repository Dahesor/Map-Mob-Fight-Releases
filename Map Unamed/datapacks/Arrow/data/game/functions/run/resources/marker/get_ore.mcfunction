summon marker 0 1 0 {Tags:["rnnds"]}
execute store result score #RUUID calculator run data get entity @e[limit=1,type=marker,tag=rnnds] UUID[2]
kill @e[type=marker,tag=rnnds]
scoreboard players operation #RUUID calculator %= #100 calculator
execute if score #RUUID calculator matches ..20 run setblock ~ ~ ~ copper_ore
execute if score #RUUID calculator matches 21..40 run setblock ~ ~ ~ iron_ore
execute if score #RUUID calculator matches 41..60 run setblock ~ ~ ~ gold_ore
execute if score #RUUID calculator matches 61..68 run setblock ~ ~ ~ diamond_ore
execute if score #RUUID calculator matches 69..87 run setblock ~ ~ ~ lapis_ore
execute if score #RUUID calculator matches 88..100 run setblock ~ ~ ~ nether_quartz_ore