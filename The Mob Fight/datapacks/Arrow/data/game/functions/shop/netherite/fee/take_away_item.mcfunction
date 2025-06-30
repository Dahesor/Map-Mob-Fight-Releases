execute if entity @s[nbt={Item:{id:"minecraft:diamond"}}] if predicate map:in_red run scoreboard players operation diamond.spent red += $feeItemcount calculator
execute if entity @s[nbt={Item:{id:"minecraft:diamond"}}] if predicate map:in_blue run scoreboard players operation diamond.spent blue += $feeItemcount calculator
execute if entity @s[nbt={Item:{id:"minecraft:iron_ingot"}}] if predicate map:in_red run scoreboard players operation iron.spent red += $feeItemcount calculator
execute if entity @s[nbt={Item:{id:"minecraft:iron_ingot"}}] if predicate map:in_blue run scoreboard players operation iron.spent blue += $feeItemcount calculator
execute if entity @s[nbt={Item:{id:"minecraft:copper_ingot"}}] if predicate map:in_red run scoreboard players operation copper.spent red += $feeItemcount calculator
execute if entity @s[nbt={Item:{id:"minecraft:copper_ingot"}}] if predicate map:in_blue run scoreboard players operation copper.spent blue += $feeItemcount calculator
execute if entity @s[nbt={Item:{id:"minecraft:gold_ingot"}}] if predicate map:in_red run scoreboard players operation gold.spent red += $feeItemcount calculator
execute if entity @s[nbt={Item:{id:"minecraft:gold_ingot"}}] if predicate map:in_blue run scoreboard players operation gold.spent blue += $feeItemcount calculator
execute if entity @s[nbt={Item:{id:"minecraft:lapis_lazuli"}}] if predicate map:in_red run scoreboard players operation lapis.spent red += $feeItemcount calculator
execute if entity @s[nbt={Item:{id:"minecraft:lapis_lazuli"}}] if predicate map:in_blue run scoreboard players operation lapis.spent blue += $feeItemcount calculator
execute if entity @s[nbt={Item:{id:"minecraft:dirt"}}] if predicate map:in_red run scoreboard players operation dirt.spent red += $feeItemcount calculator
execute if entity @s[nbt={Item:{id:"minecraft:dirt"}}] if predicate map:in_blue run scoreboard players operation dirt.spent blue += $feeItemcount calculator

scoreboard players operation #add calculator -= $feeItemcount calculator
execute store result entity @s Item.Count byte 1 run scoreboard players get #add calculator
execute if score #add calculator matches ..0 run kill @s