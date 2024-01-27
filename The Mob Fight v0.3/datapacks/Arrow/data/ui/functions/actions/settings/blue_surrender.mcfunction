scoreboard players set surrender blue 10
tellraw @a [{"translate":"chat.head.game","color": "red"}," ",{"translate":"surrender.ongoing","with":[{"translate":"team.blue","color": "aqua"}]}]
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.2 1
