execute if score GameMode Data matches 3 run return run function game:run/gamemodes/villager/death_score/blue_unre_kill_score


scoreboard players operation score blue += selfkillScore Options
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.death_reward.blue","with":[{"score":{"name": "selfkillScore","objective": "Options"},"color": "gold"}]}]
execute as @a[team=red] at @s run playsound entity.enderman.death master @s
execute as @a[team=blue] at @s run playsound entity.experience_orb.pickup master @s
tellraw @a[team=blue] [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.gained_netherite","with":[{"text": "1","color": "gold"}]}]
title @a[team=blue] times 0 35 12
title @a[team=blue] title ""
title @a[team=blue] subtitle {"translate":"subtitle.gained_netherite","with":[{"text": "1","color": "aqua"}]}

#execute if score GameMode Data matches 1 as @a[team=blue] run function game:run/gamemodes/uhc/manage_regen_potion/get_1

function game:run/netherite/gen_blue