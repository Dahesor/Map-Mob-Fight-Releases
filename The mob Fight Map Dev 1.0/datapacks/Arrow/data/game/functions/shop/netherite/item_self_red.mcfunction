execute store result score #add calculator run data get entity @s Item.Count
execute unless score stored_netherite red matches 1.. run schedule function game:shop/netherite/animation/red_out 10t
scoreboard players operation stored_netherite red += #add calculator
kill @s
