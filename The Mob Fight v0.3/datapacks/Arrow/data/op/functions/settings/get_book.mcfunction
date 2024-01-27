tellraw @s {"translate":"op.chat.16","color": "red","bold": true}
tellraw @s {"translate":"op.chat.17","color": "yellow"}
tellraw @s {"translate":"op.chat.18","color": "aqua","underlined": true,"clickEvent": {"action": "suggest_command","value": "/function op:book"}}
tellraw @s {"translate":"op.chat.19","color": "yellow"}

tellraw @s {"translate":"op.chat.20","color": "green","clickEvent": {"action": "run_command","value": "/function op:book"},"underlined": true}
execute at @s run playsound ui.button.click master @s