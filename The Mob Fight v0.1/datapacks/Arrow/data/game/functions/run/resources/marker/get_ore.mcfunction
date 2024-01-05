execute if block ~ ~ ~ deepslate[axis=x] run data merge entity @s {data:{deepslate:1b,axis:"x"}}
execute if block ~ ~ ~ deepslate[axis=y] run data merge entity @s {data:{deepslate:1b,axis:"y"}}
execute if block ~ ~ ~ deepslate[axis=z] run data merge entity @s {data:{deepslate:1b,axis:"z"}}
summon marker 0 1 0 {Tags:["rnnds"]}
execute store result score #RUUID calculator run data get entity @e[limit=1,type=marker,tag=rnnds] UUID[2]
kill @e[type=marker,tag=rnnds]
scoreboard players operation #RUUID calculator %= #100 calculator
execute if score #RUUID calculator matches ..22 run setblock ~ ~ ~ copper_ore
execute if score #RUUID calculator matches 23..44 run setblock ~ ~ ~ iron_ore
execute if score #RUUID calculator matches 45..65 run setblock ~ ~ ~ gold_ore
execute if score #RUUID calculator matches 66..80 run setblock ~ ~ ~ diamond_ore
execute if score #RUUID calculator matches 81..100 run setblock ~ ~ ~ lapis_ore
execute if score #RUUID calculator matches ..22 if entity @s[nbt={data:{deepslate:1b}}] run setblock ~ ~ ~ deepslate_copper_ore
execute if score #RUUID calculator matches 23..44 if entity @s[nbt={data:{deepslate:1b}}] run setblock ~ ~ ~ deepslate_iron_ore
execute if score #RUUID calculator matches 45..65 if entity @s[nbt={data:{deepslate:1b}}] run setblock ~ ~ ~ deepslate_gold_ore
execute if score #RUUID calculator matches 66..81 if entity @s[nbt={data:{deepslate:1b}}] run setblock ~ ~ ~ deepslate_diamond_ore
execute if score #RUUID calculator matches 82..100 if entity @s[nbt={data:{deepslate:1b}}] run setblock ~ ~ ~ deepslate_lapis_ore