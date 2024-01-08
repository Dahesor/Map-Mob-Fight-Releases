title @a times 5 55 21
title @a[team=blue] title [{"translate":"warn.almost_there","color": "red","with":[{"translate":"side.enemy"},{"score":{"name": "killScore","objective": "Options"}}]}]
execute as @a[team=blue] at @s run playsound arrow:alarm.over_half master @s ~ ~ ~ 1 0.7 1
title @a[team=blue] subtitle {"translate":"subtitle.gained_netherite","with":[{"text": "2","color": "gold"}]}
tellraw @a[team=blue] [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.gained_netherite","with":[{"text": "2","color": "gold"}]}]
function game:run/netherite/gen_blue
function game:run/netherite/gen_blue
data merge storage run {almost_win:{red:1b}}
tellraw @a[team=blue] [{"translate":"chat.head.game","color": "red"}," ",{"translate":"warn.almost_there","color": "red","with":[{"translate":"side.enemy"},{"score":{"name": "killScore","objective": "Options"}}]}]
schedule function game:utility/over_half/red_winning 4s