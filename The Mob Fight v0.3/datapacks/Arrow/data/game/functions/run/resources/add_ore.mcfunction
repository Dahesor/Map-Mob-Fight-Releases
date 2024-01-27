execute if score oreAdd red matches ..0 run function game:run/resources/store_red
execute if score oreAdd blue matches ..0 run function game:run/resources/store_blue
execute if score oreAdd red matches ..0 run scoreboard players set oreAdd red 3
execute if score oreAdd blue matches ..0 run scoreboard players set oreAdd blue 3
execute if score oreAdd red matches ..0 if score #tee$time calculator < GameLength Data run scoreboard players set oreAdd red 2
execute if score oreAdd blue matches ..0 if score #tee$time calculator < GameLength Data run scoreboard players set oreAdd blue 2
