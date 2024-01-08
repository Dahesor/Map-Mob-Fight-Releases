execute if entity @s[tag=silverfish_witch] at @s run function game:run/mob_tick/silverfish_witch/main
execute if entity @s[tag=invOnVehicle] run function game:run/mob_tick/invincible_on_v
execute if entity @s[type=potion,tag=purple_trail] at @s run function game:plugin/particles/purple_trail
execute if entity @s[type=tnt,tag=tnt_auto] at @s if entity @a[distance=..3] run data merge entity @s {NoGravity:1b,Motion:[0.0d,0.0d,0.0d]}