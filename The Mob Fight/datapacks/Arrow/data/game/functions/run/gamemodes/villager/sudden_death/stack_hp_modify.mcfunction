execute store result entity @s Attributes[{Name:'minecraft:generic.max_health'}].Base double 2 run scoreboard players get VILLAGER.BaseHealth Options
tag @s remove new_villager

function gu:generate
execute if entity @s[tag=villager_red] run data modify storage run suuid[0] set from storage gu:main out
execute if entity @s[tag=villager_blue] run data modify storage run suuid[1] set from storage gu:main out