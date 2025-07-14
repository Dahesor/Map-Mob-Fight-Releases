scoreboard players add @s genericCD 1
execute unless score #loop_20 calculator matches 16 run return fail

execute unless entity @s[tag=used_grand_bomb] if entity @a[gamemode=adventure,team=!,distance=..2.6] run return run function game:run/mob_tick/grand_wizard/prepare

scoreboard players set @s hpPotionCD 0


execute if entity @a[gamemode=adventure,team=!,distance=..13,tag=!spectator] positioned ~ ~1.1 ~ facing entity @a[gamemode=adventure,team=!,sort=nearest,tag=!spectator,distance=..13] eyes run function game:run/mob_tick/wizard/cast_check

execute if score @s hpPotionCD matches 0 if entity @e[type=#game:magic_target,distance=..13] positioned ~ ~1.1 ~ facing entity @e[type=#game:magic_target,sort=nearest,distance=..13] eyes run function game:run/mob_tick/wizard/cast_check

execute unless score @s hpPotionCD matches 1 run return fail
effect give @s slowness 1 20 true
execute unless score @s genericCD matches 40.. run return fail
execute positioned ~ ~1.3 ~ facing entity @a[sort=nearest,gamemode=adventure,distance=..13,limit=3] eyes run function game:run/mob_tick/grand_wizard/attack
execute positioned ~ ~1.3 ~ facing entity @e[limit=1,sort=nearest,type=#game:magic_target,distance=..13] eyes run function game:run/mob_tick/grand_wizard/attack


execute unless entity @s[tag=quick_shoot] run scoreboard players set @s genericCD 30
execute unless entity @s[tag=quick_shoot] run return run tag @s add quick_shoot
scoreboard players set @s genericCD -30
tag @s remove quick_shoot