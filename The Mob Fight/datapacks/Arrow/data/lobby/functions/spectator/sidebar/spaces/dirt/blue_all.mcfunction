data modify storage run menu.eco[1].extra[-1] set value {score: {name: "dirt", objective: "blue"},color:"aqua"}
execute if score dirt blue matches ..999 run return 1

scoreboard players operation dirt.a blue = dirt blue
scoreboard players operation dirt.a blue /= #1000 calculator
scoreboard players operation dirt.b blue = dirt blue
scoreboard players operation dirt.b blue /= #100 calculator
scoreboard players operation dirt.b blue %= #10 calculator
data modify storage run menu.eco[1].extra[-1] set value {score: {name: "dirt.a", objective: "blue"},color:"aqua",extra:[{text:"."},{score: {name: "dirt.b", objective: "blue"}},{text:"k"}]}