scoreboard players operation $1 calculator = netherite red
scoreboard players operation $2 calculator = netherite.hold red
scoreboard players operation $3 calculator = netherite.hold blue
function lobby:spectator/sidebar/spaces/mod
data modify storage run menu.eco[7].extra[2].text set from storage run space.a
data modify storage run menu.eco[7].extra[4].text set from storage run space.b
data modify storage run menu.eco[7].extra[7].text set from storage run space.c

function lobby:spectator/sidebar/spaces/total