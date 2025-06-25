tag @s remove inactivedSpawnCenterR
execute store result score #o calculator run data get entity @s data.spawn.range
execute if score #o calculator matches ..0 run scoreboard players set #o calculator 1
data modify entity @s data.spawn.pos append from entity @s Pos
function game:plugin/ranged_spawner/active/compressed/circles/inner
execute if score #o calculator matches 2.. run function game:plugin/ranged_spawner/active/compressed/circles/middle
execute if score #o calculator matches 3.. run function game:plugin/ranged_spawner/active/compressed/circles/outer
data modify entity @s data.spawn.entity[].data.Tags append value "dataed"
