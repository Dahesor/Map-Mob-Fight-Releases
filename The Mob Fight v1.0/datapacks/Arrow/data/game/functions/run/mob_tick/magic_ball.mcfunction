scoreboard players add @s genericCD 1
execute if entity @s[tag=fire_magic] if score Performance Options matches 1 if score #loop_3 calculator matches 1 run particle lava ~ ~ ~ 0 0.3 0 0 1 normal @a
execute if entity @s[tag=fire_magic] if score Performance Options matches 0 run particle lava ~ ~ ~ 0 0.3 0 0 1 normal @a
execute if entity @s[tag=mg] if score Performance Options matches 0 run particle cloud ~ ~ ~ 0 0 0 0 1 normal @a

execute if score @s genericCD matches 50.. run kill