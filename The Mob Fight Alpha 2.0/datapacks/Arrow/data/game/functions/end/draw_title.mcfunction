title @a times 20 50 10
title @a title {"translate":"title.draw","color": "white","bold": false}
title @a subtitle ""
execute as @a at @s run playsound arrow:event.draw master @s ~ ~ ~
schedule function game:end/teleport_back 3s
tag @a remove last_winner
team leave @a[tag=team_randomed]
gamemode adventure @a