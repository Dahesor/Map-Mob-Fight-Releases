execute store result score #add calculator run data get entity @s Item.Count
execute if score #add calculator >= $feeItemcount calculator run scoreboard players add stored_netherite red 1
execute if score #add calculator >= $feeItemcount calculator run function game:shop/netherite/animation/red_out
execute if score #add calculator >= $feeItemcount calculator run function game:shop/netherite/fee/take_away_item
