scoreboard players operation score blue += villagerScore Options
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.villager_reward.elimination.blue","with":[{"text":"2","color": "gold"}]}]

tellraw @a[team=blue] [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.gained_netherite","with":[{"text": "2","color": "gold"}]}]

title @a[team=blue] times 0 35 12
title @a[team=blue] title ""
title @a[team=blue] subtitle {"translate":"subtitle.gained_netherite","with":[{"text": "2","color": "gold"}]}

function game:run/netherite/gen_blue
function game:run/netherite/gen_blue

function game:topbar/refresh