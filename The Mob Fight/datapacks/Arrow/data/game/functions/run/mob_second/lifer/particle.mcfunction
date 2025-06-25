particle totem_of_undying ~ ~ ~ 0.05 0.05 0.05 0.05 5 force @a
execute positioned ~ ~-1 ~ unless entity @s[distance=1.2..15] run return fail
execute positioned ^ ^ ^0.4 run function game:run/mob_second/lifer/particle