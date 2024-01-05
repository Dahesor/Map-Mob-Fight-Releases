scoreboard players remove surrender blue 1
execute as @a[team=blue] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5 1
title @a[team=blue] times 0 15 0
title @a[team=blue] title ""
title @a[team=blue] subtitle {"translate":"title.surrender","color": "red"}