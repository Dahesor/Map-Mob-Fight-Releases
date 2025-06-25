tellraw @s {"translate":"op.chat.21","color": "red","bold": true}
tellraw @s {"translate":"op.chat.22","color": "aqua"}
tellraw @s {"translate":"op.chat.23","color": "aqua"}
tellraw @s {"translate":"op.chat.4","color": "yellow"}

execute if score AdminJoinMidOn Options matches 1.. run tellraw @s {"translate":"op.chat.5","color": "yellow","with":[{"translate":"op.chat.off","color": "gold"}]}
execute unless score AdminJoinMidOn Options matches 1.. run tellraw @s {"translate":"op.chat.5","color": "yellow","with":[{"translate":"op.chat.on","color": "red"}]}
tellraw @s {"translate":"op.chat.6","color": "red","clickEvent": {"action": "run_command","value": "/function op:privite/locks/lock_mid"}}
tellraw @s {"translate":"op.chat.7","color": "green","clickEvent": {"action": "run_command","value": "/function op:privite/locks/unlock_mid"}}

execute at @s run playsound ui.button.click master @s