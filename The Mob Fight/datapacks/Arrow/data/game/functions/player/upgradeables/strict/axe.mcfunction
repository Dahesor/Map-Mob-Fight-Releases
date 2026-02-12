execute store result score @s calculator run clear @s #game:axe{isConstant:1b} 0
execute unless score @s calculator matches 1 run return fail

execute if score @s sword matches 5.. store result score @s calculator run return run clear @s netherite_axe{isConstant:1b} 0
execute if score @s sword matches 4 store result score @s calculator run return run clear @s diamond_axe{isConstant:1b} 0
execute if score @s sword matches 3 store result score @s calculator run return run clear @s iron_axe{isConstant:1b} 0
execute if score @s sword matches 2 store result score @s calculator run return run clear @s stone_axe{isConstant:1b} 0
execute store result score @s calculator run return run clear @s wooden_axe{isConstant:1b} 0