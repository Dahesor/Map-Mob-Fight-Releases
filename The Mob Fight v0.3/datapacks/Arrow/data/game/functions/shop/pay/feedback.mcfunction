scoreboard players set #feedback calculator 0
#>
#@private
#define score_holder #feedback


execute store result score #holder calculator run data get storage run Pay.dirt
execute if score #holder calculator matches 1.. store result score @s calculator run clear @s dirt 0
execute if score #holder calculator matches 1.. unless score @s calculator >= #holder calculator store result score #feedback calculator run scoreboard players operation #holder calculator -= @s calculator
execute unless score #feedback calculator matches 0 run tellraw @s {"translate":"hint.still_need.feeback","color":"red","with":[{"translate":"dirt.nn"},{"score":{"name": "#feedback","objective": "calculator"}}]}

scoreboard players set #feedback calculator 0
execute store result score #holder calculator run data get storage run Pay.iron
execute if score #holder calculator matches 1.. store result score @s calculator run clear @s iron_ingot 0
execute if score #holder calculator matches 1.. unless score @s calculator >= #holder calculator store result score #feedback calculator run scoreboard players operation #holder calculator -= @s calculator
execute unless score #feedback calculator matches 0 run tellraw @s {"translate":"hint.still_need.feeback","color":"red","with":[{"translate":"iron.nn"},{"score":{"name": "#feedback","objective": "calculator"}}]}

scoreboard players set #feedback calculator 0
execute store result score #holder calculator run data get storage run Pay.copper
execute if score #holder calculator matches 1.. store result score @s calculator run clear @s copper_ingot 0
execute if score #holder calculator matches 1.. unless score @s calculator >= #holder calculator store result score #feedback calculator run scoreboard players operation #holder calculator -= @s calculator
execute unless score #feedback calculator matches 0 run tellraw @s {"translate":"hint.still_need.feeback","color":"red","with":[{"translate":"copper.nn"},{"score":{"name": "#feedback","objective": "calculator"}}]}

scoreboard players set #feedback calculator 0
execute store result score #holder calculator run data get storage run Pay.lapis
execute if score #holder calculator matches 1.. store result score @s calculator run clear @s lapis_lazuli 0
execute if score #holder calculator matches 1.. unless score @s calculator >= #holder calculator store result score #feedback calculator run scoreboard players operation #holder calculator -= @s calculator
execute unless score #feedback calculator matches 0 run tellraw @s {"translate":"hint.still_need.feeback","color":"red","with":[{"translate":"lapis.nn"},{"score":{"name": "#feedback","objective": "calculator"}}]}

scoreboard players set #feedback calculator 0
execute store result score #holder calculator run data get storage run Pay.gold
execute if score #holder calculator matches 1.. store result score @s calculator run clear @s gold_ingot 0
execute if score #holder calculator matches 1.. unless score @s calculator >= #holder calculator store result score #feedback calculator run scoreboard players operation #holder calculator -= @s calculator
execute unless score #feedback calculator matches 0 run tellraw @s {"translate":"hint.still_need.feeback","color":"red","with":[{"translate":"gold.nn"},{"score":{"name": "#feedback","objective": "calculator"}}]}


scoreboard players set #feedback calculator 0
execute store result score #holder calculator run data get storage run Pay.diamond
execute if score #holder calculator matches 1.. store result score @s calculator run clear @s diamond 0
execute if score #holder calculator matches 1.. unless score @s calculator >= #holder calculator store result score #feedback calculator run scoreboard players operation #holder calculator -= @s calculator
execute unless score #feedback calculator matches 0 run tellraw @s {"translate":"hint.still_need.feeback","color":"red","with":[{"translate":"diamond.nn"},{"score":{"name": "#feedback","objective": "calculator"}}]}



scoreboard players set #feedback calculator 0
execute store result score #holder calculator run data get storage run Pay.netherite
execute if score #holder calculator matches 1.. store result score @s calculator run clear @s netherite_ingot 0
execute if score #holder calculator matches 1.. unless score @s calculator >= #holder calculator store result score #feedback calculator run scoreboard players operation #holder calculator -= @s calculator
execute unless score #feedback calculator matches 0 run tellraw @s {"translate":"hint.still_need.feeback","color":"red","with":[{"translate":"netherite.nn"},{"score":{"name": "#feedback","objective": "calculator"}}]}

