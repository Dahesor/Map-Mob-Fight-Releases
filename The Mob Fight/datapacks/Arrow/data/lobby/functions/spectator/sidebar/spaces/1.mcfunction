function lobby:spectator/sidebar/spaces/dirt

scoreboard players operation $1 calculator = copper red
scoreboard players operation $2 calculator = copper.hold red
scoreboard players operation $3 calculator = copper.hold blue
function lobby:spectator/sidebar/spaces/mod
data modify storage run menu.eco[2].extra[2].text set from storage run space.a
data modify storage run menu.eco[2].extra[4].text set from storage run space.b
data modify storage run menu.eco[2].extra[7].text set from storage run space.c