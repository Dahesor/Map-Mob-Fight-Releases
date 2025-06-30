scoreboard players operation score blue += VILLAGER.selfKillScore Options
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.death_reward.blue","with":[{"score":{"name": "VILLAGER.selfKillScore","objective": "Options"},"color": "gold"}]}]
execute as @a[team=red] at @s run playsound entity.enderman.death master @s
execute as @a[team=blue] at @s run playsound entity.experience_orb.pickup master @s

tellraw @a[team=blue] [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"event.kill_award","color": "green"}]

function game:run/netherite/pile/blue