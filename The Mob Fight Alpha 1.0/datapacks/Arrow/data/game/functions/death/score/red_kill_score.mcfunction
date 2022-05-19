scoreboard players operation score red += killScore Options
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.kill_reward.red","with":[{"score":{"name": "killScore","objective": "Options"},"color": "gold"}]}]
execute as @a[team=blue] at @s run playsound entity.enderman.death master @s ~ ~ ~ 1 0.78 1
execute as @a[team=red] at @s run playsound entity.experience_orb.pickup master @s
tellraw @a[team=red] [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.gained_netherite","with":[{"text": "2","color": "gold"}]}]
function game:run/netherite/gen_red
function game:run/netherite/gen_red