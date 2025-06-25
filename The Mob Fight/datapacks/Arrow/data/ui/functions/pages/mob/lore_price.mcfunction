data modify storage run genLore set value ['""','{"translate":"price"}']
data modify storage run genName.use set value '{"nbt":"genName.hold","storage": "run","interpret": true}'

scoreboard players set #amount calculator 0
scoreboard players set #amount_p calculator 0
scoreboard players set #difference calculator 0
scoreboard players set #canBuy calculator 1
execute store result score #amount calculator run data get storage run run[0].Price.dirt
execute store result score #amount_p calculator run clear @s dirt 0
scoreboard players operation #dirt calculator = #amount calculator
execute if data storage run run[0].Price.dirt run function ui:pages/mob/lore_price_check_player
scoreboard players operation #dirt.d calculator = #difference calculator
execute if data storage run run[0].Price.dirt if score #difference calculator matches ..0 run data modify storage run genLore append value '{"translate":"dirt","with":[{"score":{"name": "#dirt","objective": "calculator"},"color": "green","italic": false}]}'
execute if data storage run run[0].Price.dirt if score #difference calculator matches 1.. run data modify storage run genLore append value '[{"translate":"dirt.r","with":[{"score":{"name": "#dirt","objective": "calculator"},"color": "red","italic": false}]},{"translate":"hint.still_need","color":"#fa3e3e","italic":false,"with":[{"score":{"name": "#dirt.d","objective": "calculator"},"color": "red"}]}]'
execute if score #difference calculator matches 1.. run scoreboard players set #canBuy calculator 0


execute store result score #amount calculator run data get storage run run[0].Price.copper
execute store result score #amount_p calculator run clear @s copper_ingot 0
scoreboard players operation #copper calculator = #amount calculator
execute if data storage run run[0].Price.copper run function ui:pages/mob/lore_price_check_player
scoreboard players operation #copper.d calculator = #difference calculator
execute if data storage run run[0].Price.copper if score #difference calculator matches ..0 run data modify storage run genLore append value '{"translate":"copper","with":[{"score":{"name": "#copper","objective": "calculator"},"color": "green","italic": false}]}'
execute if data storage run run[0].Price.copper if score #difference calculator matches 1.. run data modify storage run genLore append value '[{"translate":"copper.r","with":[{"score":{"name": "#copper","objective": "calculator"},"color": "red","italic": false}]},{"translate":"hint.still_need","color":"#fa3e3e","italic":false,"with":[{"score":{"name": "#copper.d","objective": "calculator"},"color": "red"}]}]'
execute if score #difference calculator matches 1.. run scoreboard players set #canBuy calculator 0

execute store result score #amount calculator run data get storage run run[0].Price.iron
execute store result score #amount_p calculator run clear @s iron_ingot 0
scoreboard players operation #iron calculator = #amount calculator
execute if data storage run run[0].Price.iron run function ui:pages/mob/lore_price_check_player
scoreboard players operation #iron.d calculator = #difference calculator
execute if data storage run run[0].Price.iron if score #difference calculator matches ..0 run data modify storage run genLore append value '{"translate":"iron","with":[{"score":{"name": "#iron","objective": "calculator"},"color": "green","italic": false}]}'
execute if data storage run run[0].Price.iron if score #difference calculator matches 1.. run data modify storage run genLore append value '[{"translate":"iron.r","with":[{"score":{"name": "#iron","objective": "calculator"},"color": "red","italic": false}]},{"translate":"hint.still_need","color":"#fa3e3e","italic":false,"with":[{"score":{"name": "#iron.d","objective": "calculator"},"color": "red"}]}]'
execute if score #difference calculator matches 1.. run scoreboard players set #canBuy calculator 0

execute store result score #amount calculator run data get storage run run[0].Price.gold
execute store result score #amount_p calculator run clear @s gold_ingot 0
scoreboard players operation #gold calculator = #amount calculator
execute if data storage run run[0].Price.gold run function ui:pages/mob/lore_price_check_player
scoreboard players operation #gold.d calculator = #difference calculator
execute if data storage run run[0].Price.gold if score #difference calculator matches ..0 run data modify storage run genLore append value '{"translate":"gold","with":[{"score":{"name": "#gold","objective": "calculator"},"color": "green","italic": false}]}'
execute if data storage run run[0].Price.gold if score #difference calculator matches 1.. run data modify storage run genLore append value '[{"translate":"gold.r","with":[{"score":{"name": "#gold","objective": "calculator"},"color": "red","italic": false}]},{"translate":"hint.still_need","color":"#fa3e3e","italic":false,"with":[{"score":{"name": "#gold.d","objective": "calculator"},"color": "red"}]}]'
execute if score #difference calculator matches 1.. run scoreboard players set #canBuy calculator 0

