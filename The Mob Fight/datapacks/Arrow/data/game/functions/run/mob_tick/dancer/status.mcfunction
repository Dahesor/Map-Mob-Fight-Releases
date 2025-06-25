tag @s add temp.dancer
scoreboard players set !count calculator 0
execute as @e[type=zombie,tag=dancer_child,distance=..8] if score @s match = @e[type=husk,tag=dancer,limit=1,tag=temp.dancer] match run scoreboard players add !count calculator 1
tag @s remove temp.dancer
scoreboard players operation @s calculator = !count calculator


execute if score @s calculator matches ..0 run data modify entity @s Attributes[{Name:"minecraft:generic.knockback_resistance"}].Base set value 0.2
execute if score @s calculator matches 1 run data modify entity @s Attributes[{Name:"minecraft:generic.knockback_resistance"}].Base set value 0.4
execute if score @s calculator matches 2 run data modify entity @s Attributes[{Name:"minecraft:generic.knockback_resistance"}].Base set value 0.7
execute if score @s calculator matches 3.. run data modify entity @s Attributes[{Name:"minecraft:generic.knockback_resistance"}].Base set value 0.7

execute if score @s calculator matches ..0 run data modify entity @s Attributes[{Name:"minecraft:generic.armor"}].Base set value 2.0
execute if score @s calculator matches 1 run data modify entity @s Attributes[{Name:"minecraft:generic.armor"}].Base set value 6.0
execute if score @s calculator matches 2 run data modify entity @s Attributes[{Name:"minecraft:generic.armor"}].Base set value 12.0
execute if score @s calculator matches 3.. run data modify entity @s Attributes[{Name:"minecraft:generic.armor"}].Base set value 20.0

execute if score @s calculator matches ..0 run attribute @s generic.armor_toughness base set 0
execute if score @s calculator matches 1..3 run attribute @s generic.armor_toughness base set 4
execute if score @s calculator matches 4 run attribute @s generic.armor_toughness base set 10
