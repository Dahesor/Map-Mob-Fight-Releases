scoreboard players operation score blue += VILLAGER.KillScore Options
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.kill_reward.blue","with":[{"score":{"name": "VILLAGER.KillScore","objective": "Options"},"color": "gold"}]}]
execute as @a[team=red] at @s run playsound entity.enderman.death master @s ~ ~ ~ 1 0.78 1
execute as @a[team=blue] at @s run playsound entity.experience_orb.pickup master @s