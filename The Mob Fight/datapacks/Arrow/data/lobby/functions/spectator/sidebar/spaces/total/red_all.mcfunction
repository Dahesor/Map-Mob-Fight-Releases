data modify storage run menu.eco[8].extra[1] set value {score: {name: "total_eco.d", objective: "red"},color:"red"}

execute if score total_eco.d red matches ..9 run return run data modify storage run menu.eco[8].extra[2].text set value "    "
execute if score total_eco.d red matches 10..99 run return run data modify storage run menu.eco[8].extra[2].text set value "   "
execute if score total_eco.d red matches 100..999 run return run data modify storage run menu.eco[8].extra[2].text set value "  "

scoreboard players operation total_eco.a red = total_eco.d red
scoreboard players operation total_eco.a red /= #1000 calculator
scoreboard players operation total_eco.b red = total_eco.d red
scoreboard players operation total_eco.b red /= #100 calculator
scoreboard players operation total_eco.b red %= #10 calculator
data modify storage run menu.eco[8].extra[2].text set value " "
data modify storage run menu.eco[8].extra[1] set value {score: {name: "total_eco.a", objective: "red"},color:"red",extra:[{text:"."},{score: {name: "total_eco.b", objective: "red"}},{text:"k"}]}
