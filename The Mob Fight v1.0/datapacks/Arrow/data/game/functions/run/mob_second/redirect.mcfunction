

execute if entity @s[tag=needPassenger] unless predicate game:mobs/accepted_passenger run kill @s
execute as @s[tag=zombie_army_center] run function game:run/mob_second/marker/zombie_army
execute if entity @s[tag=crazy_mode_mob] run scoreboard players add @s genericCD 1
execute if entity @s[tag=crazy_mode_mob] if score @s genericCD matches 30.. run kill @s
execute if entity @s[tag=mine,type=marker] at @s run function game:player/warped_stick/mine/particle