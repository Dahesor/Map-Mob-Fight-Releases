execute if entity @s[tag=silverfish_witch] at @s run function game:run/mob_tick/silverfish_witch/main
execute if entity @s[tag=invOnVehicle] run function game:run/mob_tick/invincible_on_v
execute if score #loop_3 calculator matches 1 if score Performance Options matches 0 if entity @s[type=potion,tag=purple_trail] at @s run function game:plugin/particles/purple_trail
execute if entity @s[type=tnt,tag=tnt_auto] at @s if entity @a[distance=..3] run data merge entity @s {NoGravity:1b,Motion:[0.0d,0.0d,0.0d]}
execute if entity @s[tag=leaper_zombie] at @s run function game:run/mob_tick/leaper/exe
execute if entity @s[tag=TNT_child] at @s run function game:run/mob_tick/tnt_child
execute if entity @s[tag=fire_wizard] at @s run function game:run/mob_tick/fire_wizard/tick
execute if entity @s[tag=ice_wizard] at @s run function game:run/mob_tick/ice_wizard/tick
execute if entity @s[tag=wind_wizard] at @s run function game:run/mob_tick/wind_wizard/tick
execute if entity @s[tag=water_wizard] at @s run function game:run/mob_tick/water_wizard/tick
execute if entity @s[tag=magic_ball] at @s run function game:run/mob_tick/magic_ball
execute if entity @s[tag=snowball_child,type=marker] at @s run function game:run/mob_tick/snowball_type/marker
execute if entity @s[tag=snowball_parent,type=snowball] at @s run function game:run/mob_tick/snowball_type/tick
execute if entity @s[tag=dark_wizard] at @s run function game:run/mob_tick/dark_wizard/tick
execute if entity @s[tag=poison_wizard] at @s run function game:run/mob_tick/poison_wizard/tick
execute if entity @s[tag=tp_wizard] at @s run function game:run/mob_tick/tp_wizard/tick
execute if entity @s[tag=god.mg] at @s run function game:run/mob_tick/mg/tick
execute if entity @s[tag=dancer] at @s run function game:run/mob_tick/dancer/tick
execute if entity @s[tag=beacon] at @s run function game:run/mob_tick/beacon/tick
execute if entity @s[tag=mine,type=marker] at @s if entity @e[type=#game:mobs,distance=..2.5] run function game:player/warped_stick/mine/close
