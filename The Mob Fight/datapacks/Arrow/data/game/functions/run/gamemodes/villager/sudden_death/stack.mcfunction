summon marker ~ ~ ~ {Tags:["villager_red","villager_marker","no_villager","super_villager"],data:{display_hp:11,max_hp:320.0d,suuid:""}}
summon marker ~ ~ ~ {Tags:["villager_blue","villager_marker","no_villager","super_villager"],data:{display_hp:11,max_hp:320.0d,suuid:""}}
data modify entity @e[type=marker,tag=villager_red,limit=1,tag=no_villager] Pos set from storage run map.villager.red.Pos[0]
data modify entity @e[type=marker,tag=villager_blue,limit=1,tag=no_villager] Pos set from storage run map.villager.blue.Pos[0]
function game:run/netherite/villager/rotate
execute at @e[type=marker,tag=villager_red,limit=1,tag=no_villager] run summon villager ~ ~ ~ {Glowing:1b,Team:"red",Attributes:[{Name:'generic.knockback_resistance',Base:1.0d},{Name:'generic.max_health',Base:320.0d},{Name:'generic.movement_speed',Base:0.0d}],Health:320.0f,Tags:["villager_red","villager_marker","new_villager","super_villager"],CustomNameVisible:1b,CustomName:'{"text":"██████████","color": "red"}',VillagerData:{profession:"minecraft:none"},Rotation:[90.0f,0.0f],ArmorItems:[{},{},{id:"diamond_chestplate",Count:1b,tag:{Enchantments:[{id:"blast_protection",lvl:10}]}},{}]}
execute at @e[type=marker,tag=villager_blue,limit=1,tag=no_villager] run summon villager ~ ~ ~ {Glowing:1b,Team:"blue",Attributes:[{Name:'generic.knockback_resistance',Base:1.0d},{Name:'generic.max_health',Base:320.0d},{Name:'generic.movement_speed',Base:0.0d}],Health:320.0f,Tags:["villager_blue","villager_marker","new_villager","super_villager"],CustomNameVisible:1b,CustomName:'{"text":"██████████","color": "aqua"}',VillagerData:{profession:"minecraft:none"},Rotation:[-90.0f,0.0f],ArmorItems:[{},{},{id:"diamond_chestplate",Count:1b,tag:{Enchantments:[{id:"blast_protection",lvl:10}]}},{}]}

data modify storage run suuid set value ["",""]
execute as @e[type=villager,tag=new_villager] run function game:run/gamemodes/villager/sudden_death/stack_hp_modify
data modify entity @e[type=marker,limit=1,tag=no_villager,tag=villager_red] data.suuid set from storage run suuid[0]
data modify entity @e[type=marker,limit=1,tag=no_villager,tag=villager_blue] data.suuid set from storage run suuid[1]

tag @e[type=marker,tag=villager_marker] remove no_villager