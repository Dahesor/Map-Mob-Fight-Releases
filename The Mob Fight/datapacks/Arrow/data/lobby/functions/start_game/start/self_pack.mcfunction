execute if score GameMode Data matches 0 run playsound arrow:gamemode.relax master @s ~ ~ ~ 1 1 1
execute if score GameMode Data matches 1 run playsound arrow:gamemode.uhc master @s ~ ~ ~ 1 1 1
execute if score GameMode Data matches 2 run playsound arrow:gamemode.thunder master @s ~ ~ ~ 1 1 1
execute if score GameMode Data matches 3 run playsound arrow:gamemode.villager master @s ~ ~ ~ 1 1 1
execute if score GameMode Data matches 4 run playsound arrow:gamemode.elimination master @s ~ ~ ~ 1 1 1


title @s times 5 40 20


execute if score GameMode Data matches 0 run tellraw @s [{"translate":"description.gamemode.0.line_2","color": "green"}]

execute if score GameMode Data matches 1 run tellraw @s [{"translate":"description.gamemode.1.line_2","color": "green"}]
execute if score GameMode Data matches 1 run tellraw @s [{"translate":"description.gamemode.1.line_3","color": "green"}]

execute if score GameMode Data matches 2 run tellraw @s [{"translate":"description.gamemode.2.line_2","color": "green"}]
execute if score GameMode Data matches 2 run tellraw @s [{"translate":"description.gamemode.2.line_3","color": "green"}]
execute if score GameMode Data matches 2 run tellraw @s [{"translate":"description.gamemode.2.line_4","color": "green"}]

execute if score GameMode Data matches 3 run tellraw @s [{"translate":"description.gamemode.3.line_2","color": "green"}]
execute if score GameMode Data matches 3 run tellraw @s [{"translate":"description.gamemode.3.line_3","color": "green"}]

execute if score GameMode Data matches 4 run tellraw @s [{"translate":"description.gamemode.4.line_2","color": "green"}]
execute if score GameMode Data matches 4 run tellraw @s [{"translate":"description.gamemode.4.line_3","color": "green"}]


execute if score GameMode Data matches 0 run title @s title {"text":"w","font":"icon","color":"white"}
execute if score GameMode Data matches 0 run title @s subtitle {"translate":"gamemode.0","color":"green"}

execute if score GameMode Data matches 1 run title @s title {"text":"x","font":"icon","color":"white"}
execute if score GameMode Data matches 1 run title @s subtitle {"translate":"gamemode.1","color":"gold"}

execute if score GameMode Data matches 2 run title @s title {"text":"y","font":"icon","color":"white"}
execute if score GameMode Data matches 2 run title @s subtitle {"translate":"gamemode.2","color":"aqua"}

execute if score GameMode Data matches 3 run title @s title {"text":"z","font":"icon","color":"white"}
execute if score GameMode Data matches 3 run title @s subtitle {"translate":"gamemode.3","color":"light_purple"}

execute if score GameMode Data matches 4 run title @s title {"text":"a","font":"icon","color":"white"}
execute if score GameMode Data matches 4 run title @s subtitle {"translate":"gamemode.4","color":"red"}