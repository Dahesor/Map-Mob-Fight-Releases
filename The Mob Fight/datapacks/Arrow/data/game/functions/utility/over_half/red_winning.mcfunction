title @a[team=red] times 5 55 21
scoreboard players operation $diff calculator = TargetScore Options
scoreboard players operation $diff calculator -= score red

tellraw @a[team=red] [{"translate":"chat.head.game"}," ",{"translate":"warn.almost_there","color": "green","with":[{"translate":"side.us"},{"score":{"name": "$diff","objective": "calculator"}}]}]
title @a[team=red] title {"translate": "int.game_point","color": "gold"}
title @a[team=red] subtitle [{"translate":"warn.almost_there","color": "green","with":[{"translate":"side.us"},{"score":{"name": "$diff","objective": "calculator"}}]}]
execute as @a[team=red] at @s run playsound arrow:alarm.friendly master @s ~ ~ ~ 1 0.7 1
