execute if score @s genericCD matches 1 run data merge entity @e[type=villager,tag=the_villager,limit=1] {Glowing:0b}
execute if score @s genericCD matches 2 run data merge entity @e[type=villager,tag=the_villager,limit=1] {Glowing:1b}
tag @e[type=villager,tag=the_villager] remove the_villager