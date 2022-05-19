title @a times 20 50 10
title @a[team=blue] title {"translate":"title.victory","color": "gold","bold": false}
title @a[team=red] title {"translate":"title.failure","color": "red","bold": false}
title @a subtitle ""
execute as @a[team=blue] at @s run playsound arrow:event.win master @s ~ ~ ~
execute as @a[team=red] at @s run playsound arrow:event.lose master @s ~ ~ ~
schedule function game:end/teleport_back 3s
tag @a[team=blue] add last_winner