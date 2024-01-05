clear @s dirt 1
scoreboard players remove #holder calculator 1
execute if score #holder calculator matches 10.. run clear @s dirt 10
execute if score #holder calculator matches 10.. run scoreboard players remove #holder calculator 10
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/dirt