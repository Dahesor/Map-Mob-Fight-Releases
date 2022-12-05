scoreboard players set crazyMode Data 1
title @a times 10 60 25
title @a title {"translate":"title.crazy_mode","color": "red"}
title @a subtitle {"translate":"subtitle.crazy_mode","color": "white"}
execute as @a at @s run playsound entity.wither.death master @s ~ ~ ~ 1 0.95 1
tellraw @a [{"translate":"chat.head.game","color": "red"}," ",{"translate":"title.crazy_mode","bold": true}]
tellraw @a [{"translate":"chat.head.game","color": "red"}," ",{"translate":"subtitle.crazy_mode","color": "white"}]