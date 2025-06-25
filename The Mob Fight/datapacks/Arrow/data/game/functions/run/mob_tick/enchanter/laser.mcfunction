particle dust_color_transition 0.349 0.988 1 1.7 1 1 1 ~ ~ ~ 0 0 0 0 0 force @a
execute positioned ~ ~-1 ~ unless entity @s[distance=1.2..15] run return fail
execute positioned ^ ^ ^0.4 run function game:run/mob_tick/enchanter/laser