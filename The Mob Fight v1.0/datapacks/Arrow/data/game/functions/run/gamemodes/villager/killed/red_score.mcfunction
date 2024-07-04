execute if score VILLAGER.super Data matches 1.. run return run function game:run/gamemodes/villager/killed/red_super
scoreboard players operation score red += VILLAGER.villagerScore Options
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.villager_reward.red","with":[{"score":{"name": "VILLAGER.villagerScore","objective": "Options"},"color": "gold"}]}]

tellraw @a[team=red] [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.gained_netherite","with":[{"text": "2","color": "gold"}]}]

title @a[team=red] times 0 35 12
title @a[team=red] title ""
title @a[team=red] subtitle {"translate":"subtitle.gained_netherite","with":[{"text": "2","color": "gold"}]}

function game:run/netherite/gen_red
function game:run/netherite/gen_red
function game:topbar/refresh
