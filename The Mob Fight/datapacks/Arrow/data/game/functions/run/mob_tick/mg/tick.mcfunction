execute unless score @s genericCD matches 20.. run scoreboard players add @s genericCD 1
execute if score #loop_10 calculator matches 1 run function game:run/mob_tick/mg/check
execute if score @s hpPotionCD matches 1 run effect give @s slowness 1 10 true
execute if score @s hpPotionCD matches 1 facing entity @a[gamemode=adventure,distance=..18] feet run tp @s ~ ~ ~ ~ ~
execute if score @s genericCD matches 10..100 if score @s hpPotionCD matches 1 if score #loop_3 calculator matches 1 positioned ~ ~1.6 ~ run function game:run/mob_tick/mg/shoot