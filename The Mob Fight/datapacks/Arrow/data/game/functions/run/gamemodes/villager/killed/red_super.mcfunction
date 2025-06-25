function game:run/gamemodes/villager/sudden_death/update_count
scoreboard players remove VILLAGER.super_villager blue 1
scoreboard players operation #x calculator = VILLAGER.villagerScore Options
scoreboard players operation #x calculator += VILLAGER.villagerScore Options
scoreboard players operation score red += #x calculator
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.villager_reward.red_super","with":[{"score":{"name": "#x","objective": "calculator"},"color": "gold"}]}]
tellraw @a [{"translate":"chat.head.game","color": "red"}," ",{"translate":"message.villager_super.blue_remaining","with":[{"score":{"name": "VILLAGER.super_villager","objective": "blue"},"color": "yellow"}]}]

tellraw @a[team=red] [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.gained_netherite","with":[{"text": "4","color": "gold"}]}]

title @a[team=red] times 0 35 12
title @a[team=red] title ""
title @a[team=red] subtitle {"translate":"subtitle.gained_netherite","with":[{"text": "4","color": "gold"}]}

function game:run/netherite/gen_red
function game:run/netherite/gen_red
function game:run/netherite/gen_red
function game:run/netherite/gen_red
function game:topbar/refresh
execute if score VILLAGER.super_villager blue matches 0 run data modify storage run final_kill.Pos set from entity @s Pos
execute if score VILLAGER.super_villager blue matches 0 run data modify storage run final_kill.cause set value "villager"