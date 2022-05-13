data modify storage run genLore set value ['""','{"translate":"price"}']


execute store result score #dirt calculator run data get storage run run[0].Price.dirt
execute if data storage run run[0].Price.dirt run data modify storage run genLore append value '{"translate":"dirt","with":[{"score":{"name": "#dirt","objective": "calculator"},"color": "green","italic": false}]}'

execute store result score #copper calculator run data get storage run run[0].Price.copper
execute if data storage run run[0].Price.copper run data modify storage run genLore append value '{"translate":"copper","with":[{"score":{"name": "#copper","objective": "calculator"},"color": "green","italic": false}]}'

execute store result score #iron calculator run data get storage run run[0].Price.iron
execute if data storage run run[0].Price.iron run data modify storage run genLore append value '{"translate":"iron","with":[{"score":{"name": "#iron","objective": "calculator"},"color": "green","italic": false}]}'

execute store result score #gold calculator run data get storage run run[0].Price.gold
execute if data storage run run[0].Price.gold run data modify storage run genLore append value '{"translate":"gold","with":[{"score":{"name": "#gold","objective": "calculator"},"color": "green","italic": false}]}'

execute store result score #lapis calculator run data get storage run run[0].Price.lapis
execute if data storage run run[0].Price.lapis run data modify storage run genLore append value '{"translate":"lapis","with":[{"score":{"name": "#lapis","objective": "calculator"},"color": "green","italic": false}]}'

execute store result score #diamond calculator run data get storage run run[0].Price.diamond
execute if data storage run run[0].Price.diamond run data modify storage run genLore append value '{"translate":"diamond","with":[{"score":{"name": "#diamond","objective": "calculator"},"color": "green","italic": false}]}'

execute store result score #quartz calculator run data get storage run run[0].Price.quartz
execute if data storage run run[0].Price.quartz run data modify storage run genLore append value '{"translate":"quartz","with":[{"score":{"name": "#quartz","objective": "calculator"},"color": "green","italic": false}]}'

execute store result score #netherite calculator run data get storage run run[0].Price.netherite
execute if data storage run run[0].Price.netherite run data modify storage run genLore append value '{"translate":"netherite","with":[{"score":{"name": "#netherite","objective": "calculator"},"color": "green","italic": false}]}'

execute store result score #loreCount calculator run data get storage run genLore