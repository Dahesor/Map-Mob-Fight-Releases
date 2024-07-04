execute if entity @e[type=snowball,tag=snowball_parent,distance=..2] run return run kill
tag @s add temp.Damage
execute if entity @s[tag=ice_magic] at @s as @a[gamemode=adventure,team=!,distance=..2.2] run function game:run/mob_tick/ice_wizard/hurt
execute if entity @s[tag=ice_magic] at @s as @e[type=#game:magic_target,distance=..1.8] run function game:run/mob_tick/ice_wizard/hurt
execute if entity @s[tag=dark_magic] at @s as @a[gamemode=adventure,team=!,distance=..2.2] run function game:run/mob_tick/dark_wizard/hurt
execute if entity @s[tag=dark_magic] at @s as @e[type=#game:magic_target,distance=..1.8] run function game:run/mob_tick/dark_wizard/hurt
execute if entity @s[tag=poison_magic] at @s as @a[gamemode=adventure,team=!,distance=..2.2] run function game:run/mob_tick/poison_wizard/hurt
execute if entity @s[tag=poison_magic] at @s as @e[type=#game:magic_target,distance=..1.8] run function game:run/mob_tick/poison_wizard/hurt
execute if entity @s[tag=wind_magic] at @s as @a[gamemode=adventure,team=!,distance=..2.2] run function game:run/mob_tick/wind_wizard/hurt
execute if entity @s[tag=wind_magic] at @s as @e[type=#game:magic_target,distance=..1.8] run function game:run/mob_tick/wind_wizard/hurt
execute if entity @s[tag=water_magic] at @s as @a[gamemode=adventure,team=!,distance=..2.2] run function game:run/mob_tick/water_wizard/hurt
execute if entity @s[tag=water_magic] at @s as @e[type=#game:magic_target,distance=..1.8] run function game:run/mob_tick/water_wizard/hurt
execute if entity @s[tag=tp_magic] at @s as @a[gamemode=adventure,team=!,distance=..2.4,limit=1] run function game:run/mob_tick/tp_wizard/hurt
tag @s remove temp.Damage
execute if entity @s[tag=ice_magic] at @s run playsound block.glass.break master @a ~ ~ ~ 1 0.5
execute if entity @s[tag=dark_magic] at @s run playsound entity.wither.break_block master @a ~ ~ ~ 1 0.6
execute if entity @s[tag=poison_magic] at @s run playsound block.slime_block.break master @a ~ ~ ~ 1 0.55
execute if entity @s[tag=tp_magic] at @s run playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 1 0.6
execute if entity @s[tag=wind_magic] at @s run playsound minecraft:entity.llama.spit master @a ~ ~ ~ 1 0.8
execute if entity @s[tag=water_magic] at @s run playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 1 1.4
kill