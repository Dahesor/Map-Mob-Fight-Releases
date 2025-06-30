title @a times 5 55 21
title @a[team=!blue] title {"translate": "int.game_point","color": "gold"}

title @a[team=red] subtitle [{"translate":"warn.almost_there","color": "red","with":[{"translate":"side.enemy"},{"score":{"name": "$diff","objective": "calculator"}}]}]
execute as @a[team=red] at @s run playsound arrow:alarm.over_half master @s ~ ~ ~ 1 0.7 1
tellraw @a[team=red] [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.gained_netherite","with":[{"text": "2","color": "gold"}]}]
function game:run/netherite/gen_red
function game:run/netherite/gen_red
data merge storage run {almost_win:{blue:1b}}
tellraw @a[team=red] [{"translate":"chat.head.game","color": "red"}," ",{"translate":"warn.almost_there","color": "red","with":[{"translate":"side.enemy"},{"score":{"name": "$diff","objective": "calculator"}}]}]
schedule function game:utility/over_half/blue_winning 4s

data modify storage run log.new set value {"translate":"chat.head.game","color": "white",extra:[{text:" "},{"translate":"game_point.blue","color": "aqua"}]}
function lobby:spectator/sidebar/log/new
execute as @a[tag=spectator] at @s run playsound arrow:alarm.friendly master @s ~ ~ ~ 1 0.7 1
title @a[tag=spectator] subtitle {"translate":"game_point.blue","color": "aqua"}