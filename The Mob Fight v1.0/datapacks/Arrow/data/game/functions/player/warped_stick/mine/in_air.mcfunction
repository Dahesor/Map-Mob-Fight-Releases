execute at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 1 1 1
tellraw @s [{"translate":"chat.head.game","color": "red"}," ",{"translate":"item.mine.in_air"}]