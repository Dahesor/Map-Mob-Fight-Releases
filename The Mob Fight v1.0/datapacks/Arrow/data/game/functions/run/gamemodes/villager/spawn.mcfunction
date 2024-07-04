scoreboard players operation villagerTimer Data = VILLAGER.villagerSpawnTime Options

execute if score VILLAGER.super Data matches 1.. run return fail

tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"event.villager_spawned.villager_mode","color":"yellow"}]
execute as @a at @s run playsound arrow:alarm.friendly master @s ~ ~ ~ 0.8 1.5 0.8
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"event.villager_spawned.villager_mode.description","color":"green"}]

execute store result score #villager_count calculator run execute if entity @e[type=marker,tag=villager_red]
execute unless score #villager_count calculator matches 3.. run summon marker ~ ~ ~ {Tags:["villager_red","villager_marker","no_villager"],data:{display_hp:11,max_hp:0.0d}}
execute if score #villager_count calculator matches 3.. run function game:run/gamemodes/villager/reward_heal/red
execute store result score #villager_count calculator run execute if entity @e[type=marker,tag=villager_blue]
execute unless score #villager_count calculator matches 3.. run summon marker ~ ~ ~ {Tags:["villager_blue","villager_marker","no_villager"],data:{display_hp:11,max_hp:0.0d}}
execute if score #villager_count calculator matches 3.. run function game:run/gamemodes/villager/reward_heal/blue

data modify entity @e[type=marker,tag=villager_red,limit=1,tag=no_villager] Pos set from storage run map.villager.red.Pos[0]
data modify entity @e[type=marker,tag=villager_blue,limit=1,tag=no_villager] Pos set from storage run map.villager.blue.Pos[0]
function game:run/netherite/villager/rotate

execute as @e[type=marker,tag=villager_red,limit=1,tag=no_villager] at @s if entity @e[type=marker,tag=villager_red,distance=..3,tag=!no_villager] run function game:run/netherite/villager/same/fix_red
execute as @e[type=marker,tag=villager_blue,limit=1,tag=no_villager] at @s if entity @e[type=marker,tag=villager_blue,distance=..3,tag=!no_villager] run function game:run/netherite/villager/same/fix_blue

execute at @e[type=marker,tag=villager_red,limit=1,tag=no_villager] run summon villager ~ ~ ~ {Glowing:1b,Team:"red",Attributes:[{Name:'generic.knockback_resistance',Base:1.0d},{Name:'generic.max_health',Base:160.0d},{Name:'generic.movement_speed',Base:0.0d}],Health:160.0f,Tags:["villager_red","villager_marker","new_villager"],CustomNameVisible:1b,CustomName:'{"text":"██████████","color": "red"}',VillagerData:{profession:"minecraft:none"},Rotation:[90.0f,0.0f]}

execute at @e[type=marker,tag=villager_blue,limit=1,tag=no_villager] run summon villager ~ ~ ~ {Glowing:1b,Team:"blue",Attributes:[{Name:'generic.knockback_resistance',Base:1.0d},{Name:'generic.max_health',Base:160.0d},{Name:'generic.movement_speed',Base:0.0d}],Health:160.0f,Tags:["villager_blue","villager_marker","new_villager"],CustomNameVisible:1b,CustomName:'{"text":"██████████","color": "aqua"}',VillagerData:{profession:"minecraft:none"},Rotation:[-90.0f,0.0f]}

execute as @e[type=villager,tag=new_villager] run function game:run/gamemodes/villager/killed/change_hp
tag @e[type=marker,tag=villager_marker] remove no_villager