data modify storage run bossbar set value {this:0}
execute store result storage run bossbar.this int 1 run scoreboard players get @s bossbar
function game:death/bossbar/update with storage run bossbar
execute if score @s revive_cooldown matches ..0 run function game:death/bossbar/hide with storage run bossbar