data modify storage run final_kill set value {Pos:[0.0d,0.0d,0.0d]}
kill @e[type=vex,tag=final_camera]
execute if score $$%winner calculator matches 0 run return run function game:end/red_win
execute if score $$%winner calculator matches 1 run return run function game:end/blue_win
scoreboard players set final_camera Data 0