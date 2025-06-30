data modify storage run menu.eco[1].extra[3] set value {score: {name: "dirt.hold", objective: "red"},color:"red"}
execute if score dirt.hold red matches ..9 run return run data modify storage run menu.eco[1].extra[4].text set value "    "
execute if score dirt.hold red matches 10..99 run return run data modify storage run menu.eco[1].extra[4].text set value "   "
execute if score dirt.hold red matches 100..999 run return run data modify storage run menu.eco[1].extra[4].text set value "  "

scoreboard players operation dirt.hold.a red = dirt.hold red
scoreboard players operation dirt.hold.a red /= #1000 calculator
scoreboard players operation dirt.hold.b red = dirt.hold red
scoreboard players operation dirt.hold.b red /= #100 calculator
scoreboard players operation dirt.hold.b red %= #10 calculator
data modify storage run menu.eco[1].extra[4].text set value " "
data modify storage run menu.eco[1].extra[3] set value {score: {name: "dirt.hold.a", objective: "red"},color:"red",extra:[{text:"."},{score: {name: "dirt.hold.b", objective: "red"}},{text:"k"}]}
