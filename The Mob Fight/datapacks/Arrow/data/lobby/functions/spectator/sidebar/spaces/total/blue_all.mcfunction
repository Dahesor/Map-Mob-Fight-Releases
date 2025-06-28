data modify storage run menu.eco[8].extra[-1] set value {score: {name: "total_eco.d", objective: "blue"},color:"aqua"}

execute if score total_eco.d blue matches ..999 run return 1

scoreboard players operation total_eco.a blue = total_eco.d blue
scoreboard players operation total_eco.a blue /= #1000 calculator
scoreboard players operation total_eco.b blue = total_eco.d blue
scoreboard players operation total_eco.b blue /= #100 calculator
scoreboard players operation total_eco.b blue %= #10 calculator
data modify storage run menu.eco[8].extra[-1] set value {score: {name: "total_eco.a", objective: "blue"},color:"aqua",extra:[{text:"."},{score: {name: "total_eco.b", objective: "blue"}},{text:"k"}]}