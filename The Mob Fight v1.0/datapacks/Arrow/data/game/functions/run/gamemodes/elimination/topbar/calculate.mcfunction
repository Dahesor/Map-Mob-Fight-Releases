bossbar set top:single color pink
bossbar set top:single style progress
bossbar set top:single players @a
bossbar set top:single visible false
bossbar set top:single visible true
scoreboard players operation #bossbar&max calculator = score red
execute store result bossbar top:single max run scoreboard players operation #bossbar&max calculator += score blue
execute store result bossbar top:single value run scoreboard players get score red
execute if score score red matches 0 if score score blue matches 0 run function game:topbar/single_splited/zero
function game:run/gamemodes/elimination/topbar/get_name
bossbar set top:single name ["",{"nbt":"topbar.left","interpret": true,"storage": "run"},"   ",{"text":"*","font":"icon"}," ",{"score":{"objective":"red","name": "player"},"color":"light_purple","bold": true}," ",{"text": "k","obfuscated": true,"color": "yellow"},{"translate":"topbar.elimination","color": "white"},{"text": "k","obfuscated": true,"color": "yellow"}," ",{"score":{"objective":"blue","name": "player"},"color":"light_purple","bold": true}," ",{"text":"*","font":"icon"},"    ",{"nbt":"topbar.right","interpret": true,"storage": "run"}]
bossbar set top:single visible false
bossbar set top:single visible true

