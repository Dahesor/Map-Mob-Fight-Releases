clear @s iron_ingot 1
scoreboard players remove #holder calculator 1
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/iron