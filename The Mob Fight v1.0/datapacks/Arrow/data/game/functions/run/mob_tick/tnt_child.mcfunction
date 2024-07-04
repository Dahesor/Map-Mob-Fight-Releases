execute unless score @s genericCD matches 30.. run return run scoreboard players add @s genericCD 1
execute unless entity @a[gamemode=adventure,team=!,distance=..2] run return fail
scoreboard players add @s genericCD 1
execute if score @s genericCD matches 35.. run summon fireball ~ ~ ~ {Motion:[0.0d,-0.8d,0.0d]}
execute if score @s genericCD matches 35.. run kill