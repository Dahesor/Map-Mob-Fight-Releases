title @a[team=blue] times 5 55 21

tellraw @a[team=blue] [{"translate":"chat.head.game"}," ",{"translate":"warn.almost_there","color": "green","with":[{"translate":"side.us"},{"score":{"name": "killScore","objective": "Options"}}]}]
title @a[team=blue] title ""
title @a[team=blue] subtitle [{"translate":"warn.almost_there","color": "green","with":[{"translate":"side.us"},{"score":{"name": "killScore","objective": "Options"}}]}]
execute as @a[team=blue] at @s run playsound arrow:alarm.friendly master @s ~ ~ ~ 1 0.7 1
