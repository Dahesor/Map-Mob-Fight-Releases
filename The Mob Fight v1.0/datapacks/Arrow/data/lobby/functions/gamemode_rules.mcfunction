execute if score GameMode Data matches 1..2 run time set midnight
execute if score GameMode Data matches 3 run time set 13200
execute unless score GameMode Data matches 1..3 run time set 13000
weather clear
execute if score GameMode Data matches 2 run weather thunder
execute if score GameMode Data matches 4 run time set midnight
execute if score GameMode Data matches 4 as @a at @s run playsound entity.lightning_bolt.thunder hostile @s ~ ~ ~ 0.5 1 0.5

execute if score GameMode Data matches 0 run tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"description.gamemode.0.line_1"}]
execute if score GameMode Data matches 1 run tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"description.gamemode.1.line_1"}]
execute if score GameMode Data matches 2 run tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"description.gamemode.2.line_1"}]
execute if score GameMode Data matches 3 run tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"description.gamemode.3.line_1"}]
execute if score GameMode Data matches 4 run tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"description.gamemode.4.line_1"}]
function lobby:start_game/start/gamemode_icon