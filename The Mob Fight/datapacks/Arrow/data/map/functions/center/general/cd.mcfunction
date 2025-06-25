execute as @p at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 1 1 1
tellraw @p [{"translate":"chat.head.game","color": "red"}," ",{"translate":"general.cd"}]