scoreboard players operation score red += selfkillScore Options
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.death_reward.red","with":[{"score":{"name": "selfkillScore","objective": "Options"},"color": "gold"}]}]
execute as @a[team=blue] at @s run playsound entity.enderman.death master @s
execute as @a[team=red] at @s run playsound entity.experience_orb.pickup master @s
tellraw @a[team=red] [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.gained_netherite","with":[{"text": "1","color": "gold"}]}]
title @a[team=red] times 0 35 12
title @a[team=red] title ""
title @a[team=red] subtitle {"translate":"subtitle.gained_netherite","with":[{"text": "1","color": "aqua"}]}
function game:run/netherite/gen_red