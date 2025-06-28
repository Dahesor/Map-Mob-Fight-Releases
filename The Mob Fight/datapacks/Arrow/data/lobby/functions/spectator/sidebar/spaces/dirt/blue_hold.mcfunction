data modify storage run menu.eco[1].extra[6] set value {score: {name: "dirt.hold", objective: "blue"},color:"aqua"}
execute if score dirt.hold blue matches ..9 run return run data modify storage run menu.eco[1].extra[7].text set value "    "
execute if score dirt.hold blue matches 10..99 run return run data modify storage run menu.eco[1].extra[7].text set value "   "
execute if score dirt.hold blue matches 100..999 run return run data modify storage run menu.eco[1].extra[7].text set value "  "

scoreboard players operation dirt.hold.a blue = dirt.hold blue
scoreboard players operation dirt.hold.a blue /= #1000 calculator
scoreboard players operation dirt.hold.b blue = dirt.hold blue
scoreboard players operation dirt.hold.b blue /= #100 calculator
scoreboard players operation dirt.hold.b blue %= #10 calculator
data modify storage run menu.eco[1].extra[7].text set value " "
data modify storage run menu.eco[1].extra[6] set value {score: {name: "dirt.hold.a", objective: "blue"},color:"aqua",extra:[{text:"."},{score: {name: "dirt.hold.b", objective: "blue"}},{text:"k"}]}
