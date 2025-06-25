title @a[team=red] times 5 55 21
title @a[team=red] title [{"translate":"warn.over_half","color": "red","with":[{"translate":"side.enemy"}]}]
execute as @a[team=red] at @s run playsound arrow:alarm.over_half master @s ~ ~ ~ 1 0.7 1
title @a[team=red] subtitle {"translate":"subtitle.gained_netherite","with":[{"text": "2","color": "gold"}]}
tellraw @a[team=red] [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.gained_netherite","with":[{"text": "2","color": "gold"}]}]
function game:run/netherite/gen_red
function game:run/netherite/gen_red
data merge storage run {over_half:{blue:1b}}
tellraw @a[team=red] [{"translate":"chat.head.game","color": "red"}," ",{"translate":"warn.over_half","color": "red","with":[{"translate":"side.enemy"}]}]
tellraw @a[team=blue] [{"translate":"chat.head.game"}," ",{"translate":"warn.over_half","color": "green","with":[{"translate":"side.us"}]}]
execute as @a[team=blue] at @s run playsound arrow:alarm.friendly master @s ~ ~ ~ 1 0.7 1
