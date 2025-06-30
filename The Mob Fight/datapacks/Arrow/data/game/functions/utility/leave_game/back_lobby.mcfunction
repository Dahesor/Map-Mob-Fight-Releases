execute if score debug Data matches 1.. run return fail
tp @s 0.50 58.5 110.5 -180.00 0.0
clear @s
gamemode adventure
effect clear @s
tag @a remove shop.left.limit
tag @a remove shop.right.limit
scoreboard players reset @s scb.death
scoreboard players reset @s scb.def
scoreboard players reset @s scb.shot
scoreboard players reset @s scb.eco
scoreboard players reset @s scb.support
attribute @s generic.max_health base set 20