data merge entity @s {Tags:["ticking","magic_ball","mg","del"],damage:0.8d}
data modify entity @s Owner set from storage run UUID
execute facing entity @a[limit=1,sort=nearest,gamemode=adventure,distance=..18] eyes positioned ^ ^ ^4 run function game:run/mob_tick/mg/splash
execute unless entity @s[tag=shot] facing entity @e[limit=1,sort=nearest,type=#game:magic_target,distance=..18] eyes positioned ^ ^ ^4 run function game:run/mob_tick/mg/splash