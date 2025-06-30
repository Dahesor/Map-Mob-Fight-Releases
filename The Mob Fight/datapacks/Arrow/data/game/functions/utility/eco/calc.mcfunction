scoreboard players set $sum calculator 0

execute store result score #holder calculator run data get storage run Pay.dirt
scoreboard players operation #holder calculator *= #8 calculator
scoreboard players operation $sum calculator += #holder calculator

execute store result score #holder calculator run data get storage run Pay.copper
scoreboard players operation #holder calculator *= #16 calculator
scoreboard players operation $sum calculator += #holder calculator

execute store result score #holder calculator run data get storage run Pay.iron
scoreboard players operation #holder calculator *= #16 calculator
scoreboard players operation $sum calculator += #holder calculator

execute store result score #holder calculator run data get storage run Pay.gold
scoreboard players operation #holder calculator *= #16 calculator
scoreboard players operation $sum calculator += #holder calculator

execute store result score #holder calculator run data get storage run Pay.lapis
scoreboard players operation #holder calculator *= #18 calculator
scoreboard players operation $sum calculator += #holder calculator

execute store result score #holder calculator run data get storage run Pay.diamond
scoreboard players operation #holder calculator *= #20 calculator
scoreboard players operation $sum calculator += #holder calculator

execute store result score #holder calculator run data get storage run Pay.netherite
scoreboard players operation #holder calculator *= #1000 calculator
scoreboard players operation $sum calculator += #holder calculator

execute if entity @s[team=red] run scoreboard players operation dev_cost red += $sum calculator
execute if entity @s[team=blue] run scoreboard players operation dev_cost blue += $sum calculator