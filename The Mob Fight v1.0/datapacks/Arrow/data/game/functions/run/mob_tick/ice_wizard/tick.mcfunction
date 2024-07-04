scoreboard players add @s genericCD 1
execute unless score #loop_20 calculator matches 16 run return fail
scoreboard players set @s hpPotionCD 0
execute if entity @a[gamemode=adventure,team=!,distance=..11] positioned ~ ~1.1 ~ facing entity @a[gamemode=adventure,team=!,limit=1,sort=nearest] eyes run function game:run/mob_tick/wizard/cast_check
execute if score @s hpPotionCD matches 0 if entity @e[type=#game:magic_target,distance=..11] positioned ~ ~1.1 ~ facing entity @e[type=#game:magic_target,limit=1,sort=nearest] eyes run function game:run/mob_tick/wizard/cast_check
execute if score @s hpPotionCD matches 1 run effect give @s slowness 1 20 true
execute if score @s hpPotionCD matches 1 if score @s genericCD matches 40.. positioned ~ ~1.3 ~ run function game:run/mob_tick/ice_wizard/shoot