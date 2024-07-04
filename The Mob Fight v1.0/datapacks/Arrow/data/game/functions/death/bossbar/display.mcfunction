execute unless score @s bossbar matches 1.. run function game:death/bossbar/new
data modify storage run bossbar set value {this:0}
execute store result storage run bossbar.this int 1 run scoreboard players get @s bossbar
function game:death/bossbar/set_max with storage run bossbar
function game:death/bossbar/update with storage run bossbar