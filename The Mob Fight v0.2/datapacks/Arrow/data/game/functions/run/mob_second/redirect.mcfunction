

execute if entity @s[tag=needPassenger] unless predicate game:mobs/accepted_passenger run kill @s
execute as @s[tag=zombie_army_center] run function game:run/mob_second/marker/zombie_army
