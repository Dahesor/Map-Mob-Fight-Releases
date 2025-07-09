title @a times 20 50 10
title @a title {"translate":"title.draw","color": "white","bold": false}
title @a subtitle ""
execute as @a at @s run playsound arrow:event.draw master @s ~ ~ ~
schedule function game:end/teleport_back 3s
tag @a remove last_winner
gamemode adventure @a

execute unless score GameMode Data matches 3 run return fail
title @a subtitle ["",{"score": {"name": "$HPleft","objective": "red"},"color": "red","extra": [".",{"score": {"name": "$HPleft.d","objective": "red"}}]}," \ue904"," - ","\ue904 ",{"score": {"name": "$HPleft","objective": "blue"},"color": "aqua","extra": [".",{"score": {"name": "$HPleft.d","objective": "blue"}}]}]