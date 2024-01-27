
scoreboard players operation score red += villagerScore Options
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.villager_reward.red","with":[{"score":{"name": "villagerScore","objective": "Options"},"color": "gold"}]}]

tellraw @a[team=red] [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.gained_netherite","with":[{"text": "1","color": "gold"}]}]

title @a[team=red] times 0 35 12
title @a[team=red] title ""
title @a[team=red] subtitle {"translate":"subtitle.gained_netherite","with":[{"text": "1","color": "gold"}]}

function game:run/netherite/gen_red
function game:topbar/refresh



