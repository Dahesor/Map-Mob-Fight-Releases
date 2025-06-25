tellraw @s ["",{"text": "- ","color": "green"},{"text":"Player Name","color": "aqua"},": ",{"nbt":"run.Players[0].Name","storage": "developer:run","color": "yellow"}]
tellraw @s ["",{"text": "- [ ","color": "green"},{"text":"Sword Level","color": "aqua"},": ",{"nbt":"run.Players[0].data.sword","storage": "developer:run","color": "gold"}," | ",{"text":"Axe Level","color": "aqua"},": ",{"nbt":"run.Players[0].data.axe","storage": "developer:run","color": "gold"}," | ",{"text":"Crossbow Level","color": "aqua"},": ",{"nbt":"run.Players[0].data.crossbow","storage": "developer:run","color": "gold"}," | ",{"text":"Pickaxe Level","color": "aqua"},": ",{"nbt":"run.Players[0].data.pickaxe","storage": "developer:run","color": "gold"},{"text": " ]","color": "green"}]

data remove storage developer:run run.Players[0]
execute if data storage developer:run run.Players[0] run function developer:data/get_level/loop_player
