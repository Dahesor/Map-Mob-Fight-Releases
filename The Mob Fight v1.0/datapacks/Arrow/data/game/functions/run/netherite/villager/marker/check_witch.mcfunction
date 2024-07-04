execute unless entity @e[type=witch,limit=1,sort=nearest,distance=..4,nbt={CustomNameVisible:1b}] run return run function game:run/netherite/villager/marker/dead
tp @e[type=witch,limit=1,sort=nearest,distance=..4,nbt={CustomNameVisible:1b}] ~ -350 ~
execute if entity @s[tag=villager_red] run summon villager ~ ~ ~ {Glowing:1b,Team:"red",Attributes:[{Name:'generic.knockback_resistance',Base:1.0d},{Name:'generic.max_health',Base:200.0d},{Name:'generic.movement_speed',Base:0.0d}],Health:200.0f,Tags:["villager_red","villager_marker","new_villager"],CustomNameVisible:1b,CustomName:'{"text":"██████████","color": "red"}',VillagerData:{profession:"minecraft:none"},Rotation:[90.0f,0.0f]}

execute if entity @s[tag=villager_blue] run summon villager ~ ~ ~ {Glowing:1b,Team:"blue",Attributes:[{Name:'generic.knockback_resistance',Base:1.0d},{Name:'generic.max_health',Base:200.0d},{Name:'generic.movement_speed',Base:0.0d}],Health:200.0f,Tags:["villager_blue","villager_marker","new_villager"],CustomNameVisible:1b,CustomName:'{"text":"██████████","color": "aqua"}',VillagerData:{profession:"minecraft:none"},Rotation:[-90.0f,0.0f]}

execute store result score #x calculator run data get entity @s data.max_hp 100
execute store result score @s calculator run data get entity @s data.display_hp
scoreboard players operation #x calculator *= @s calculator
scoreboard players operation #x calculator /= #10 calculator
execute store result entity @e[limit=1,type=villager,tag=new_villager] Attributes[{Name:'minecraft:generic.max_health'}].Base double 1 run data get entity @s data.max_hp
execute store result entity @e[limit=1,type=villager,tag=new_villager] Health float 0.01 run scoreboard players get #x calculator
data merge entity @s {data:{display_hp:11}}
function game:run/netherite/villager/marker/main