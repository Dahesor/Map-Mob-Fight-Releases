execute store result score #add calculator run data get entity @s Item.Count
function game:shop/netherite/animation/red_out
scoreboard players operation stored_netherite red += #add calculator
scoreboard players operation stored_netherite red += #add calculator
scoreboard players operation stored_netherite red += #add calculator
execute on origin run advancement grant @s only lobby:vand
kill @s
