data modify storage run genLore set value ['""','{"translate":"price"}']

execute if data storage run ThisRandom.Price.dirt store result score #dirt calculator run data get storage run ThisRandom.Price.dirt
execute if data storage run ThisRandom.Price.dirt run data modify storage run genLore append value '{"translate":"dirt","with":[{"score":{"name": "#dirt","objective": "calculator"},"color": "green","italic": false}]}'

execute if data storage run ThisRandom.Price.copper store result score #copper calculator run data get storage run ThisRandom.Price.copper
execute if data storage run ThisRandom.Price.copper run data modify storage run genLore append value '{"translate":"copper","with":[{"score":{"name": "#copper","objective": "calculator"},"color": "green","italic": false}]}'

execute if data storage run ThisRandom.Price.iron store result score #iron calculator run data get storage run ThisRandom.Price.iron
execute if data storage run ThisRandom.Price.iron run data modify storage run genLore append value '{"translate":"iron","with":[{"score":{"name": "#iron","objective": "calculator"},"color": "green","italic": false}]}'

execute if data storage run ThisRandom.Price.gold store result score #gold calculator run data get storage run ThisRandom.Price.gold
execute if data storage run ThisRandom.Price.gold run data modify storage run genLore append value '{"translate":"gold","with":[{"score":{"name": "#gold","objective": "calculator"},"color": "green","italic": false}]}'

execute if data storage run ThisRandom.Price.lapis store result score #lapis calculator run data get storage run ThisRandom.Price.lapis
execute if data storage run ThisRandom.Price.lapis run data modify storage run genLore append value '{"translate":"lapis","with":[{"score":{"name": "#lapis","objective": "calculator"},"color": "green","italic": false}]}'

execute if data storage run ThisRandom.Price.diamond store result score #diamond calculator run data get storage run ThisRandom.Price.diamond
execute if data storage run ThisRandom.Price.diamond run data modify storage run genLore append value '{"translate":"diamond","with":[{"score":{"name": "#diamond","objective": "calculator"},"color": "green","italic": false}]}'

execute if data storage run ThisRandom.Price.netherite store result score #netherite calculator run data get storage run ThisRandom.Price.netherite
execute if data storage run ThisRandom.Price.netherite run data modify storage run genLore append value '{"translate":"netherite","with":[{"score":{"name": "#netherite","objective": "calculator"},"color": "green","italic": false}]}'

execute store result score #loreCount calculator run data get storage run genLore