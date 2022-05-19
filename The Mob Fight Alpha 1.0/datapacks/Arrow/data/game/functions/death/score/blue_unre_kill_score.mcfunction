scoreboard players operation score blue += selfkillScore Options
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.death_reward.blue","with":[{"score":{"name": "selfkillScore","objective": "Options"},"color": "gold"}]}]
execute as @a[team=red] at @s run playsound entity.enderman.death master @s
execute as @a[team=blue] at @s run playsound entity.experience_orb.pickup master @s
tellraw @a[team=blue] [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.gained_netherite","with":[{"text": "1","color": "gold"}]}]
function game:run/netherite/gen_blue