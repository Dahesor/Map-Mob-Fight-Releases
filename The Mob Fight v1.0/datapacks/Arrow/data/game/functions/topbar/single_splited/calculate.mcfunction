execute if score GameMode Data matches 4 run return run function game:run/gamemodes/elimination/topbar/calculate
execute if score GameMode Data matches 3 if score VILLAGER.super Data matches 1 run return run function game:run/gamemodes/villager/topbar/calculate

bossbar set top:single color pink
bossbar set top:single style progress
bossbar set top:single players @a
bossbar set top:single visible false
bossbar set top:single visible true
scoreboard players operation #bossbar&max calculator = score red
execute store result bossbar top:single max run scoreboard players operation #bossbar&max calculator += score blue
execute store result bossbar top:single value run scoreboard players get score red
execute if score score red matches 0 if score score blue matches 0 run function game:topbar/single_splited/zero
function game:topbar/general/create_score
execute if score score red > score blue run bossbar set top:single name [{"nbt":"topbar.left","interpret": true,"storage": "run"},"        ",{"translate":"advantage.team.red","color": "red"},"        ",{"nbt":"topbar.right","interpret": true,"storage": "run"}]
execute if score score red < score blue run bossbar set top:single name [{"nbt":"topbar.left","interpret": true,"storage": "run"},"        ",{"translate":"advantage.team.blue","color": "aqua"},"        ",{"nbt":"topbar.right","interpret": true,"storage": "run"}]
execute if score score red = score blue run bossbar set top:single name [{"nbt":"topbar.left","interpret": true,"storage": "run"},"        ",{"text": "k","obfuscated": true,"color": "yellow"},{"translate":"advantage.tie","color": "white"},{"text": "k","obfuscated": true,"color": "yellow"},"        ",{"nbt":"topbar.right","interpret": true,"storage": "run"}]
bossbar set top:single visible false
bossbar set top:single visible true