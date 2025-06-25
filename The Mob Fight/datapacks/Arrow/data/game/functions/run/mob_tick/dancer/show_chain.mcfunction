tag @s add temp.dancer
execute as @e[type=zombie,tag=dancer_child,distance=..8] if score @s match = @e[type=husk,tag=dancer,limit=1,tag=temp.dancer] match run tag @s add temp.dancer
tag @s remove temp.dancer

execute positioned as @e[type=zombie,tag=dancer_child,distance=..8,tag=temp.dancer] positioned ~ ~1.4 ~ facing entity @s feet run function game:run/mob_tick/dancer/particle
tag @e[type=zombie,tag=dancer_child] remove temp.dancer
