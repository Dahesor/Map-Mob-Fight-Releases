scoreboard players operation score red += killScore Options
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.kill_reward.red","with":[{"score":{"name": "killScore","objective": "Options"},"color": "gold"}]}]
execute as @a[team=blue] at @s run playsound entity.enderman.death master @s ~ ~ ~ 1 0.78 1
execute as @a[team=red] at @s run playsound entity.experience_orb.pickup master @s
tellraw @a[team=red] [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.gained_netherite","with":[{"text": "2","color": "gold"}]}]
title @a[team=red] times 0 35 12
title @a[team=red] title ""
title @a[team=red] subtitle {"translate":"subtitle.gained_netherite","with":[{"text": "2","color": "gold"}]}

#execute if score GameMode Data matches 1 as @a[team=red] run function game:run/gamemodes/uhc/manage_regen_potion/get_1
#execute if score GameMode Data matches 1 as @a[team=red] run function game:run/gamemodes/uhc/manage_regen_potion/get_1

execute if data storage run {first_kill:0b} run function game:utility/over_half/blue_pay

function game:run/netherite/gen_red
function game:run/netherite/gen_red