execute on vehicle run return fail
tag @s add temp.Damage
execute if entity @s[tag=ice_magic] as @a[gamemode=adventure,team=!,dx=2,dy=2,dz=2,tag=!spectator] run function game:run/mob_tick/ice_wizard/hurt
execute if entity @s[tag=ice_magic] as @e[type=#game:magic_target,distance=..2.2] run function game:run/mob_tick/ice_wizard/hurt
execute if entity @s[tag=dark_magic] as @a[gamemode=adventure,team=!,distance=..2.2,tag=!spectator] run function game:run/mob_tick/dark_wizard/hurt
execute if entity @s[tag=dark_magic] as @e[type=#game:magic_target,distance=..2.2] run function game:run/mob_tick/dark_wizard/hurt
execute if entity @s[tag=poison_magic] as @a[gamemode=adventure,team=!,distance=..2.2,tag=!spectator] run function game:run/mob_tick/poison_wizard/hurt
execute if entity @s[tag=poison_magic] as @e[type=#game:magic_target,distance=..2.2] run function game:run/mob_tick/poison_wizard/hurt
execute if entity @s[tag=wind_magic] as @a[gamemode=adventure,team=!,distance=..2.2,tag=!spectator] run function game:run/mob_tick/wind_wizard/hurt
execute if entity @s[tag=wind_magic] as @e[type=#game:magic_target,distance=..2.2] run function game:run/mob_tick/wind_wizard/hurt
execute if entity @s[tag=water_magic] as @a[gamemode=adventure,team=!,distance=..2.2,tag=!spectator] run function game:run/mob_tick/water_wizard/hurt
execute if entity @s[tag=water_magic] as @e[type=#game:magic_target,distance=..2.2] run function game:run/mob_tick/water_wizard/hurt
execute if entity @s[tag=wounding_magic] as @a[gamemode=adventure,team=!,distance=..2.2,tag=!spectator] run function game:run/mob_tick/wounding_wizard/hurt
execute if entity @s[tag=wounding_magic] as @e[type=#game:magic_target,distance=..2.2] run function game:run/mob_tick/wounding_wizard/hurt
execute if entity @s[tag=twitching_magic] as @a[gamemode=adventure,team=!,distance=..2.2,tag=!spectator] run function game:run/mob_tick/twitching_wizard/hurt
execute if entity @s[tag=twitching_magic] as @e[type=#game:magic_target,distance=..2.2] run function game:run/mob_tick/twitching_wizard/hurt
execute if entity @s[tag=tp_magic] as @a[gamemode=adventure,team=!,distance=..2.4,limit=1,tag=!spectator] run function game:run/mob_tick/tp_wizard/hurt
tag @s remove temp.Damage
execute if entity @s[tag=ice_magic] run playsound block.glass.break master @a ~ ~ ~ 1 0.5
execute if entity @s[tag=dark_magic] run playsound entity.wither.break_block master @a ~ ~ ~ 1 0.6
execute if entity @s[tag=poison_magic] run playsound block.slime_block.break master @a ~ ~ ~ 1 0.55
execute if entity @s[tag=tp_magic] run playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 1 0.6
execute if entity @s[tag=wind_magic] run playsound minecraft:entity.llama.spit master @a ~ ~ ~ 1 0.8
execute if entity @s[tag=water_magic] run playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 1 1.4
execute if entity @s[tag=wounding_magic] run playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 0.7
execute if entity @s[tag=twitching_magic] run playsound minecraft:entity.splash_potion.break master @a ~ ~ ~ 1 1.04
kill