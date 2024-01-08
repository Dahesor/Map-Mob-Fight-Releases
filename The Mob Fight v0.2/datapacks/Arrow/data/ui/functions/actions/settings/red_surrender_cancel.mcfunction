scoreboard players set surrender red -1
tellraw @a [{"translate":"chat.head.game","color": "red"}," ",{"translate":"surrender.canceled","with":[{"translate":"team.red"}]}]
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.2 1
