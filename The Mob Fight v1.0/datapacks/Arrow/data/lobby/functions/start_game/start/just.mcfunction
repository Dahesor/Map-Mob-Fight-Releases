function lobby:lobby_spinner/gold
scoreboard players set #direct_start calculator 1
function lobby:start_game/waiting_platform
setblock 0 137 -8 air

scoreboard players set #startPend calculator 9
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.new_game_launched","color": "green"}]
scoreboard players set #cancel calculator 0
tp @a 0 137 0
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.1 1
