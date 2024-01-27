scoreboard players add @s genericCD 1
execute if score @s[nbt={OnGround:1b}] genericCD matches 10.. if entity @e[type=marker,tag=repair,distance=..5] run function game:run/creeper/repair