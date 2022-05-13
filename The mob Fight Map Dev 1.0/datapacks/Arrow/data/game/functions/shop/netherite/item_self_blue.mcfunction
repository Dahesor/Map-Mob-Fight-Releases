execute store result score #add calculator run data get entity @s Item.Count
execute unless score stored_netherite blue matches 1.. run schedule function game:shop/netherite/animation/blue_out 10t
scoreboard players operation stored_netherite blue += #add calculator
kill @s
