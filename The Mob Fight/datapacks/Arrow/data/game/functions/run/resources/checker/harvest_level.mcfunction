execute store result score $moreDrop calculator run random value 200..299
execute if score @s harvest_level matches 1 run scoreboard players add $moreDrop calculator 25
execute if score @s harvest_level matches 2 run scoreboard players add $moreDrop calculator 60
execute if score @s harvest_level matches 3.. run scoreboard players set $moreDrop calculator 301
scoreboard players operation $moreDrop calculator /= #100 calculator