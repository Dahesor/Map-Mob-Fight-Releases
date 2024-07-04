scoreboard players add @s genericCD 1
execute if score @s genericCD matches 30..40 at @s run particle cloud ~ ~0.15 ~ 0.1 0.1 0.1 0.05 3 normal
execute if score @s genericCD matches 40.. if entity @a[distance=..10,gamemode=adventure] facing entity @p eyes run tp @s ~ ~ ~ ~ ~
execute if score @s genericCD matches 40.. if entity @a[distance=..10,gamemode=adventure] at @s run function game:run/mob_tick/leaper/leap