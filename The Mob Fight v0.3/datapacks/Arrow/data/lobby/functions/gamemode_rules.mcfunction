execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.7 1


execute if score GameMode Data matches 0 run tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"description.gamemode.0.line_1"}]
execute if score GameMode Data matches 0 run tellraw @a [{"translate":"description.gamemode.0.line_2","color": "green"}]

execute if score GameMode Data matches 1 run tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"description.gamemode.1.line_1"}]
execute if score GameMode Data matches 1 run tellraw @a [{"translate":"description.gamemode.1.line_2","color": "green"}]
execute if score GameMode Data matches 1 run tellraw @a [{"translate":"description.gamemode.1.line_3","color": "green"}]

execute if score GameMode Data matches 2 run tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"description.gamemode.2.line_1"}]
execute if score GameMode Data matches 2 run tellraw @a [{"translate":"description.gamemode.2.line_2","color": "green"}]
execute if score GameMode Data matches 2 run tellraw @a [{"translate":"description.gamemode.2.line_3","color": "green"}]
