title @a[team=red] times 5 55 21

tellraw @a[team=red] [{"translate":"chat.head.game"}," ",{"translate":"warn.almost_there","color": "green","with":[{"translate":"side.us"},{"score":{"name": "killScore","objective": "Options"}}]}]
title @a[team=red] title ""
title @a[team=red] subtitle [{"translate":"warn.almost_there","color": "green","with":[{"translate":"side.us"},{"score":{"name": "killScore","objective": "Options"}}]}]
execute as @a[team=red] at @s run playsound arrow:alarm.friendly master @s ~ ~ ~ 1 0.7 1
