scoreboard players add #bossbar bossbar 1
scoreboard players operation @s bossbar = #bossbar bossbar
data modify storage run bossbar set value {new:0}
execute store result storage run bossbar.new int 1 run scoreboard players get @s bossbar
function game:death/bossbar/create with storage run bossbar