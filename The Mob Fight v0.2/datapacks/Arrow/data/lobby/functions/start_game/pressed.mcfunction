function lobby:lobby_spinner/gold
execute as @a at @s run playsound arrow:event.game_waiting master @s ~ ~ ~ 0.79 1.1 0.79
scoreboard players set #startPend calculator 13
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.new_game_launched","color": "green"}]
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.jump_to_join","color": "gold"}]
tellraw @a [{"translate":"message.trigger_joining_game","color": "gray","italic": true,"underlined": true,"clickEvent": {"action": "run_command","value": "/trigger join_game"}}]
scoreboard players set #cancel calculator 0