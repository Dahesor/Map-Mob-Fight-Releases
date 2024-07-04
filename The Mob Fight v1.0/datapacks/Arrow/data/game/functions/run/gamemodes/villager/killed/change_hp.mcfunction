execute store result entity @s Attributes[{Name:'minecraft:generic.max_health'}].Base double 1 run scoreboard players get VILLAGER.BaseHealth Options
execute if score destroyMode Data matches 1.. store result entity @s Attributes[{Name:'minecraft:generic.max_health'}].Base double 1.5 run scoreboard players get VILLAGER.BaseHealth Options

execute store result entity @s Health float 1 run attribute @s generic.max_health get

attribute @s minecraft:generic.armor base set 8
execute as @e[type=marker,tag=no_villager] store result entity @s data.max_hp double 1 run attribute @e[type=villager,tag=new_villager,limit=1] generic.max_health get
tag @s remove new_villager