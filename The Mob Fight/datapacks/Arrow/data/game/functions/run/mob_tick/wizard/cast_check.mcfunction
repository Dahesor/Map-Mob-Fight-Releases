execute unless block ~ ~ ~ #game:ray_free run return fail
execute positioned ~-1 ~-1.5 ~-1 if entity @a[gamemode=adventure,dx=2,dy=2,dz=2,team=!] run return run scoreboard players set @s hpPotionCD 1
execute if entity @e[type=#game:magic_target,distance=..2] run return run scoreboard players set @s hpPotionCD 1
execute positioned ^ ^ ^0.2 run function game:run/mob_tick/wizard/cast_check
