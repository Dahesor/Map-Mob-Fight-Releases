data modify storage run menu.eco[8].extra[3] set value {score: {name: "total_hold.d", objective: "red"},color:"red"}

execute if score total_hold.d red matches ..9 run return run data modify storage run menu.eco[8].extra[4].text set value "    "
execute if score total_hold.d red matches 10..99 run return run data modify storage run menu.eco[8].extra[4].text set value "   "
execute if score total_hold.d red matches 100..999 run return run data modify storage run menu.eco[8].extra[4].text set value "  "

scoreboard players operation total_hold.a red = total_hold.d red
scoreboard players operation total_hold.a red /= #1000 calculator
scoreboard players operation total_hold.b red = total_hold.d red
scoreboard players operation total_hold.b red /= #100 calculator
scoreboard players operation total_hold.b red %= #10 calculator
data modify storage run menu.eco[8].extra[4].text set value " "
data modify storage run menu.eco[8].extra[3] set value {score: {name: "total_hold.a", objective: "red"},color:"red",extra:[{text:"."},{score: {name: "total_hold.b", objective: "red"}},{text:"k"}]}
