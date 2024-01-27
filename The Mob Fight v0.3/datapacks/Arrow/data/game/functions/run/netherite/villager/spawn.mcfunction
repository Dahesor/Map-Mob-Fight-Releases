scoreboard players operation villagerTimer Data = villagerSpawnTime Options

execute store result score #villager_count calculator run execute if entity @e[type=marker,tag=villager_red]
execute unless score #villager_count calculator matches 3.. run summon marker ~ ~ ~ {Tags:["villager_red","villager_marker","no_villager"]}
execute store result score #villager_count calculator run execute if entity @e[type=marker,tag=villager_blue]
execute unless score #villager_count calculator matches 3.. run summon marker ~ ~ ~ {Tags:["villager_blue","villager_marker","no_villager"]}

data modify entity @e[type=marker,tag=villager_red,limit=1,tag=no_villager] Pos set from storage run map.villager.red.Pos[0]
data modify entity @e[type=marker,tag=villager_blue,limit=1,tag=no_villager] Pos set from storage run map.villager.blue.Pos[0]
function game:run/netherite/villager/rotate

execute at @e[type=marker,tag=villager_red,limit=1,tag=no_villager] run summon villager ~ ~ ~ {Glowing:1b,Team:"red",Attributes:[{Name:'generic.knockback_resistance',Base:1.0d},{Name:'generic.max_health',Base:200.0d},{Name:'generic.movement_speed',Base:0.0d}],Health:200.0f,Tags:["villager_red","villager_marker","new_villager"],CustomNameVisible:1b,CustomName:'{"text":"██████████","color": "red"}',VillagerData:{profession:"minecraft:none"},Rotation:[90.0f,0.0f]}

execute at @e[type=marker,tag=villager_blue,limit=1,tag=no_villager] run summon villager ~ ~ ~ {Glowing:1b,Team:"blue",Attributes:[{Name:'generic.knockback_resistance',Base:1.0d},{Name:'generic.max_health',Base:200.0d},{Name:'generic.movement_speed',Base:0.0d}],Health:200.0f,Tags:["villager_blue","villager_marker","new_villager"],CustomNameVisible:1b,CustomName:'{"text":"██████████","color": "aqua"}',VillagerData:{profession:"minecraft:none"},Rotation:[-90.0f,0.0f]}

execute as @e[type=villager,tag=new_villager] run function game:run/netherite/villager/change_health

tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"event.villager_spawned","color":"yellow"}]
execute as @a at @s run playsound arrow:alarm.friendly master @s ~ ~ ~ 0.8 1.5 0.8
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"event.villager_spawned.description","color":"green"}]

tag @e[type=marker,tag=villager_marker] remove no_villager