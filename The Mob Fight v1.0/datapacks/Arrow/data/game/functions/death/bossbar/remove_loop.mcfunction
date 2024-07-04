data modify storage run bossbar set value {remove:0}
data modify storage run bossbar.remove set from storage run bossbar_record[0]
data remove storage run bossbar_record[0]
function game:death/bossbar/remove_macro with storage run bossbar
execute if data storage run bossbar_record[0] run function game:death/bossbar/remove_loop