function lobby:spectator/sidebar/log/get_id
execute at @e[type=marker,tag=scb] run tp @e[type=marker,tag=scb] ~ ~0.4 ~
execute at @e[type=marker,tag=scb] run function lobby:scb/new_line
scoreboard players add $total_lines calculator 1