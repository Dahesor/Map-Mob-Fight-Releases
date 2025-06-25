scoreboard players remove @s Item.power_star 1
execute if entity @s[gamemode=spectator] run return fail

particle dust 0.435 1 0 1 ~ ~0.1 ~ 0 0 0 0 1 force
particle dust 0.984 1 0 1 ~0.2 ~0.1 ~ 0 0 0 0 1 force
particle dust 1 0 0 1 ~-0.2 ~0.1 ~ 0 0 0 0 1 force
particle dust 0 1 0.784 1 ~ ~0.1 ~0.2 0 0 0 0 1 normal
particle dust 0 0.067 1 1 ~ ~0.1 ~-0.2 0 0 0 0 1 normal

particle dust_color_transition 0 0.067 1 1 1 0 0.6 ~0.2 ~1 ~-0.2 0 0 0 0 1 force
particle dust_color_transition 0 1 0.451 1 0 0.067 1 ~0.2 ~1 ~0.2 0 0 0 0 1 normal
particle dust_color_transition 1 0.949 0 1 1 0 0.4 ~ ~1 ~ 0 0 0 0 1 force
particle dust_color_transition 0 1 0 1 0 0.882 1 ~-0.2 ~1 ~0.2 0 0 0 0 1 normal
particle dust_color_transition 0 0.733 1 1 1 0 0 ~-0.2 ~1 ~-0.2 0 0 0 0 1 force