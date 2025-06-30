data modify storage run menu.eco[8].extra[6] set value {score: {name: "total_hold.d", objective: "blue"},color:"aqua"}


execute if score total_hold.d blue matches ..9 run return run data modify storage run menu.eco[8].extra[7].text set value "    "
execute if score total_hold.d blue matches 10..99 run return run data modify storage run menu.eco[8].extra[7].text set value "   "
execute if score total_hold.d blue matches 100..999 run return run data modify storage run menu.eco[8].extra[7].text set value "  "

scoreboard players operation total_hold.a blue = total_hold.d blue
scoreboard players operation total_hold.a blue /= #1000 calculator
scoreboard players operation total_hold.b blue = total_hold.d blue
scoreboard players operation total_hold.b blue /= #100 calculator
scoreboard players operation total_hold.b blue %= #10 calculator
data modify storage run menu.eco[8].extra[7].text set value " "
data modify storage run menu.eco[8].extra[6] set value {score: {name: "total_hold.a", objective: "blue"},color:"aqua",extra:[{text:"."},{score: {name: "total_hold.b", objective: "blue"}},{text:"k"}]}
