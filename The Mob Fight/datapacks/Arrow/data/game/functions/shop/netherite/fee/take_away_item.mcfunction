scoreboard players operation #add calculator -= $feeItemcount calculator
execute store result entity @s Item.Count byte 1 run scoreboard players get #add calculator
execute if score #add calculator matches ..0 run kill @s