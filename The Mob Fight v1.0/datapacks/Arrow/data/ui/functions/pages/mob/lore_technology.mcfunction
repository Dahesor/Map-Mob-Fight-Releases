data modify storage run genLore set value ['""','{"translate":"need_tcho"}']
data modify storage run genName.use set value '{"nbt":"genName.hold","storage": "run","interpret": true,"color":"red"}'


execute store result score #dirt calculator run data get storage run run[0].Technology.science
execute if data storage run run[0].Technology.science run data modify storage run genLore append value '{"translate":"science_techno","with":[{"text":" lv.","extra":[{"score":{"name": "#dirt","objective": "calculator"}}]}],"color": "gray","italic": false}'

execute store result score #copper calculator run data get storage run run[0].Technology.magic
execute if data storage run run[0].Technology.magic run data modify storage run genLore append value '{"translate":"magic_occult","with":[{"text":" lv.","extra":[{"score":{"name": "#copper","objective": "calculator"}}]}],"color": "gray","italic": false}'

execute store result score #iron calculator run data get storage run run[0].Technology.society
execute if data storage run run[0].Technology.society run data modify storage run genLore append value '{"translate":"society_populate","with":[{"text":" lv.","extra":[{"score":{"name": "#iron","objective": "calculator"}}]}],"color": "gray","italic": false}'

data modify storage run genLore append value '{"translate":"locked"}'

data remove storage run run[0].Sell.Enchantments

execute store result score #loreCount calculator run data get storage run genLore
