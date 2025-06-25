scoreboard players add @s[nbt={OnGround:1b}] genericCD 1
execute if score @s genericCD matches 10 run function game:run/creeper/repair/check
execute if entity @s[tag=will_repair] run function game:run/creeper/repair