scoreboard players operation #temp calculator = @s convertCount
execute if score @s convertItem matches 1 run scoreboard players operation #temp calculator *= #10 calculator
execute if score @s convertItem matches 2..4 run scoreboard players operation #temp calculator *= #20 calculator
execute if score @s convertItem matches 5 run scoreboard players operation #temp calculator *= #22 calculator
execute if score @s convertItem matches 6 run scoreboard players operation #temp calculator *= #25 calculator
scoreboard players operation #temp calculator += @s convertEnergy