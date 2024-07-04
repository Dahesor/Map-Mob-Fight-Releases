scoreboard players operation score red += VILLAGER.selfKillScore Options
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.death_reward.red","with":[{"score":{"name": "VILLAGER.selfKillScore","objective": "Options"},"color": "gold"}]}]
execute as @a[team=blue] at @s run playsound entity.enderman.death master @s
execute as @a[team=red] at @s run playsound entity.experience_orb.pickup master @s