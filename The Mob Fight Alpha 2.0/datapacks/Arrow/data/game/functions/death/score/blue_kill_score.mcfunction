scoreboard players operation score blue += killScore Options
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.kill_reward.blue","with":[{"score":{"name": "killScore","objective": "Options"},"color": "gold"}]}]
execute as @a[team=red] at @s run playsound entity.enderman.death master @s ~ ~ ~ 1 0.78 1
execute as @a[team=blue] at @s run playsound entity.experience_orb.pickup master @s
tellraw @a[team=blue] [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.gained_netherite","with":[{"text": "2","color": "gold"}]}]

title @a[team=blue] times 0 35 12
title @a[team=blue] title ""
title @a[team=blue] subtitle {"translate":"subtitle.gained_netherite","with":[{"text": "2","color": "gold"}]}

function game:run/netherite/gen_blue
function game:run/netherite/gen_blue