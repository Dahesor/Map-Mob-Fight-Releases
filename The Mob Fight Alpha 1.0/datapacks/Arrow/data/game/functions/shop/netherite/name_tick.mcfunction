execute unless score @s genericCD matches ..-1 run scoreboard players remove @s genericCD 1
execute if score @s genericCD matches 0 run data merge entity @s {CustomNameVisible:0b}