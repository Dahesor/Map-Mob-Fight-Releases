execute if score GameMode Data matches 3 run return run function game:run/gamemodes/villager/killed/blue_score
execute if score GameMode Data matches 4 run return run function game:run/gamemodes/elimination/villager/blue_get_villager

scoreboard players operation score blue += villagerScore Options
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.villager_reward.blue","with":[{"score":{"name": "villagerScore","objective": "Options"},"color": "gold"}]}]

tellraw @a[team=blue] [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.gained_netherite","with":[{"text": "1","color": "gold"}]}]

title @a[team=blue] times 0 35 12
title @a[team=blue] title ""
title @a[team=blue] subtitle {"translate":"subtitle.gained_netherite","with":[{"text": "1","color": "gold"}]}

function game:run/netherite/gen_blue

function game:topbar/refresh