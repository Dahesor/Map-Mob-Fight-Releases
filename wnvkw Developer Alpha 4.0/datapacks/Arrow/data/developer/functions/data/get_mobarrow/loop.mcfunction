execute store result score #aa calculator run data get storage developer:run run.data[0].GameTime
tellraw @s [{"text": "- ","color": "aqua"},{"nbt":"run.data[0].Player","storage": "developer:run","color": "light_purple"}," bought ",{"nbt":"run.data[0].Name","storage": "developer:run","color": "green","interpret": true}," At ",{"score":{"name": "#aa","objective": "calculator"}}]

data remove storage developer:run run.data[0]
execute if data storage developer:run run.data[0] run function developer:data/get_mobarrow/loop
