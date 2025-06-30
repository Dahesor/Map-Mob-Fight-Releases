data modify storage run menu.eco[1].extra[1] set value {score: {name: "dirt", objective: "red"},color:"red"}
execute if score dirt red matches ..9 run return run data modify storage run menu.eco[1].extra[2].text set value "    "
execute if score dirt red matches 10..99 run return run data modify storage run menu.eco[1].extra[2].text set value "   "
execute if score dirt red matches 100..999 run return run data modify storage run menu.eco[1].extra[2].text set value "  "

scoreboard players operation dirt.a red = dirt red
scoreboard players operation dirt.a red /= #1000 calculator
scoreboard players operation dirt.b red = dirt red
scoreboard players operation dirt.b red /= #100 calculator
scoreboard players operation dirt.b red %= #10 calculator
data modify storage run menu.eco[1].extra[2].text set value " "
data modify storage run menu.eco[1].extra[1] set value {score: {name: "dirt.a", objective: "red"},color:"red",extra:[{text:"."},{score: {name: "dirt.b", objective: "red"}},{text:"k"}]}
