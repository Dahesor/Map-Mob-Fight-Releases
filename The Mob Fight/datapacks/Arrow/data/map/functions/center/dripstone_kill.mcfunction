execute unless score @s deathSourceCD matches 1.. run tellraw @a {"translate":"death.dripstone","color": "white","with":[{"selector":"@s"}]}
execute if score @s deathSourceCD matches 1.. run tellraw @a {"translate":"death.dripstone_escape","color": "white","with":[{"selector":"@s"}]}
scoreboard players set @s map.CENTER.falling_distance 0
effect clear @s
effect give @s instant_health 1 5 true
effect give @s saturation 1 5 true
tag @s add center.killed_by_dripstone
data modify storage run center_dripstone set from entity @s Pos

function game:death/self