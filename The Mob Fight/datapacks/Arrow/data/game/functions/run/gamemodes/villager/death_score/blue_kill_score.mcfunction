scoreboard players operation score blue += VILLAGER.KillScore Options
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.kill_reward.blue","with":[{"score":{"name": "VILLAGER.KillScore","objective": "Options"},"color": "gold"}]}]
execute as @a[team=red] at @s run playsound entity.enderman.death master @s ~ ~ ~ 1 0.78 1
execute as @a[team=blue] at @s run playsound entity.experience_orb.pickup master @s

tellraw @a[team=blue] [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"event.kill_award","color": "green"}]
execute if data storage run {first_kill:0b} run advancement grant @s only lobby:first_blood

function game:run/netherite/pile/blue
function game:run/netherite/pile/blue
execute if score destroyMode Data matches 1 run function game:run/netherite/pile/blue
execute if score destroyMode Data matches 1 run function game:run/netherite/pile/blue
execute if data storage run {first_kill:0b} run function game:run/netherite/pile/blue
execute if data storage run {first_kill:0b} run function game:run/netherite/pile/blue
execute if data storage run {first_kill:0b} if score destroyMode Data matches 1 run function game:run/netherite/pile/blue
execute if data storage run {first_kill:0b} if score destroyMode Data matches 1 run function game:run/netherite/pile/blue
data modify storage run first_kill set value 1b