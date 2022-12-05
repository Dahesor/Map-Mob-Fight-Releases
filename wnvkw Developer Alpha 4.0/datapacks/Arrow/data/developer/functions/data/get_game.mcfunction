#define storage developer:run
tellraw @s {"text": "Stored Games:","color": "red","italic": false}
data modify storage developer:run run set from storage developer:data Games
scoreboard players set #aa calculator 0
function developer:data/get_game/loop

scoreboard players reset #aa
scoreboard players reset #ab