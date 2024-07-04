scoreboard players set @s hpPotionCD 0
execute if entity @a[gamemode=adventure,team=!,distance=..18] positioned ~ ~1.1 ~ facing entity @a[gamemode=adventure,team=!,limit=1,sort=nearest] feet run function game:run/mob_tick/wizard/cast_check
execute if score @s hpPotionCD matches 0 if entity @e[type=#game:magic_target,distance=..18] positioned ~ ~1.1 ~ facing entity @e[type=#game:magic_target,limit=1,sort=nearest] feet run function game:run/mob_tick/wizard/cast_check
