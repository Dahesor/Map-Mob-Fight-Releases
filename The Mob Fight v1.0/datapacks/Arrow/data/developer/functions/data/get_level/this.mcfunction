data modify storage developer:run run set from storage developer:run Games[0]
execute store result score #aa calculator run data get storage developer:run run.GameID
tellraw @s [{"text": "=============================\nShowing Game End Point Data ","color": "green","bold": true},{"score":{"name": "#aa","objective": "calculator"},"color": "aqua"}]

execute store result score #ab calculator run data get storage developer:run run.Red.FinalScore
execute store result score #ac calculator run data get storage developer:run run.Blue.FinalScore

tellraw @s ["",{"text":"Played Map","color": "red","bold": true},": ",{"nbt":"run.mapName","storage": "developer:run","interpret": true}]
tellraw @s [{"text":"Game ID","color": "yellow","bold": true},": ",{"nbt":"run.GameID","storage": "developer:run","color": "gold"}]
execute if score #ab calculator > #ac calculator run tellraw @s {"text": "Red Won","color": "red","bold": true}
execute if score #ab calculator < #ac calculator run tellraw @s {"text": "Blue Won","color": "blue","bold": true}
execute if score #ab calculator = #ac calculator run tellraw @s {"text": "Draw","color": "white","bold": true}
tellraw @s [{"text":"Game Length","color": "yellow"},": ",{"nbt":"run.EndTime","storage": "developer:run","color": "gold"}]
tellraw @s [{"text":"Max Game Length Option","color": "yellow"},": ",{"nbt":"run.MaxTime","storage": "developer:run","color": "gold"}]
tellraw @s [{"text":"Game End At","color": "yellow"},": ",{"nbt":"run.EndAt","storage": "developer:run","color": "gold"}]

tellraw @s {"text": "* Team Red","color": "red","bold": true}
tellraw @s ["",{"text":"Final Score","color": "light_purple"},": ",{"nbt":"run.Red.FinalScore","storage": "developer:run","color": "yellow"}]
tellraw @s {"text": "- Technology:","color": "yellow"}
tellraw @s ["",{"text": "- - ","color": "green"},{"translate":"science_techno","color": "aqua","with":[""]},": ",{"nbt":"run.Red.Tech.science_techno","storage": "developer:run","color": "gold"}]
tellraw @s ["",{"text": "- - ","color": "green"},{"translate":"magic_occult","color": "aqua","with":[""]},": ",{"nbt":"run.Red.Tech.magic_occult","storage": "developer:run","color": "gold"}]
tellraw @s ["",{"text": "- - ","color": "green"},{"translate":"society_populate","color": "aqua","with":[""]},": ",{"nbt":"run.Red.Tech.society_populate","storage": "developer:run","color": "gold"}]
tellraw @s {"text": "- Enchantments:","color": "yellow"}
tellraw @s ["",{"text": "- - ","color": "green"},{"text":"Sharpness","color": "aqua"},": ",{"nbt":"run.Red.sharpness","storage": "developer:run","color": "gold"}]
tellraw @s ["",{"text": "- - ","color": "green"},{"text":"Sweeping Edge","color": "aqua"},": ",{"nbt":"run.Red.sweep","storage": "developer:run","color": "gold"}]
tellraw @s ["",{"text": "- - ","color": "green"},{"text":"Blast Protection","color": "aqua"},": ",{"nbt":"run.Red.blast_protection","storage": "developer:run","color": "gold"}]
tellraw @s ["",{"text": "- - ","color": "green"},{"text":"Projectile Protection","color": "aqua"},": ",{"nbt":"run.Red.proj_protection","storage": "developer:run","color": "gold"}]
tellraw @s ["",{"text": "- - ","color": "green"},{"text":"Power","color": "aqua"},": ",{"nbt":"run.Red.power","storage": "developer:run","color": "gold"}]
tellraw @s ["",{"text": "- - ","color": "green"},{"text":"Efficiency","color": "aqua"},": ",{"nbt":"run.Red.efficiency","storage": "developer:run","color": "gold"}]
tellraw @s {"text": "- Misc:","color": "yellow"}
tellraw @s ["",{"text": "- - ","color": "green"},{"text":"End Crystal Defender Level","color": "aqua"},": ",{"nbt":"run.Red.beemLevel","storage": "developer:run","color": "gold"}]
tellraw @s ["",{"text": "- - ","color": "green"},{"text":"End Crystal Count","color": "aqua"},": ",{"nbt":"run.Red.crystal_count","storage": "developer:run","color": "gold"}]
tellraw @s ["",{"text": "- - ","color": "green"},{"text":"Additional Shop Bought","color": "aqua"},": ",{"nbt":"run.Red.additional_shop","storage": "developer:run","color": "gold"}]
tellraw @s ["",{"text": "- - ","color": "green"},{"text":"Pigman Slave Count","color": "aqua"},": ",{"nbt":"run.Red.pigmanSlaves","storage": "developer:run","color": "gold"}]
tellraw @s ["",{"text": "- - ","color": "green"},{"text":"Harvest Level","color": "aqua"},": ",{"nbt":"run.Red.harvest_level","storage": "developer:run","color": "gold"}]

