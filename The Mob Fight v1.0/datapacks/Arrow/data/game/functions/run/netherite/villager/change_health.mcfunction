execute if score destroyMode Data matches 1.. run attribute @s minecraft:generic.max_health base set 300.0
execute if score destroyMode Data matches 1.. run data modify entity @s Health set value 300.0f
execute if score crazyMode Data matches 1.. run attribute @s minecraft:generic.max_health base set 380.0
execute if score crazyMode Data matches 1.. run data modify entity @s Health set value 380.0f

attribute @s minecraft:generic.armor base set 8
execute as @e[type=marker,tag=no_villager] store result entity @s data.max_hp double 1 run attribute @e[type=villager,tag=new_villager,limit=1] generic.max_health get

tag @s remove new_villager