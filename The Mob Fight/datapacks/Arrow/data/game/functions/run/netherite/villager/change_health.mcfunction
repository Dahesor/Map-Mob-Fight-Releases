execute if score destroyMode Data matches 1.. run attribute @s minecraft:generic.max_health base set 300.0
execute if score destroyMode Data matches 1.. run data modify entity @s Health set value 300.0f
execute if score crazyMode Data matches 1.. run attribute @s minecraft:generic.max_health base set 380.0
execute if score crazyMode Data matches 1.. run data modify entity @s Health set value 380.0f

attribute @s minecraft:generic.armor base set 7
execute as @e[type=marker,tag=no_villager] store result entity @s data.max_hp double 1 run attribute @e[type=villager,tag=new_villager,limit=1] generic.max_health get

tag @s remove new_villager

function gu:generate
execute if entity @s[tag=villager_red] run data modify storage run suuid[0] set from storage gu:main out
execute if entity @s[tag=villager_blue] run data modify storage run suuid[1] set from storage gu:main out