tellraw @s {"text": "* Team Blue","color": "dark_aqua","bold": true}
tellraw @s ["",{"text":"Final Score","color": "light_purple"},": ",{"nbt":"run.Blue.FinalScore","storage": "developer:run","color": "yellow"}]
tellraw @s {"text": "- Technology:","color": "yellow"}
tellraw @s ["",{"text": "- - ","color": "green"},{"translate":"science_techno","color": "aqua","with":[""]},": ",{"nbt":"run.Blue.Tech.science_techno","storage": "developer:run","color": "gold"}]
tellraw @s ["",{"text": "- - ","color": "green"},{"translate":"magic_occult","color": "aqua","with":[""]},": ",{"nbt":"run.Blue.Tech.magic_occult","storage": "developer:run","color": "gold"}]
tellraw @s ["",{"text": "- - ","color": "green"},{"translate":"society_populate","color": "aqua","with":[""]},": ",{"nbt":"run.Blue.Tech.society_populate","storage": "developer:run","color": "gold"}]
tellraw @s {"text": "- Enchantments:","color": "yellow"}
tellraw @s ["",{"text": "- - ","color": "green"},{"text":"Sharpness","color": "aqua"},": ",{"nbt":"run.Blue.sharpness","storage": "developer:run","color": "gold"}]
tellraw @s ["",{"text": "- - ","color": "green"},{"text":"Sweeping Edge","color": "aqua"},": ",{"nbt":"run.Blue.sweep","storage": "developer:run","color": "gold"}]
tellraw @s ["",{"text": "- - ","color": "green"},{"text":"Blast Protection","color": "aqua"},": ",{"nbt":"run.Blue.blast_protection","storage": "developer:run","color": "gold"}]
tellraw @s ["",{"text": "- - ","color": "green"},{"text":"Projectile Protection","color": "aqua"},": ",{"nbt":"run.Blue.proj_protection","storage": "developer:run","color": "gold"}]
tellraw @s ["",{"text": "- - ","color": "green"},{"text":"Power","color": "aqua"},": ",{"nbt":"run.Blue.power","storage": "developer:run","color": "gold"}]
tellraw @s ["",{"text": "- - ","color": "green"},{"text":"Efficiency","color": "aqua"},": ",{"nbt":"run.Blue.efficiency","storage": "developer:run","color": "gold"}]
tellraw @s {"text": "- Misc:","color": "yellow"}
tellraw @s ["",{"text": "- - ","color": "green"},{"text":"End Crystal Defender Level","color": "aqua"},": ",{"nbt":"run.Blue.beemLevel","storage": "developer:run","color": "gold"}]
tellraw @s ["",{"text": "- - ","color": "green"},{"text":"End Crystal Count","color": "aqua"},": ",{"nbt":"run.Blue.crystal_count","storage": "developer:run","color": "gold"}]
tellraw @s ["",{"text": "- - ","color": "green"},{"text":"Additional Shop Bought","color": "aqua"},": ",{"nbt":"run.Blue.additional_shop","storage": "developer:run","color": "gold"}]
tellraw @s ["",{"text": "- - ","color": "green"},{"text":"Pigman Slave Count","color": "aqua"},": ",{"nbt":"run.Blue.pigmanSlaves","storage": "developer:run","color": "gold"}]
tellraw @s ["",{"text": "- - ","color": "green"},{"text":"Harvest Level","color": "aqua"},": ",{"nbt":"run.Blue.harvest_level","storage": "developer:run","color": "gold"}]


tellraw @s {"text": "* Players","color": "yellow","bold": true}
function developer:data/get_level/loop_player
execute store result score #aa calculator run data get storage developer:run run.GameID
tellraw @s [{"text": "Game ","color": "green","bold": true},{"score":{"name": "#aa","objective": "calculator"},"color": "aqua"}," End Point Data Shown\n============================="]

tellraw @s [{"text": " ← Previous","clickEvent": {"action": "run_command","value": "/function developer:data/get_level/previous"},"color": "red"},"      ",{"text": "Next → ","clickEvent": {"action": "run_command","value": "/function developer:data/get_level/next"},"color": "green"}]