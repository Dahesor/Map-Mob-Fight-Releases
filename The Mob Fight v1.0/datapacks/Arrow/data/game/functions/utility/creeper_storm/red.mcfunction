tellraw @a[team=red] {"translate":"buff.creeper_storm.active","color": "green","with":[{"translate":"side.us"},{"translate":"激活了"},{"translate":"buff.creeper_storm"}]}
tellraw @a[team=red] {"translate":"buff.creeper_storm.chat","color": "aqua","with":[{"translate":"side.enemy"}]}
title @a times 0 100 10
title @a[team=red] title ""
title @a[team=red] subtitle [{"text": "\ue009 "},{"translate":"side.us","color": "green"},{"translate":"buff.creeper_storm","color": "green"},{"text": " \ue009"}]
execute as @a[team=red] at @s run playsound arrow:alarm.friendly master @s ~ ~ ~ 1 1 1

tellraw @a[team=blue] {"translate":"buff.creeper_storm.active","color": "red","with":[{"translate":"side.enemy"},{"translate":"激活了"},{"translate":"buff.creeper_storm"}]}
tellraw @a[team=blue] {"translate":"buff.creeper_storm.chat","color": "red","with":[{"translate":"side.us"}]}
title @a[team=blue] title ""
title @a[team=blue] subtitle [{"text": "\ue009 "},{"translate":"side.enemy","color": "red"},{"translate":"buff.creeper_storm","color": "red"},{"text": " \ue009"}]
execute as @a[team=blue] at @s run playsound arrow:alarm.enemy master @s ~ ~ ~ 1 1 1
execute as @a[team=blue] at @s run playsound arrow:alarm.enemy master @s ~ ~ ~ 1 1 1

scoreboard players set creeperStorm red 201