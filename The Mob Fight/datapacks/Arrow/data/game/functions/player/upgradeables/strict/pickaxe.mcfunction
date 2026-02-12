execute store result score @s calculator run clear @s #game:pickaxe{isConstant:1b} 0
execute unless score @s calculator matches 1 run return fail

execute if score @s pickaxe matches 3.. store result score @s calculator run return run clear @s netherite_pickaxe{isConstant:1b} 0
execute if score @s pickaxe matches 2 store result score @s calculator run return run clear @s diamond_pickaxe{isConstant:1b} 0
execute store result score @s calculator run return run clear @s iron_pickaxe{isConstant:1b} 0