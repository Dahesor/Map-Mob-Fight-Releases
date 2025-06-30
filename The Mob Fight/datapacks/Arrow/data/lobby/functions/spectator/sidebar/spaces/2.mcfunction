scoreboard players operation $1 calculator = iron red
scoreboard players operation $2 calculator = iron.hold red
scoreboard players operation $3 calculator = iron.hold blue
function lobby:spectator/sidebar/spaces/mod
data modify storage run menu.eco[3].extra[2].text set from storage run space.a
data modify storage run menu.eco[3].extra[4].text set from storage run space.b
data modify storage run menu.eco[3].extra[7].text set from storage run space.c


scoreboard players operation $1 calculator = gold red
scoreboard players operation $2 calculator = gold.hold red
scoreboard players operation $3 calculator = gold.hold blue
function lobby:spectator/sidebar/spaces/mod
data modify storage run menu.eco[4].extra[2].text set from storage run space.a
data modify storage run menu.eco[4].extra[4].text set from storage run space.b
data modify storage run menu.eco[4].extra[7].text set from storage run space.c