execute store result score #amount calculator run data get storage run run[0].Price.lapis
execute store result score #amount_p calculator run clear @s lapis_lazuli 0
scoreboard players operation #lapis calculator = #amount calculator
execute if data storage run run[0].Price.lapis run function ui:pages/mob/lore_price_check_player
scoreboard players operation #lapis.d calculator = #difference calculator
execute if data storage run run[0].Price.lapis if score #difference calculator matches ..0 run data modify storage run genLore append value '{"translate":"lapis","with":[{"score":{"name": "#lapis","objective": "calculator"},"color": "green","italic": false}]}'
execute if data storage run run[0].Price.lapis if score #difference calculator matches 1.. run data modify storage run genLore append value '[{"translate":"lapis.r","with":[{"score":{"name": "#lapis","objective": "calculator"},"color": "red","italic": false}]},{"translate":"hint.still_need","color":"#fa3e3e","italic":false,"with":[{"score":{"name": "#lapis.d","objective": "calculator"},"color": "red"}]}]'
execute if score #difference calculator matches 1.. run scoreboard players set #canBuy calculator 0

execute store result score #amount calculator run data get storage run run[0].Price.diamond
execute store result score #amount_p calculator run clear @s diamond 0
scoreboard players operation #diamond calculator = #amount calculator
execute if data storage run run[0].Price.diamond run function ui:pages/mob/lore_price_check_player
scoreboard players operation #diamond.d calculator = #difference calculator
execute if data storage run run[0].Price.diamond if score #difference calculator matches ..0 run data modify storage run genLore append value '{"translate":"diamond","with":[{"score":{"name": "#diamond","objective": "calculator"},"color": "green","italic": false}]}'
execute if data storage run run[0].Price.diamond if score #difference calculator matches 1.. run data modify storage run genLore append value '[{"translate":"diamond.r","with":[{"score":{"name": "#diamond","objective": "calculator"},"color": "red","italic": false}]},{"translate":"hint.still_need","color":"#fa3e3e","italic":false,"with":[{"score":{"name": "#diamond.d","objective": "calculator"},"color": "red"}]}]'
execute if score #difference calculator matches 1.. run scoreboard players set #canBuy calculator 0

execute store result score #amount calculator run data get storage run run[0].Price.netherite
execute store result score #amount_p calculator run clear @s netherite_ingot 0
scoreboard players operation #netherite calculator = #amount calculator
execute if data storage run run[0].Price.netherite run function ui:pages/mob/lore_price_check_player
scoreboard players operation #netherite.d calculator = #difference calculator
execute if data storage run run[0].Price.netherite if score #difference calculator matches ..0 run data modify storage run genLore append value '{"translate":"netherite","with":[{"score":{"name": "#netherite","objective": "calculator"},"color": "green","italic": false}]}'
execute if data storage run run[0].Price.netherite if score #difference calculator matches 1.. run data modify storage run genLore append value '[{"translate":"netherite.r","with":[{"score":{"name": "#netherite","objective": "calculator"},"color": "red","italic": false}]},{"translate":"hint.still_need","color":"#fa3e3e","italic":false,"with":[{"score":{"name": "#netherite.d","objective": "calculator"},"color": "red"}]}]'
execute if score #difference calculator matches 1.. run scoreboard players set #canBuy calculator 0

execute store result score #ModelUI calculator run data get storage run run[0].Sell.CustomModelData
scoreboard players add #ModelUI calculator 100000
execute store result storage run run[0].Sell.CustomModelData int 1 run scoreboard players get #ModelUI calculator

execute if score #canBuy calculator matches 0 run data modify storage run run[0].CustomPotionColor set value 3618615
execute if score #canBuy calculator matches 1 run data modify storage run run[0].CustomPotionColor set value 9145227

execute store result score #loreCount calculator run data get storage run genLore