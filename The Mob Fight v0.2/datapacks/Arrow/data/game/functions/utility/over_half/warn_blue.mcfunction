title @a[team=blue] times 5 55 21
title @a[team=blue] title [{"translate":"warn.over_half","color": "red","with":[{"translate":"side.enemy"}]}]
execute as @a[team=blue] at @s run playsound arrow:alarm.over_half master @s ~ ~ ~ 1 0.7 1
title @a[team=blue] subtitle {"translate":"subtitle.gained_netherite","with":[{"text": "2","color": "gold"}]}
tellraw @a[team=blue] [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.gained_netherite","with":[{"text": "2","color": "gold"}]}]
function game:run/netherite/gen_blue
function game:run/netherite/gen_blue
data merge storage run {over_half:{red:1b}}
tellraw @a[team=blue] [{"translate":"chat.head.game","color": "red"}," ",{"translate":"warn.over_half","color": "red","with":[{"translate":"side.enemy"}]}]
tellraw @a[team=red] [{"translate":"chat.head.game"}," ",{"translate":"warn.over_half","color": "green","with":[{"translate":"side.us"}]}]
execute as @a[team=red] at @s run playsound arrow:alarm.friendly master @s ~ ~ ~ 1 0.7 1
