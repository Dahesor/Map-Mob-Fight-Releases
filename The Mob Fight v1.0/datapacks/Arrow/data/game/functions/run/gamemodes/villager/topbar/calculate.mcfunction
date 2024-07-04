bossbar set top:single color pink
bossbar set top:single style progress
bossbar set top:single players @a
bossbar set top:single visible false
bossbar set top:single visible true
scoreboard players operation #bossbar&max calculator = score red
execute store result bossbar top:single max run scoreboard players operation #bossbar&max calculator += score blue
execute store result bossbar top:single value run scoreboard players get score red
execute if score score red matches 0 if score score blue matches 0 run function game:topbar/single_splited/zero
function game:run/gamemodes/villager/topbar/get_name
execute if score score red > score blue run bossbar set top:single name ["",{"nbt":"topbar.left","interpret": true,"storage": "run"},"  ",{"text":"\ue904"}," ",{"score":{"objective":"red","name": "VILLAGER.super_villager"},"color":"light_purple","bold": true},"  ",{"translate":"advantage.team.red","color": "red"},"  ",{"score":{"objective":"blue","name": "VILLAGER.super_villager"},"color":"light_purple","bold": true}," ",{"text":"\ue904"},"  ",{"nbt":"topbar.right","interpret": true,"storage": "run"}]
execute if score score red < score blue run bossbar set top:single name ["",{"nbt":"topbar.left","interpret": true,"storage": "run"},"  ",{"text":"\ue904"}," ",{"score":{"objective":"red","name": "VILLAGER.super_villager"},"color":"light_purple","bold": true},"  ",{"translate":"advantage.team.blue","color": "aqua"},"  ",{"score":{"objective":"blue","name": "VILLAGER.super_villager"},"color":"light_purple","bold": true}," ",{"text":"\ue904"},"  ",{"nbt":"topbar.right","interpret": true,"storage": "run"}]
execute if score score red = score blue run bossbar set top:single name ["",{"nbt":"topbar.left","interpret": true,"storage": "run"},"   ",{"text":"\ue904"}," ",{"score":{"objective":"red","name": "VILLAGER.super_villager"},"color":"light_purple","bold": true},"  ",{"translate":"advantage.tie","color": "white"},"  ",{"score":{"objective":"blue","name": "VILLAGER.super_villager"},"color":"light_purple","bold": true}," ",{"text":"\ue904"},"   ",{"nbt":"topbar.right","interpret": true,"storage": "run"}]


bossbar set top:single visible false
bossbar set top:single visible true