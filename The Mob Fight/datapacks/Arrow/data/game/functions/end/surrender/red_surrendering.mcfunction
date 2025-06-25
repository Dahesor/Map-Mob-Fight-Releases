scoreboard players remove surrender red 1
execute as @a[team=red] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5 1
title @a[team=red] times 0 15 0
title @a[team=red] title ""
title @a[team=red] subtitle {"translate":"title.surrender","color": "red"}