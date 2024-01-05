tp @a 0.50 58.5 110.5
scoreboard players set #cancel calculator 0
function lobby:lobby_spinner/diamond
stopsound @a
tellraw @a [{"translate":"chat.head.game","color": "red"}," ",{"translate":"game.cancel","color": "red"}]