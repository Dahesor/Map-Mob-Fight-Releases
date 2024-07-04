tellraw @s {"translate":"op.chat.1","color": "red","bold": true}
tellraw @s {"translate":"op.chat.2","color": "yellow"}
tellraw @s {"translate":"op.chat.3","color": "aqua","underlined": true,"clickEvent": {"action": "suggest_command","value": "/function op:book"}}
tellraw @s {"translate":"op.chat.4","color": "yellow"}

execute if score AdminSettingsOn Options matches 1.. run tellraw @s {"translate":"op.chat.5","color": "yellow","with":[{"translate":"op.chat.on","color": "gold"}]}
execute unless score AdminSettingsOn Options matches 1.. run tellraw @s {"translate":"op.chat.5","color": "yellow","with":[{"translate":"op.chat.off","color": "aqua"}]}
tellraw @s {"translate":"op.chat.6","color": "red","clickEvent": {"action": "run_command","value": "/function op:privite/locks/lock_settings"}}
tellraw @s {"translate":"op.chat.7","color": "green","clickEvent": {"action": "run_command","value": "/function op:privite/locks/unlock_settings"}}
execute at @s run playsound ui.button.click master @s