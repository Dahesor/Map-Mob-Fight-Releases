execute store result score #aa calculator run data get storage developer:run run[0].EndAt
execute store result score #ab calculator run data get storage developer:run run[0].GameID
execute store result score #ac calculator run data get storage developer:run run[0].EndTime

tellraw @s [{"text": "Game ","color": "aqua"},{"score":{"objective": "calculator","name": "#ab"},"color": "yellow"}," with ",{"nbt":"run[0].mapName","storage": "developer:run","interpret": true}," GameLength ",{"score":{"objective": "calculator","name": "#ac"},"color": "yellow"}," Ended At ",{"score":{"objective": "calculator","name": "#aa"},"color": "yellow"}]
data remove storage developer:run run[0]
execute if data storage developer:run run[0] run function developer:data/get_game/loop