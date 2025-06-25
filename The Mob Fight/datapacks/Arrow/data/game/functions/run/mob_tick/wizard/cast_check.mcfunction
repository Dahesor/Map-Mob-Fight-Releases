execute unless block ~ ~ ~ #game:ray_free run return fail
execute if entity @a[gamemode=adventure,distance=..2,team=!] run return run scoreboard players set @s hpPotionCD 1
execute if entity @e[type=#game:magic_target,distance=..2] run return run scoreboard players set @s hpPotionCD 1
execute positioned ^ ^ ^0.2 run function game:run/mob_tick/wizard/cast_check
