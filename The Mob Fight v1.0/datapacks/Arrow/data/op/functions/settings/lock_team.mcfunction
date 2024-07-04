tellraw @s {"translate":"op.chat.8","color": "red","bold": true}
tellraw @s {"translate":"op.chat.9","color": "yellow"}
tellraw @s {"translate":"op.chat.10","color": "yellow"}
tellraw @s ["",{"translate":"op.chat.11","color": "aqua","underlined": true,"clickEvent": {"action": "suggest_command","value": "/team join red ID"}}," ",{"translate":"op.chat.12","color": "yellow","with":[{"translate":"lobby.join_red","color": "yellow"}]}]
tellraw @s ["",{"translate":"op.chat.13","color": "aqua","underlined": true,"clickEvent": {"action": "suggest_command","value": "/team join blue ID"}}," ",{"translate":"op.chat.12","color": "yellow","with":[{"translate":"lobby.join_blue","color": "yellow"}]}]
tellraw @s ["",{"translate":"op.chat.14","color": "aqua","underlined": true,"clickEvent": {"action": "suggest_command","value": "/team leave ID"}}," ",{"translate":"op.chat.12","color": "yellow","with":[{"translate":"lobby.join_random","color": "yellow"}]}]
tellraw @s {"translate":"op.chat.15","color": "yellow"}

execute if score AdminTeamsOn Options matches 1.. run tellraw @s {"translate":"op.chat.5","color": "yellow","with":[{"translate":"op.chat.on","color": "gold"}]}
execute unless score AdminTeamsOn Options matches 1.. run tellraw @s {"translate":"op.chat.5","color": "yellow","with":[{"translate":"op.chat.off","color": "aqua"}]}
tellraw @s {"translate":"op.chat.6","color": "red","clickEvent": {"action": "run_command","value": "/function op:privite/locks/lock_teams"}}
tellraw @s {"translate":"op.chat.7","color": "green","clickEvent": {"action": "run_command","value": "/function op:privite/locks/unlock_teams"}}

execute at @s run playsound ui.button.click master @s