function game:run/gamemodes/villager/sudden_death/update_count
scoreboard players remove VILLAGER.super_villager red 1
scoreboard players operation #x calculator = VILLAGER.villagerScore Options
scoreboard players operation #x calculator += VILLAGER.villagerScore Options
scoreboard players operation score blue += #x calculator
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.villager_reward.blue_super","with":[{"score":{"name": "#x","objective": "calculator"},"color": "gold"}]}]
tellraw @a [{"translate":"chat.head.game","color": "red"}," ",{"translate":"message.villager_super.red_remaining","with":[{"score":{"name": "VILLAGER.super_villager","objective": "red"},"color": "yellow"}]}]

tellraw @a[team=blue] [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.gained_netherite","with":[{"text": "4","color": "gold"}]}]

title @a[team=blue] times 0 35 12
title @a[team=blue] title ""
title @a[team=blue] subtitle {"translate":"subtitle.gained_netherite","with":[{"text": "4","color": "gold"}]}

function game:run/netherite/gen_blue
function game:run/netherite/gen_blue
function game:run/netherite/gen_blue
function game:run/netherite/gen_blue
function game:topbar/refresh
execute if score VILLAGER.super_villager red matches 0 run data modify storage run final_kill.Pos set from entity @s Pos
execute if score VILLAGER.super_villager red matches 0 run data modify storage run final_kill.cause set value "villager"