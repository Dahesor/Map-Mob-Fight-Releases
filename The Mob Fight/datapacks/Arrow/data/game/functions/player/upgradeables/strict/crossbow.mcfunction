execute store result score @s calculator run clear @s crossbow{isConstant:1b} 0
execute unless score @s calculator matches 1 run return fail

execute if score @s crossbow matches 5.. store result score @s calculator run return run clear @s crossbow{isConstant:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:4s}]} 0
execute if score @s crossbow matches 4 store result score @s calculator run return run clear @s crossbow{isConstant:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:3s}]} 0
execute if score @s crossbow matches 3 store result score @s calculator run return run clear @s crossbow{isConstant:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:2s}]} 0
execute if score @s crossbow matches 2 store result score @s calculator run return run clear @s crossbow{isConstant:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:1s}]} 0

execute store result score @s calculator run return run clear @s crossbow{isConstant:1b} 0