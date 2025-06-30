title @a[team=blue] times 5 55 21
scoreboard players operation $diff calculator = TargetScore Options
scoreboard players operation $diff calculator -= score blue

tellraw @a[team=blue] [{"translate":"chat.head.game"}," ",{"translate":"warn.almost_there","color": "green","with":[{"translate":"side.us"},{"score":{"name": "$diff","objective": "calculator"}}]}]
title @a[team=blue] title {"translate": "int.game_point","color": "gold"}
title @a[team=blue] subtitle [{"translate":"warn.almost_there","color": "green","with":[{"translate":"side.us"},{"score":{"name": "$diff","objective": "calculator"}}]}]
execute as @a[team=blue] at @s run playsound arrow:alarm.friendly master @s ~ ~ ~ 1 0.7 1
